package com.multiframefusion

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.util.Base64
import com.facebook.react.bridge.*
import kotlinx.coroutines.*
import org.opencv.android.OpenCVLoader
import org.opencv.android.Utils
import org.opencv.core.*
import org.opencv.imgproc.Imgproc
import org.opencv.video.Video
import org.opencv.features2d.ORB
import org.opencv.features2d.DescriptorMatcher
import org.opencv.calib3d.Calib3d
import org.opencv.photo.Photo
import java.io.File
import java.io.FileOutputStream
import java.io.IOException
import java.io.InputStream
import kotlin.math.abs

class MultiFrameFusionModule(reactContext: ReactApplicationContext) :
    ReactContextBaseJavaModule(reactContext) {

    private val scope = CoroutineScope(Dispatchers.Default + SupervisorJob())
    private var openCVInitialized = false

    init {
        try {
            openCVInitialized = OpenCVLoader.initDebug()
            if (!openCVInitialized) {
                openCVInitialized = OpenCVLoader.initLocal()
            }
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    override fun getName(): String {
        return "MultiFrameFusion"
    }

    @ReactMethod
    fun merge(imageUris: ReadableArray, options: ReadableMap, promise: Promise) {
        if (!openCVInitialized) {
            promise.reject("OPENCV_ERROR", "OpenCV not initialized")
            return
        }

        scope.launch {
            try {
                val startTime = System.currentTimeMillis()
                
                // Parse options
                val method = options.getString("method") ?: "fusion"
                val format = options.getString("format") ?: "jpeg"
                val quality = (options.getDouble("quality") * 100).toInt()
                val deghost = options.getBoolean("deghost")
                val alignmentMethod = options.getString("alignmentMethod") ?: "ecc"
                val maxIterations = options.getInt("maxIterations")
                val epsilon = options.getDouble("epsilon")

                // Load images
                val uris = mutableListOf<String>()
                for (i in 0 until imageUris.size()) {
                    uris.add(imageUris.getString(i))
                }

                val bitmaps = loadImages(uris)
                if (bitmaps.isEmpty()) {
                    promise.reject("IMAGE_LOAD_ERROR", "Failed to load images")
                    return@launch
                }

                // Convert to OpenCV Mat
                val mats = bitmaps.map { bitmapToMat(it) }

                // Align images
                val aligned = alignImages(mats, alignmentMethod, maxIterations, epsilon)

                // Apply deghosting if enabled
                val processed = if (deghost) {
                    applyDeghosting(aligned)
                } else {
                    aligned
                }

                // Merge based on method
                val merged = when (method) {
                    "average" -> mergeAverage(processed)
                    "median" -> mergeMedian(processed)
                    "exposure" -> mergeExposure(processed)
                    else -> mergeFusion(processed)
                }

                // Convert back to bitmap
                val resultBitmap = matToBitmap(merged)

                // Save to file
                val outputFile = saveToFile(resultBitmap, format, quality)

                // Clean up
                bitmaps.forEach { it.recycle() }
                mats.forEach { it.release() }
                aligned.forEach { it.release() }
                processed.forEach { it.release() }
                merged.release()

                val endTime = System.currentTimeMillis()

                // Return result
                val result = Arguments.createMap().apply {
                    putString("uri", "file://${outputFile.absolutePath}")
                    putInt("width", resultBitmap.width)
                    putInt("height", resultBitmap.height)
                    putInt("fileSize", outputFile.length().toInt())
                    putInt("processingTime", (endTime - startTime).toInt())
                }

                withContext(Dispatchers.Main) {
                    promise.resolve(result)
                }

            } catch (e: Exception) {
                withContext(Dispatchers.Main) {
                    promise.reject("FUSION_ERROR", e.message, e)
                }
            }
        }
    }

    @ReactMethod
    fun isSupported(promise: Promise) {
        promise.resolve(openCVInitialized)
    }

    @ReactMethod
    fun getCapabilities(promise: Promise) {
        val capabilities = Arguments.createMap().apply {
            val methods = Arguments.createArray().apply {
                pushString("average")
                pushString("median")
                pushString("exposure")
                pushString("fusion")
            }
            putArray("supportedMethods", methods)

            val formats = Arguments.createArray().apply {
                pushString("jpeg")
                pushString("png")
            }
            putArray("supportedFormats", formats)

            putInt("maxImageSize", 8192)
            putBoolean("hasOpenCV", openCVInitialized)
        }
        promise.resolve(capabilities)
    }

    // Image loading helpers
    private suspend fun loadImages(uris: List<String>): List<Bitmap> = withContext(Dispatchers.IO) {
        uris.mapNotNull { uri ->
            try {
                loadImage(uri)
            } catch (e: Exception) {
                e.printStackTrace()
                null
            }
        }
    }

    private fun loadImage(uri: String): Bitmap? {
        return when {
            uri.startsWith("data:image") -> loadBase64Image(uri)
            uri.startsWith("file://") -> loadFileImage(uri)
            uri.startsWith("content://") -> loadContentImage(uri)
            else -> loadFileImage("file://$uri")
        }
    }

    private fun loadBase64Image(uri: String): Bitmap? {
        val base64 = uri.substring(uri.indexOf(",") + 1)
        val bytes = Base64.decode(base64, Base64.DEFAULT)
        return BitmapFactory.decodeByteArray(bytes, 0, bytes.size)
    }

    private fun loadFileImage(uri: String): Bitmap? {
        val path = uri.replace("file://", "")
        return BitmapFactory.decodeFile(path)
    }

    private fun loadContentImage(uri: String): Bitmap? {
        val contentUri = Uri.parse(uri)
        val inputStream: InputStream? = reactApplicationContext.contentResolver.openInputStream(contentUri)
        return inputStream?.use { BitmapFactory.decodeStream(it) }
    }

    // OpenCV conversion helpers
    private fun bitmapToMat(bitmap: Bitmap): Mat {
        val mat = Mat()
        Utils.bitmapToMat(bitmap, mat)
        // Convert to RGB
        Imgproc.cvtColor(mat, mat, Imgproc.COLOR_RGBA2RGB)
        return mat
    }

    private fun matToBitmap(mat: Mat): Bitmap {
        val bitmap = Bitmap.createBitmap(mat.cols(), mat.rows(), Bitmap.Config.ARGB_8888)
        // Convert to RGBA
        val rgbaMat = Mat()
        Imgproc.cvtColor(mat, rgbaMat, Imgproc.COLOR_RGB2RGBA)
        Utils.matToBitmap(rgbaMat, bitmap)
        rgbaMat.release()
        return bitmap
    }

    // Image alignment
    private fun alignImages(
        images: List<Mat>,
        method: String,
        maxIterations: Int,
        epsilon: Double
    ): List<Mat> {
        if (images.isEmpty()) return emptyList()

        val reference = images[0]
        val aligned = mutableListOf(reference.clone())

        for (i in 1 until images.size) {
            val warped = when (method) {
                "feature" -> alignUsingFeatures(reference, images[i])
                "optical" -> alignUsingOpticalFlow(reference, images[i])
                else -> alignUsingECC(reference, images[i], maxIterations, epsilon)
            }
            aligned.add(warped)
        }

        return aligned
    }

    private fun alignUsingECC(
        reference: Mat,
        target: Mat,
        maxIterations: Int,
        epsilon: Double
    ): Mat {
        // Convert to grayscale
        val refGray = Mat()
        val targetGray = Mat()
        Imgproc.cvtColor(reference, refGray, Imgproc.COLOR_RGB2GRAY)
        Imgproc.cvtColor(target, targetGray, Imgproc.COLOR_RGB2GRAY)

        // Initialize warp matrix (2x3 affine)
        val warpMatrix = Mat.eye(2, 3, CvType.CV_32F)

        try {
            // Define termination criteria
            val criteria = TermCriteria(
                TermCriteria.COUNT + TermCriteria.EPS,
                maxIterations,
                epsilon
            )

            // Find transformation
            Video.findTransformECC(
                refGray,
                targetGray,
                warpMatrix,
                Video.MOTION_AFFINE,
                criteria,
                Mat(),
                5
            )

            // Warp image
            val aligned = Mat()
            Imgproc.warpAffine(
                target,
                aligned,
                warpMatrix,
                reference.size(),
                Imgproc.INTER_LINEAR + Imgproc.WARP_INVERSE_MAP
            )

            refGray.release()
            targetGray.release()
            warpMatrix.release()

            return aligned

        } catch (e: Exception) {
            // If ECC fails, return original
            refGray.release()
            targetGray.release()
            warpMatrix.release()
            return target.clone()
        }
    }

    private fun alignUsingFeatures(reference: Mat, target: Mat): Mat {
        // Convert to grayscale
        val refGray = Mat()
        val targetGray = Mat()
        Imgproc.cvtColor(reference, refGray, Imgproc.COLOR_RGB2GRAY)
        Imgproc.cvtColor(target, targetGray, Imgproc.COLOR_RGB2GRAY)

        try {
            // Detect ORB features
            val orb = ORB.create(1000)
            val keypointsRef = MatOfKeyPoint()
            val keypointsTarget = MatOfKeyPoint()
            val descriptorsRef = Mat()
            val descriptorsTarget = Mat()

            orb.detectAndCompute(refGray, Mat(), keypointsRef, descriptorsRef)
            orb.detectAndCompute(targetGray, Mat(), keypointsTarget, descriptorsTarget)

            // Match features
            val matcher = DescriptorMatcher.create(DescriptorMatcher.BRUTEFORCE_HAMMING)
            val matches = MatOfDMatch()
            matcher.match(descriptorsTarget, descriptorsRef, matches)

            // Filter good matches
            val matchesList = matches.toList()
            val goodMatches = matchesList.sortedBy { it.distance }.take(matchesList.size / 2)

            if (goodMatches.size < 10) {
                // Not enough matches, return original
                refGray.release()
                targetGray.release()
                return target.clone()
            }

            // Extract matched points
            val srcPoints = MatOfPoint2f()
            val dstPoints = MatOfPoint2f()
            val srcPts = goodMatches.map { keypointsTarget.toList()[it.queryIdx].pt }
            val dstPts = goodMatches.map { keypointsRef.toList()[it.trainIdx].pt }
            srcPoints.fromList(srcPts)
            dstPoints.fromList(dstPts)

            // Find homography
            val h = Calib3d.findHomography(srcPoints, dstPoints, Calib3d.RANSAC, 5.0)

            // Warp image
            val aligned = Mat()
            Imgproc.warpPerspective(
                target,
                aligned,
                h,
                reference.size(),
                Imgproc.INTER_LINEAR
            )

            // Clean up
            refGray.release()
            targetGray.release()
            keypointsRef.release()
            keypointsTarget.release()
            descriptorsRef.release()
            descriptorsTarget.release()
            matches.release()
            srcPoints.release()
            dstPoints.release()
            h.release()

            return aligned

        } catch (e: Exception) {
            refGray.release()
            targetGray.release()
            return target.clone()
        }
    }

    private fun alignUsingOpticalFlow(reference: Mat, target: Mat): Mat {
        // This is a simplified version - full optical flow alignment is complex
        // For production, you'd implement dense optical flow warping
        return alignUsingECC(reference, target, 50, 0.001)
    }

    // Deghosting
    private fun applyDeghosting(images: List<Mat>): List<Mat> {
        if (images.size < 2) return images

        val reference = images[0]
        val deGhosted = mutableListOf(reference.clone())

        for (i in 1 until images.size) {
            // Compute difference from reference
            val diff = Mat()
            Core.absdiff(reference, images[i], diff)

            // Convert to grayscale for thresholding
            val diffGray = Mat()
            Imgproc.cvtColor(diff, diffGray, Imgproc.COLOR_RGB2GRAY)

            // Create mask for ghosted regions
            val mask = Mat()
            Imgproc.threshold(diffGray, mask, 30.0, 255.0, Imgproc.THRESH_BINARY_INV)

            // Dilate mask to include surrounding areas
            val kernel = Imgproc.getStructuringElement(Imgproc.MORPH_ELLIPSE, Size(5.0, 5.0))
            Imgproc.dilate(mask, mask, kernel)

            // Apply mask to image
            val masked = Mat()
            images[i].copyTo(masked, mask)

            deGhosted.add(masked)

            diff.release()
            diffGray.release()
            mask.release()
            kernel.release()
        }

        return deGhosted
    }

    // Merging methods
    private fun mergeAverage(images: List<Mat>): Mat {
        if (images.isEmpty()) throw IllegalArgumentException("No images to merge")
        if (images.size == 1) return images[0].clone()

        val result = Mat.zeros(images[0].size(), images[0].type())
        val temp = Mat()

        for (image in images) {
            Core.add(result, image, temp)
            temp.copyTo(result)
        }

        Core.divide(result, Scalar(images.size.toDouble()), result)
        temp.release()

        return result
    }

    private fun mergeMedian(images: List<Mat>): Mat {
        if (images.isEmpty()) throw IllegalArgumentException("No images to merge")
        if (images.size == 1) return images[0].clone()

        val height = images[0].rows()
        val width = images[0].cols()
        val channels = images[0].channels()
        
        val result = Mat(height, width, images[0].type())
        val pixelValues = FloatArray(images.size)

        for (y in 0 until height) {
            for (x in 0 until width) {
                for (c in 0 until channels) {
                    // Collect pixel values across all images
                    for (i in images.indices) {
                        val pixel = images[i].get(y, x)
                        pixelValues[i] = pixel[c].toFloat()
                    }

                    // Sort and find median
                    pixelValues.sort()
                    val median = if (images.size % 2 == 0) {
                        (pixelValues[images.size / 2 - 1] + pixelValues[images.size / 2]) / 2
                    } else {
                        pixelValues[images.size / 2]
                    }

                    // Set median value
                    val currentPixel = result.get(y, x)
                    currentPixel[c] = median.toDouble()
                    result.put(y, x, *currentPixel)
                }
            }
        }

        return result
    }

    private fun mergeExposure(images: List<Mat>): Mat {
        if (images.isEmpty()) throw IllegalArgumentException("No images to merge")
        if (images.size == 1) return images[0].clone()

        try {
            // Use Mertens exposure fusion
            val mergeMertens = Photo.createMergeMertens()
            val result = Mat()
            mergeMertens.process(images, result)

            // Convert to 8-bit
            val result8U = Mat()
            result.convertTo(result8U, CvType.CV_8UC3, 255.0)
            
            result.release()
            return result8U

        } catch (e: Exception) {
            // Fallback to average if Mertens fails
            return mergeAverage(images)
        }
    }

    private fun mergeFusion(images: List<Mat>): Mat {
        // Advanced fusion: combine exposure fusion with median for best results
        if (images.isEmpty()) throw IllegalArgumentException("No images to merge")
        if (images.size == 1) return images[0].clone()

        // First apply exposure fusion
        val exposed = mergeExposure(images)

        // Then apply median filtering for noise reduction
        val denoised = Mat()
        Imgproc.medianBlur(exposed, denoised, 3)

        exposed.release()
        return denoised
    }

    // Save to file
    private fun saveToFile(bitmap: Bitmap, format: String, quality: Int): File {
        val outputDir = reactApplicationContext.cacheDir
        val timestamp = System.currentTimeMillis()
        val extension = if (format == "png") "png" else "jpg"
        val outputFile = File(outputDir, "fusion_$timestamp.$extension")

        FileOutputStream(outputFile).use { out ->
            val compressFormat = if (format == "png") {
                Bitmap.CompressFormat.PNG
            } else {
                Bitmap.CompressFormat.JPEG
            }
            bitmap.compress(compressFormat, quality, out)
        }

        return outputFile
    }

    override fun onCatalystInstanceDestroy() {
        super.onCatalystInstanceDestroy()
        scope.cancel()
    }
}
