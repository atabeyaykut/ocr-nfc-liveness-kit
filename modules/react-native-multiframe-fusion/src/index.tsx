import { NativeModules, Platform } from 'react-native';

const LINKING_ERROR =
    `The package 'react-native-multiframe-fusion' doesn't seem to be linked. Make sure: \n\n` +
    Platform.select({ ios: "- You have run 'pod install'\n", default: '' }) +
    '- You rebuilt the app after installing the package\n' +
    '- You are not using Expo managed workflow\n';

const MultiFrameFusionModule = NativeModules.MultiFrameFusion
    ? NativeModules.MultiFrameFusion
    : new Proxy(
        {},
        {
            get() {
                throw new Error(LINKING_ERROR);
            },
        }
    );

/**
 * Fusion methods available for merging images
 */
export type FusionMethod = 'average' | 'median' | 'exposure' | 'fusion';

/**
 * Output image format
 */
export type ImageFormat = 'jpeg' | 'png';

/**
 * Options for multi-frame fusion
 */
export interface FusionOptions {
    /**
     * Fusion method to use
     * - 'average': Simple averaging of aligned frames
     * - 'median': Median value across frames (best for noise reduction)
     * - 'exposure': Exposure fusion (Mertens algorithm)
     * - 'fusion': Advanced multi-frame fusion with deghosting
     * @default 'fusion'
     */
    method?: FusionMethod;

    /**
     * Output image format
     * @default 'jpeg'
     */
    format?: ImageFormat;

    /**
     * Output quality (0.0 to 1.0)
     * Only applies to JPEG format
     * @default 0.9
     */
    quality?: number;

    /**
     * Enable deghosting (motion detection and removal)
     * @default true
     */
    deghost?: boolean;

    /**
     * Alignment method
     * - 'ecc': ECC-based global alignment (faster)
     * - 'feature': Feature-based alignment (more robust)
     * - 'optical': Optical flow (most accurate, slower)
     * @default 'ecc'
     */
    alignmentMethod?: 'ecc' | 'feature' | 'optical';

    /**
     * Maximum alignment iterations
     * @default 50
     */
    maxIterations?: number;

    /**
     * Alignment termination epsilon
     * @default 0.001
     */
    epsilon?: number;
}

/**
 * Result of multi-frame fusion
 */
export interface FusionResult {
    /**
     * URI of the output image
     */
    uri: string;

    /**
     * Width of the output image in pixels
     */
    width: number;

    /**
     * Height of the output image in pixels
     */
    height: number;

    /**
     * File size in bytes
     */
    fileSize?: number;

    /**
     * Processing time in milliseconds
     */
    processingTime?: number;
}

/**
 * Multi-frame image fusion API
 */
export class MultiFrameFusion {
    /**
     * Merge multiple images using multi-frame fusion
     *
     * @param imageUris Array of image URIs (file://, content://, or base64)
     * @param options Fusion options
     * @returns Promise resolving to fusion result
     *
     * @example
     * ```typescript
     * const result = await MultiFrameFusion.merge(
     *   ['file:///path/to/image1.jpg', 'file:///path/to/image2.jpg', 'file:///path/to/image3.jpg'],
     *   {
     *     method: 'fusion',
     *     format: 'jpeg',
     *     quality: 0.9,
     *     deghost: true,
     *     alignmentMethod: 'ecc'
     *   }
     * );
     * console.log('Merged image:', result.uri);
     * ```
     */
    static async merge(
        imageUris: string[],
        options?: FusionOptions
    ): Promise<FusionResult> {
        if (!imageUris || imageUris.length < 2) {
            throw new Error('At least 2 images are required for fusion');
        }

        if (imageUris.length > 10) {
            console.warn(
                'Multi-frame fusion with more than 10 images may be slow and memory intensive'
            );
        }

        const defaultOptions: Required<FusionOptions> = {
            method: 'fusion',
            format: 'jpeg',
            quality: 0.9,
            deghost: true,
            alignmentMethod: 'ecc',
            maxIterations: 50,
            epsilon: 0.001,
        };

        const mergedOptions = { ...defaultOptions, ...options };

        // Validate quality
        if (
            mergedOptions.quality < 0 ||
            mergedOptions.quality > 1
        ) {
            throw new Error('Quality must be between 0.0 and 1.0');
        }

        try {
            const result = await MultiFrameFusionModule.merge(
                imageUris,
                mergedOptions
            );
            return result;
        } catch (error) {
            if (error instanceof Error) {
                throw new Error(`Multi-frame fusion failed: ${error.message}`);
            }
            throw error;
        }
    }

    /**
     * Check if multi-frame fusion is supported on this device
     *
     * @returns Promise resolving to true if supported
     */
    static async isSupported(): Promise<boolean> {
        try {
            return await MultiFrameFusionModule.isSupported();
        } catch {
            return false;
        }
    }

    /**
     * Get device capabilities
     *
     * @returns Promise resolving to capability information
     */
    static async getCapabilities(): Promise<{
        supportedMethods: FusionMethod[];
        supportedFormats: ImageFormat[];
        maxImageSize: number;
        hasOpenCV?: boolean;
        hasCoreImage?: boolean;
    }> {
        try {
            return await MultiFrameFusionModule.getCapabilities();
        } catch (error) {
            // Return default capabilities on error
            return {
                supportedMethods: ['average', 'median'],
                supportedFormats: ['jpeg', 'png'],
                maxImageSize: 4096,
            };
        }
    }
}

export default MultiFrameFusion;
