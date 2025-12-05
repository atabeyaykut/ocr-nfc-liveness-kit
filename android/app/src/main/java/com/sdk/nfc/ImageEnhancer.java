package com.sdk.nfc;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.util.Log;

/**
 * Image Enhancement Utility for NFC Passport Photos
 * 
 * Applies histogram equalization and CLAHE (Contrast Limited Adaptive Histogram
 * Equalization)
 * to improve face recognition accuracy on low-contrast NFC photos.
 * 
 * Features:
 * - Histogram equalization per channel (RGB)
 * - CLAHE with configurable tile size and clip limit
 * - Brightness/Contrast (gain-bias) normalization
 * - Gamma correction
 */
public class ImageEnhancer {

    private static final String TAG = "ImageEnhancer";

    // CLAHE parameters
    private static final int CLAHE_TILE_SIZE = 8; // Grid size for local histogram
    private static final double CLAHE_CLIP_LIMIT = 2.0; // Contrast limit factor

    /**
     * Enhance NFC photo with histogram equalization and CLAHE
     * 
     * @param bitmap Input bitmap (NFC photo)
     * @return Enhanced bitmap with improved contrast
     */
    public static Bitmap enhanceNFCPhoto(Bitmap bitmap) {
        if (bitmap == null) {
            Log.w(TAG, "Input bitmap is null");
            return null;
        }

        long startTime = System.currentTimeMillis();
        Log.d(TAG, "🎨 Enhancing NFC photo: " + bitmap.getWidth() + "x" + bitmap.getHeight() + "px");

        try {
            // Create mutable copy
            Bitmap enhanced = bitmap.copy(Bitmap.Config.ARGB_8888, true);

            // Step 1: Apply CLAHE (Contrast Limited Adaptive Histogram Equalization)
            applyCLAHE(enhanced);

            // Step 2: Apply global histogram equalization for fine-tuning
            applyHistogramEqualization(enhanced);

            // Step 3: Normalize brightness/contrast
            normalizeBrightnessContrast(enhanced);

            long duration = System.currentTimeMillis() - startTime;
            Log.d(TAG, "✅ Photo enhanced in " + duration + "ms");

            return enhanced;

        } catch (Exception e) {
            Log.e(TAG, "❌ Enhancement failed: " + e.getMessage(), e);
            return bitmap; // Return original on error
        }
    }

    /**
     * Apply CLAHE (Contrast Limited Adaptive Histogram Equalization)
     * Improves local contrast while preventing over-amplification
     */
    private static void applyCLAHE(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();

        // Calculate tile dimensions
        int tileWidth = width / CLAHE_TILE_SIZE;
        int tileHeight = height / CLAHE_TILE_SIZE;

        if (tileWidth < 2 || tileHeight < 2) {
            Log.w(TAG, "Image too small for CLAHE, skipping");
            return;
        }

        Log.d(TAG, "📊 Applying CLAHE: " + CLAHE_TILE_SIZE + "x" + CLAHE_TILE_SIZE + " tiles");

        // Process each tile
        for (int tileY = 0; tileY < CLAHE_TILE_SIZE; tileY++) {
            for (int tileX = 0; tileX < CLAHE_TILE_SIZE; tileX++) {
                int x1 = tileX * tileWidth;
                int y1 = tileY * tileHeight;
                int x2 = Math.min(x1 + tileWidth, width);
                int y2 = Math.min(y1 + tileHeight, height);

                // Apply histogram equalization to tile
                equalizeHistogramInRegion(bitmap, x1, y1, x2, y2, CLAHE_CLIP_LIMIT);
            }
        }
    }

