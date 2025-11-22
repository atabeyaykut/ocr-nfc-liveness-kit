package androidx.camera.core;

import android.content.ContentValues;
import android.net.Uri;
import android.os.Build;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.impl.utils.Exif;
import androidx.camera.core.internal.compat.workaround.ExifRotationAvailability;
import androidx.camera.core.internal.utils.ImageUtil;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

@RequiresApi(21)
/* loaded from: classes.dex */
final class ImageSaver implements Runnable {
    private static final int COPY_BUFFER_SIZE = 1024;
    private static final int NOT_PENDING = 0;
    private static final int PENDING = 1;
    private static final String TAG = "ImageSaver";
    private static final String TEMP_FILE_PREFIX = "CameraX";
    private static final String TEMP_FILE_SUFFIX = ".tmp";

    @NonNull
    private final OnImageSavedCallback mCallback;
    private final ImageProxy mImage;
    private final int mJpegQuality;
    private final int mOrientation;

    @NonNull
    private final ImageCapture.OutputFileOptions mOutputFileOptions;

    @NonNull
    private final Executor mSequentialIoExecutor;

    @NonNull
    private final Executor mUserCallbackExecutor;

    /* renamed from: androidx.camera.core.ImageSaver$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$camera$core$internal$utils$ImageUtil$CodecFailedException$FailureType;

        static {
            int[] r02 = new int[ImageUtil.CodecFailedException.FailureType.values().length];
            $SwitchMap$androidx$camera$core$internal$utils$ImageUtil$CodecFailedException$FailureType = r02;
            try {
                r02[ImageUtil.CodecFailedException.FailureType.ENCODE_FAILED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$camera$core$internal$utils$ImageUtil$CodecFailedException$FailureType[ImageUtil.CodecFailedException.FailureType.DECODE_FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$camera$core$internal$utils$ImageUtil$CodecFailedException$FailureType[ImageUtil.CodecFailedException.FailureType.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public interface OnImageSavedCallback {
        void onError(@NonNull SaveError saveError, @NonNull String str, @Nullable Throwable th2);

        void onImageSaved(@NonNull ImageCapture.OutputFileResults outputFileResults);
    }

    public enum SaveError {
        FILE_IO_FAILED,
        ENCODE_FAILED,
        CROP_FAILED,
        UNKNOWN
    }

    public ImageSaver(@NonNull ImageProxy imageProxy, @NonNull ImageCapture.OutputFileOptions outputFileOptions, int r32, @IntRange(from = 1, to = 100) int r42, @NonNull Executor executor, @NonNull Executor executor2, @NonNull OnImageSavedCallback onImageSavedCallback) {
        this.mImage = imageProxy;
        this.mOutputFileOptions = outputFileOptions;
        this.mOrientation = r32;
        this.mJpegQuality = r42;
        this.mCallback = onImageSavedCallback;
        this.mUserCallbackExecutor = executor;
        this.mSequentialIoExecutor = executor2;
    }

    private void copyTempFileToOutputStream(@NonNull File file, @NonNull OutputStream outputStream) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int r12 = fileInputStream.read(bArr);
                if (r12 <= 0) {
                    fileInputStream.close();
                    return;
                }
                outputStream.write(bArr, 0, r12);
            }
        } catch (Throwable th2) {
            try {
                fileInputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private boolean copyTempFileToUri(@NonNull File file, @NonNull Uri uri) throws IOException {
        OutputStream outputStreamOpenOutputStream = this.mOutputFileOptions.getContentResolver().openOutputStream(uri);
        if (outputStreamOpenOutputStream == null) {
            if (outputStreamOpenOutputStream == null) {
                return false;
            }
            outputStreamOpenOutputStream.close();
            return false;
        }
        try {
            copyTempFileToOutputStream(file, outputStreamOpenOutputStream);
            outputStreamOpenOutputStream.close();
            return true;
        } catch (Throwable th2) {
            try {
                outputStreamOpenOutputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    @NonNull
    private byte[] imageToJpegByteArray(@NonNull ImageProxy imageProxy, @IntRange(from = 1, to = 100) int r6) throws ImageUtil.CodecFailedException {
        boolean zShouldCropImage = ImageUtil.shouldCropImage(imageProxy);
        int format = imageProxy.getFormat();
        if (format == 256) {
            return !zShouldCropImage ? ImageUtil.jpegImageToJpegByteArray(imageProxy) : ImageUtil.jpegImageToJpegByteArray(imageProxy, imageProxy.getCropRect(), r6);
        }
        if (format == 35) {
            return ImageUtil.yuvImageToJpegByteArray(imageProxy, zShouldCropImage ? imageProxy.getCropRect() : null, r6);
        }
        Logger.w(TAG, "Unrecognized image format: " + format);
        return null;
    }

    private boolean isSaveToFile() {
        return this.mOutputFileOptions.getFile() != null;
    }

    private boolean isSaveToMediaStore() {
        return (this.mOutputFileOptions.getSaveCollection() == null || this.mOutputFileOptions.getContentResolver() == null || this.mOutputFileOptions.getContentValues() == null) ? false : true;
    }

    private boolean isSaveToOutputStream() {
        return this.mOutputFileOptions.getOutputStream() != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$postError$2(SaveError saveError, String str, Throwable th2) {
        this.mCallback.onError(saveError, str, th2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$postSuccess$1(Uri uri) {
        this.mCallback.onImageSaved(new ImageCapture.OutputFileResults(uri));
    }

    private void postError(SaveError saveError, String str, @Nullable Throwable th2) {
        try {
            this.mUserCallbackExecutor.execute(new m0(this, saveError, str, th2, 0));
        } catch (RejectedExecutionException unused) {
            Logger.e(TAG, "Application executor rejected executing OnImageSavedCallback.onError callback. Skipping.");
        }
    }

    private void postSuccess(@Nullable Uri uri) {
        try {
            this.mUserCallbackExecutor.execute(new l0(0, this, uri));
        } catch (RejectedExecutionException unused) {
            Logger.e(TAG, "Application executor rejected executing OnImageSavedCallback.onImageSaved callback. Skipping.");
        }
    }

    @Nullable
    private File saveImageToTempFile() throws IOException {
        File fileCreateTempFile;
        SaveError saveError;
        String str;
        Throwable th2;
        try {
            if (isSaveToFile()) {
                fileCreateTempFile = new File(this.mOutputFileOptions.getFile().getParent(), TEMP_FILE_PREFIX + UUID.randomUUID().toString() + TEMP_FILE_SUFFIX);
            } else {
                fileCreateTempFile = File.createTempFile(TEMP_FILE_PREFIX, TEMP_FILE_SUFFIX);
            }
            try {
                ImageProxy imageProxy = this.mImage;
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
                    try {
                        fileOutputStream.write(imageToJpegByteArray(this.mImage, this.mJpegQuality));
                        Exif exifCreateFromFile = Exif.createFromFile(fileCreateTempFile);
                        Exif.createFromImageProxy(this.mImage).copyToCroppedImage(exifCreateFromFile);
                        if (!new ExifRotationAvailability().shouldUseExifOrientation(this.mImage)) {
                            exifCreateFromFile.rotate(this.mOrientation);
                        }
                        ImageCapture.Metadata metadata = this.mOutputFileOptions.getMetadata();
                        if (metadata.isReversedHorizontal()) {
                            exifCreateFromFile.flipHorizontally();
                        }
                        if (metadata.isReversedVertical()) {
                            exifCreateFromFile.flipVertically();
                        }
                        if (metadata.getLocation() != null) {
                            exifCreateFromFile.attachLocation(this.mOutputFileOptions.getMetadata().getLocation());
                        }
                        exifCreateFromFile.save();
                        fileOutputStream.close();
                        if (imageProxy != null) {
                            imageProxy.close();
                        }
                        th2 = null;
                        saveError = null;
                        str = null;
                    } finally {
                    }
                } catch (Throwable th3) {
                    if (imageProxy != null) {
                        try {
                            imageProxy.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                    }
                    throw th3;
                }
            } catch (ImageUtil.CodecFailedException e10) {
                int r32 = AnonymousClass1.$SwitchMap$androidx$camera$core$internal$utils$ImageUtil$CodecFailedException$FailureType[e10.getFailureType().ordinal()];
                if (r32 == 1) {
                    saveError = SaveError.ENCODE_FAILED;
                    str = "Failed to encode mImage";
                    th2 = e10;
                } else if (r32 != 2) {
                    saveError = SaveError.UNKNOWN;
                    str = "Failed to transcode mImage";
                    th2 = e10;
                } else {
                    saveError = SaveError.CROP_FAILED;
                    str = "Failed to crop mImage";
                    th2 = e10;
                }
            } catch (IOException e11) {
                e = e11;
                saveError = SaveError.FILE_IO_FAILED;
                str = "Failed to write temp file";
                th2 = e;
            } catch (IllegalArgumentException e12) {
                e = e12;
                saveError = SaveError.FILE_IO_FAILED;
                str = "Failed to write temp file";
                th2 = e;
            }
            if (saveError == null) {
                return fileCreateTempFile;
            }
            postError(saveError, str, th2);
            fileCreateTempFile.delete();
            return null;
        } catch (IOException e13) {
            postError(SaveError.FILE_IO_FAILED, "Failed to create temp file", e13);
            return null;
        }
    }

    private void setContentValuePending(@NonNull ContentValues contentValues, int r42) {
        if (Build.VERSION.SDK_INT >= 29) {
            contentValues.put("is_pending", Integer.valueOf(r42));
        }
    }

    private void setUriNotPending(@NonNull Uri uri) {
        if (Build.VERSION.SDK_INT >= 29) {
            ContentValues contentValues = new ContentValues();
            setContentValuePending(contentValues, 0);
            this.mOutputFileOptions.getContentResolver().update(uri, contentValues, null, null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00a4  */
    /* renamed from: copyTempFileToDestination, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void lambda$run$0(@androidx.annotation.NonNull java.io.File r6) {
        /*
            r5 = this;
            androidx.core.util.Preconditions.checkNotNull(r6)
            r0 = 0
            boolean r1 = r5.isSaveToMediaStore()     // Catch: java.lang.Throwable -> L8f java.lang.IllegalArgumentException -> L91 java.io.IOException -> L93
            if (r1 == 0) goto L54
            androidx.camera.core.ImageCapture$OutputFileOptions r1 = r5.mOutputFileOptions     // Catch: java.lang.Throwable -> L8f java.lang.IllegalArgumentException -> L91 java.io.IOException -> L93
            android.content.ContentValues r1 = r1.getContentValues()     // Catch: java.lang.Throwable -> L8f java.lang.IllegalArgumentException -> L91 java.io.IOException -> L93
            if (r1 == 0) goto L1e
            android.content.ContentValues r1 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L8f java.lang.IllegalArgumentException -> L91 java.io.IOException -> L93
            androidx.camera.core.ImageCapture$OutputFileOptions r2 = r5.mOutputFileOptions     // Catch: java.lang.Throwable -> L8f java.lang.IllegalArgumentException -> L91 java.io.IOException -> L93
            android.content.ContentValues r2 = r2.getContentValues()     // Catch: java.lang.Throwable -> L8f java.lang.IllegalArgumentException -> L91 java.io.IOException -> L93
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L8f java.lang.IllegalArgumentException -> L91 java.io.IOException -> L93
            goto L23
        L1e:
            android.content.ContentValues r1 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L8f java.lang.IllegalArgumentException -> L91 java.io.IOException -> L93
            r1.<init>()     // Catch: java.lang.Throwable -> L8f java.lang.IllegalArgumentException -> L91 java.io.IOException -> L93
        L23:
            r2 = 1
            r5.setContentValuePending(r1, r2)     // Catch: java.lang.Throwable -> L8f java.lang.IllegalArgumentException -> L91 java.io.IOException -> L93
            androidx.camera.core.ImageCapture$OutputFileOptions r2 = r5.mOutputFileOptions     // Catch: java.lang.Throwable -> L8f java.lang.IllegalArgumentException -> L91 java.io.IOException -> L93
            android.content.ContentResolver r2 = r2.getContentResolver()     // Catch: java.lang.Throwable -> L8f java.lang.IllegalArgumentException -> L91 java.io.IOException -> L93
            androidx.camera.core.ImageCapture$OutputFileOptions r3 = r5.mOutputFileOptions     // Catch: java.lang.Throwable -> L8f java.lang.IllegalArgumentException -> L91 java.io.IOException -> L93
            android.net.Uri r3 = r3.getSaveCollection()     // Catch: java.lang.Throwable -> L8f java.lang.IllegalArgumentException -> L91 java.io.IOException -> L93
            android.net.Uri r1 = r2.insert(r3, r1)     // Catch: java.lang.Throwable -> L8f java.lang.IllegalArgumentException -> L91 java.io.IOException -> L93
            if (r1 != 0) goto L3f
            androidx.camera.core.ImageSaver$SaveError r2 = androidx.camera.core.ImageSaver.SaveError.FILE_IO_FAILED     // Catch: java.lang.IllegalArgumentException -> L50 java.io.IOException -> L52 java.lang.Throwable -> L8f
            java.lang.String r3 = "Failed to insert URI."
            goto L9b
        L3f:
            boolean r2 = r5.copyTempFileToUri(r6, r1)     // Catch: java.lang.IllegalArgumentException -> L50 java.io.IOException -> L52 java.lang.Throwable -> L8f
            if (r2 != 0) goto L4a
            androidx.camera.core.ImageSaver$SaveError r2 = androidx.camera.core.ImageSaver.SaveError.FILE_IO_FAILED     // Catch: java.lang.IllegalArgumentException -> L50 java.io.IOException -> L52 java.lang.Throwable -> L8f
            java.lang.String r3 = "Failed to save to URI."
            goto L4c
        L4a:
            r2 = r0
            r3 = r2
        L4c:
            r5.setUriNotPending(r1)     // Catch: java.lang.IllegalArgumentException -> L50 java.io.IOException -> L52 java.lang.Throwable -> L8f
            goto L9b
        L50:
            r0 = move-exception
            goto L97
        L52:
            r0 = move-exception
            goto L97
        L54:
            boolean r1 = r5.isSaveToOutputStream()     // Catch: java.lang.Throwable -> L8f java.lang.IllegalArgumentException -> L91 java.io.IOException -> L93
            if (r1 == 0) goto L64
            androidx.camera.core.ImageCapture$OutputFileOptions r1 = r5.mOutputFileOptions     // Catch: java.lang.Throwable -> L8f java.lang.IllegalArgumentException -> L91 java.io.IOException -> L93
            java.io.OutputStream r1 = r1.getOutputStream()     // Catch: java.lang.Throwable -> L8f java.lang.IllegalArgumentException -> L91 java.io.IOException -> L93
            r5.copyTempFileToOutputStream(r6, r1)     // Catch: java.lang.Throwable -> L8f java.lang.IllegalArgumentException -> L91 java.io.IOException -> L93
            goto L8b
        L64:
            boolean r1 = r5.isSaveToFile()     // Catch: java.lang.Throwable -> L8f java.lang.IllegalArgumentException -> L91 java.io.IOException -> L93
            if (r1 == 0) goto L8b
            androidx.camera.core.ImageCapture$OutputFileOptions r1 = r5.mOutputFileOptions     // Catch: java.lang.Throwable -> L8f java.lang.IllegalArgumentException -> L91 java.io.IOException -> L93
            java.io.File r1 = r1.getFile()     // Catch: java.lang.Throwable -> L8f java.lang.IllegalArgumentException -> L91 java.io.IOException -> L93
            boolean r2 = r1.exists()     // Catch: java.lang.Throwable -> L8f java.lang.IllegalArgumentException -> L91 java.io.IOException -> L93
            if (r2 == 0) goto L79
            r1.delete()     // Catch: java.lang.Throwable -> L8f java.lang.IllegalArgumentException -> L91 java.io.IOException -> L93
        L79:
            boolean r2 = r6.renameTo(r1)     // Catch: java.lang.Throwable -> L8f java.lang.IllegalArgumentException -> L91 java.io.IOException -> L93
            if (r2 != 0) goto L84
            androidx.camera.core.ImageSaver$SaveError r2 = androidx.camera.core.ImageSaver.SaveError.FILE_IO_FAILED     // Catch: java.lang.Throwable -> L8f java.lang.IllegalArgumentException -> L91 java.io.IOException -> L93
            java.lang.String r3 = "Failed to rename file."
            goto L86
        L84:
            r2 = r0
            r3 = r2
        L86:
            android.net.Uri r1 = android.net.Uri.fromFile(r1)     // Catch: java.lang.Throwable -> L8f java.lang.IllegalArgumentException -> L91 java.io.IOException -> L93
            goto L9b
        L8b:
            r1 = r0
            r2 = r1
            r3 = r2
            goto L9b
        L8f:
            r0 = move-exception
            goto La8
        L91:
            r1 = move-exception
            goto L94
        L93:
            r1 = move-exception
        L94:
            r4 = r1
            r1 = r0
            r0 = r4
        L97:
            androidx.camera.core.ImageSaver$SaveError r2 = androidx.camera.core.ImageSaver.SaveError.FILE_IO_FAILED     // Catch: java.lang.Throwable -> L8f
            java.lang.String r3 = "Failed to write destination file."
        L9b:
            r6.delete()
            if (r2 == 0) goto La4
            r5.postError(r2, r3, r0)
            goto La7
        La4:
            r5.postSuccess(r1)
        La7:
            return
        La8:
            r6.delete()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.core.ImageSaver.lambda$run$0(java.io.File):void");
    }

    @Override // java.lang.Runnable
    public void run() throws IOException {
        File fileSaveImageToTempFile = saveImageToTempFile();
        if (fileSaveImageToTempFile != null) {
            this.mSequentialIoExecutor.execute(new a(1, this, fileSaveImageToTempFile));
        }
    }
}