    /**
     * Equalize histogram in a specific region with clip limit
     */
    private static void equalizeHistogramInRegion(
            Bitmap bitmap, int x1, int y1, int x2, int y2, double clipLimit) {

        int regionWidth = x2 - x1;
        int regionHeight = y2 - y1;
        int pixelCount = regionWidth * regionHeight;

        // Build histogram for each channel
        int[] histR = new int[256];
        int[] histG = new int[256];
        int[] histB = new int[256];

        for (int y = y1; y < y2; y++) {
            for (int x = x1; x < x2; x++) {
                int pixel = bitmap.getPixel(x, y);
                histR[Color.red(pixel)]++;
                histG[Color.green(pixel)]++;
                histB[Color.blue(pixel)]++;
            }
        }

        // Apply clip limit
        int clipLevel = (int) (clipLimit * pixelCount / 256.0);
        histR = clipHistogram(histR, clipLevel, pixelCount);
        histG = clipHistogram(histG, clipLevel, pixelCount);
        histB = clipHistogram(histB, clipLevel, pixelCount);

        // Build CDF (Cumulative Distribution Function)
        int[] cdfR = buildCDF(histR);
        int[] cdfG = buildCDF(histG);
        int[] cdfB = buildCDF(histB);

        // Find min CDF values (ignore zeros)
        int cdfMinR = findMinNonZero(cdfR);
        int cdfMinG = findMinNonZero(cdfG);
        int cdfMinB = findMinNonZero(cdfB);

        // Apply equalization
        for (int y = y1; y < y2; y++) {
            for (int x = x1; x < x2; x++) {
                int pixel = bitmap.getPixel(x, y);
                int alpha = Color.alpha(pixel);
                int r = Color.red(pixel);
                int g = Color.green(pixel);
                int b = Color.blue(pixel);

                // Equalize each channel
                int newR = equalizeValue(r, cdfR[r], cdfMinR, pixelCount);
                int newG = equalizeValue(g, cdfG[g], cdfMinG, pixelCount);
                int newB = equalizeValue(b, cdfB[b], cdfMinB, pixelCount);

                bitmap.setPixel(x, y, Color.argb(alpha, newR, newG, newB));
            }
        }
    }

    /**
     * Clip histogram to prevent over-amplification
     */
    private static int[] clipHistogram(int[] hist, int clipLimit, int pixelCount) {
        int[] clipped = hist.clone();
        int redistributed;

        do {
            redistributed = 0;
            int clippedSum = 0;

            // Clip values above limit
            for (int i = 0; i < 256; i++) {
                if (clipped[i] > clipLimit) {
                    clippedSum += clipped[i] - clipLimit;
                    clipped[i] = clipLimit;
                }
            }

            // Redistribute clipped pixels
            if (clippedSum > 0) {
                int perBin = clippedSum / 256;
                int remainder = clippedSum % 256;

                for (int i = 0; i < 256; i++) {
                    clipped[i] += perBin;
                    if (i < remainder) {
                        clipped[i]++;
                    }
                }
                redistributed = clippedSum;
            }
        } while (redistributed > 0);

        return clipped;
    }

    /**
     * Build Cumulative Distribution Function from histogram
     */
    private static int[] buildCDF(int[] hist) {
        int[] cdf = new int[256];
        cdf[0] = hist[0];
        for (int i = 1; i < 256; i++) {
            cdf[i] = cdf[i - 1] + hist[i];
        }
        return cdf;
    }

    /**
     * Find minimum non-zero value in CDF
     */
    private static int findMinNonZero(int[] cdf) {
        for (int value : cdf) {
            if (value > 0)
                return value;
        }
        return 0;
    }

    /**
     * Equalize single value using CDF
     */
    private static int equalizeValue(int value, int cdf, int cdfMin, int pixelCount) {
        if (pixelCount == cdfMin)
            return value; // Avoid division by zero
        int equalized = (int) (((cdf - cdfMin) * 255.0) / (pixelCount - cdfMin));
        return Math.max(0, Math.min(255, equalized));
    }

    /**
     * Apply global histogram equalization (per channel)
     */
    private static void applyHistogramEqualization(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int pixelCount = width * height;

        Log.d(TAG, "📊 Applying global histogram equalization");

        // Build histograms
        int[] histR = new int[256];
        int[] histG = new int[256];
        int[] histB = new int[256];

        for (int y = 0; y < height; y++) {
            for (int x = 0; x < width; x++) {
                int pixel = bitmap.getPixel(x, y);
                histR[Color.red(pixel)]++;
                histG[Color.green(pixel)]++;
                histB[Color.blue(pixel)]++;
            }
        }

        // Build CDFs
        int[] cdfR = buildCDF(histR);
        int[] cdfG = buildCDF(histG);
        int[] cdfB = buildCDF(histB);

        int cdfMinR = findMinNonZero(cdfR);
        int cdfMinG = findMinNonZero(cdfG);
        int cdfMinB = findMinNonZero(cdfB);

        // Apply equalization (with reduced strength for fine-tuning)
        double strength = 0.3; // Blend 30% equalized, 70% original

        for (int y = 0; y < height; y++) {
            for (int x = 0; x < width; x++) {
                int pixel = bitmap.getPixel(x, y);
                int alpha = Color.alpha(pixel);
                int r = Color.red(pixel);
                int g = Color.green(pixel);
                int b = Color.blue(pixel);

                // Equalize
                int eqR = equalizeValue(r, cdfR[r], cdfMinR, pixelCount);
                int eqG = equalizeValue(g, cdfG[g], cdfMinG, pixelCount);
                int eqB = equalizeValue(b, cdfB[b], cdfMinB, pixelCount);

                // Blend with original
                int newR = (int) (r * (1 - strength) + eqR * strength);
                int newG = (int) (g * (1 - strength) + eqG * strength);
                int newB = (int) (b * (1 - strength) + eqB * strength);

                bitmap.setPixel(x, y, Color.argb(alpha, newR, newG, newB));
            }
        }
    }

    /**
     * Normalize brightness and contrast (gain-bias adjustment)
     */
    private static void normalizeBrightnessContrast(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int pixelCount = width * height;

        Log.d(TAG, "⚖️ Normalizing brightness/contrast");

        // Calculate mean brightness
        long sumR = 0, sumG = 0, sumB = 0;
        for (int y = 0; y < height; y++) {
            for (int x = 0; x < width; x++) {
                int pixel = bitmap.getPixel(x, y);
                sumR += Color.red(pixel);
                sumG += Color.green(pixel);
                sumB += Color.blue(pixel);
            }
        }

        double meanR = (double) sumR / pixelCount;
        double meanG = (double) sumG / pixelCount;
        double meanB = (double) sumB / pixelCount;
        double meanBrightness = (meanR + meanG + meanB) / 3.0;

        Log.d(TAG, "📊 Current brightness: " + String.format("%.1f", meanBrightness));

        // Target brightness: 127.5 (mid-gray)
        double targetBrightness = 127.5;
        double bias = targetBrightness - meanBrightness;

        // Gain: slightly increase contrast (1.1x)
        double gain = 1.1;

        Log.d(TAG, "🎯 Adjustment - Gain: " + gain + ", Bias: " + String.format("%.1f", bias));

        // Apply gain-bias adjustment
        for (int y = 0; y < height; y++) {
            for (int x = 0; x < width; x++) {
                int pixel = bitmap.getPixel(x, y);
                int alpha = Color.alpha(pixel);
                int r = Color.red(pixel);
                int g = Color.green(pixel);
                int b = Color.blue(pixel);

                // Apply: output = gain * input + bias
                int newR = clamp((int) (r * gain + bias));
                int newG = clamp((int) (g * gain + bias));
                int newB = clamp((int) (b * gain + bias));

                bitmap.setPixel(x, y, Color.argb(alpha, newR, newG, newB));
            }
        }
    }

    /**
     * Clamp value to [0, 255]
     */
    private static int clamp(int value) {
        return Math.max(0, Math.min(255, value));
    }

    /**
     * Apply gamma correction to image
     * 
     * @param bitmap Input bitmap
     * @param gamma  Gamma value (< 1.0 = brighter, > 1.0 = darker)
     */
    public static void applyGammaCorrection(Bitmap bitmap, double gamma) {
        if (bitmap == null || gamma <= 0) {
            return;
        }

        Log.d(TAG, "🎨 Applying gamma correction: γ=" + gamma);

        // Build lookup table
        int[] lut = new int[256];
        for (int i = 0; i < 256; i++) {
            lut[i] = (int) (Math.pow(i / 255.0, gamma) * 255.0);
        }

        int width = bitmap.getWidth();
        int height = bitmap.getHeight();

        // Apply LUT
        for (int y = 0; y < height; y++) {
            for (int x = 0; x < width; x++) {
                int pixel = bitmap.getPixel(x, y);
                int alpha = Color.alpha(pixel);
                int r = lut[Color.red(pixel)];
                int g = lut[Color.green(pixel)];
                int b = lut[Color.blue(pixel)];
                bitmap.setPixel(x, y, Color.argb(alpha, r, g, b));
            }
        }
    }
}
