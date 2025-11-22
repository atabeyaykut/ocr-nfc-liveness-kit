package androidx.camera.camera2.internal;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.media.CamcorderProfile;
import android.media.MediaRecorder;
import android.os.Build;
import android.util.Pair;
import android.util.Rational;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.camera.camera2.internal.compat.CameraAccessExceptionCompat;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.camera2.internal.compat.CameraManagerCompat;
import androidx.camera.camera2.internal.compat.workaround.ExcludedSupportedSizesContainer;
import androidx.camera.camera2.internal.compat.workaround.ExtraSupportedSurfaceCombinationsContainer;
import androidx.camera.camera2.internal.compat.workaround.ResolutionCorrector;
import androidx.camera.core.CameraUnavailableException;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.SurfaceCombination;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.camera.core.impl.SurfaceSizeDefinition;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.utils.CameraOrientationUtil;
import androidx.camera.core.impl.utils.CompareSizesByArea;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@RequiresApi(21)
/* loaded from: classes.dex */
final class SupportedSurfaceCombination {
    private static final int ALIGN16 = 16;
    private static final String TAG = "SupportedSurfaceCombination";
    private final CamcorderProfileHelper mCamcorderProfileHelper;
    private final String mCameraId;
    private final CameraCharacteristicsCompat mCharacteristics;

    @NonNull
    private final DisplayInfoManager mDisplayInfoManager;
    private final ExcludedSupportedSizesContainer mExcludedSupportedSizesContainer;
    private final ExtraSupportedSurfaceCombinationsContainer mExtraSupportedSurfaceCombinationsContainer;
    private final int mHardwareLevel;
    private final boolean mIsSensorLandscapeResolution;
    private SurfaceSizeDefinition mSurfaceSizeDefinition;
    private static final Size DEFAULT_SIZE = new Size(640, 480);
    private static final Size ZERO_SIZE = new Size(0, 0);
    private static final Size QUALITY_1080P_SIZE = new Size(1920, 1080);
    private static final Size QUALITY_480P_SIZE = new Size(720, 480);
    private static final Rational ASPECT_RATIO_4_3 = new Rational(4, 3);
    private static final Rational ASPECT_RATIO_3_4 = new Rational(3, 4);
    private static final Rational ASPECT_RATIO_16_9 = new Rational(16, 9);
    private static final Rational ASPECT_RATIO_9_16 = new Rational(9, 16);
    private final List<SurfaceCombination> mSurfaceCombinations = new ArrayList();
    private final Map<Integer, Size> mMaxSizeCache = new HashMap();
    private final Map<Integer, List<Size>> mExcludedSizeListCache = new HashMap();
    private boolean mIsRawSupported = false;
    private boolean mIsBurstCaptureSupported = false;
    private Map<Integer, Size[]> mOutputSizesCache = new HashMap();
    private final ResolutionCorrector mResolutionCorrector = new ResolutionCorrector();

    @RequiresApi(21)
    public static final class CompareAspectRatiosByDistanceToTargetRatio implements Comparator<Rational> {
        private Rational mTargetRatio;

        public CompareAspectRatiosByDistanceToTargetRatio(Rational rational) {
            this.mTargetRatio = rational;
        }

        @Override // java.util.Comparator
        public int compare(Rational rational, Rational rational2) {
            if (rational.equals(rational2)) {
                return 0;
            }
            return (int) Math.signum(Float.valueOf(Math.abs(rational.floatValue() - this.mTargetRatio.floatValue())).floatValue() - Float.valueOf(Math.abs(rational2.floatValue() - this.mTargetRatio.floatValue())).floatValue());
        }
    }

    public SupportedSurfaceCombination(@NonNull Context context, @NonNull String str, @NonNull CameraManagerCompat cameraManagerCompat, @NonNull CamcorderProfileHelper camcorderProfileHelper) throws CameraUnavailableException {
        String str2 = (String) Preconditions.checkNotNull(str);
        this.mCameraId = str2;
        this.mCamcorderProfileHelper = (CamcorderProfileHelper) Preconditions.checkNotNull(camcorderProfileHelper);
        this.mExcludedSupportedSizesContainer = new ExcludedSupportedSizesContainer(str);
        this.mExtraSupportedSurfaceCombinationsContainer = new ExtraSupportedSurfaceCombinationsContainer();
        this.mDisplayInfoManager = DisplayInfoManager.getInstance(context);
        try {
            CameraCharacteristicsCompat cameraCharacteristicsCompat = cameraManagerCompat.getCameraCharacteristicsCompat(str2);
            this.mCharacteristics = cameraCharacteristicsCompat;
            Integer num = (Integer) cameraCharacteristicsCompat.get(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL);
            this.mHardwareLevel = num != null ? num.intValue() : 2;
            this.mIsSensorLandscapeResolution = isSensorLandscapeResolution();
            generateSupportedCombinationList();
            generateSurfaceSizeDefinition();
            checkCustomization();
        } catch (CameraAccessExceptionCompat e10) {
            throw CameraUnavailableExceptionHelper.createFrom(e10);
        }
    }

    private void checkCustomization() {
    }

    @NonNull
    private Size[] doGetAllOutputSizesByFormat(int r42) {
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) this.mCharacteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
        if (streamConfigurationMap == null) {
            throw new IllegalArgumentException("Can not retrieve SCALER_STREAM_CONFIGURATION_MAP");
        }
        Size[] outputSizes = (Build.VERSION.SDK_INT >= 23 || r42 != 34) ? streamConfigurationMap.getOutputSizes(r42) : streamConfigurationMap.getOutputSizes(SurfaceTexture.class);
        if (outputSizes == null) {
            throw new IllegalArgumentException(android.support.v4.media.a.d("Can not get supported output size for the format: ", r42));
        }
        Size[] sizeArrExcludeProblematicSizes = excludeProblematicSizes(outputSizes, r42);
        Arrays.sort(sizeArrExcludeProblematicSizes, new CompareSizesByArea(true));
        return sizeArrExcludeProblematicSizes;
    }

    @NonNull
    private Size[] excludeProblematicSizes(@NonNull Size[] sizeArr, int r32) {
        List<Size> listFetchExcludedSizes = fetchExcludedSizes(r32);
        ArrayList arrayList = new ArrayList(Arrays.asList(sizeArr));
        arrayList.removeAll(listFetchExcludedSizes);
        return (Size[]) arrayList.toArray(new Size[0]);
    }

    @NonNull
    private List<Size> fetchExcludedSizes(int r32) {
        List<Size> list = this.mExcludedSizeListCache.get(Integer.valueOf(r32));
        if (list != null) {
            return list;
        }
        List<Size> list2 = this.mExcludedSupportedSizesContainer.get(r32);
        this.mExcludedSizeListCache.put(Integer.valueOf(r32), list2);
        return list2;
    }

    private Size fetchMaxSize(int r32) {
        Size size = this.mMaxSizeCache.get(Integer.valueOf(r32));
        if (size != null) {
            return size;
        }
        Size maxOutputSizeByFormat = getMaxOutputSizeByFormat(r32);
        this.mMaxSizeCache.put(Integer.valueOf(r32), maxOutputSizeByFormat);
        return maxOutputSizeByFormat;
    }

    @Nullable
    private Size flipSizeByRotation(@Nullable Size size, int r32) {
        return (size == null || !isRotationNeeded(r32)) ? size : new Size(size.getHeight(), size.getWidth());
    }

    private void generateSupportedCombinationList() {
        this.mSurfaceCombinations.addAll(getLegacySupportedCombinationList());
        int r02 = this.mHardwareLevel;
        if (r02 == 0 || r02 == 1 || r02 == 3) {
            this.mSurfaceCombinations.addAll(getLimitedSupportedCombinationList());
        }
        int r03 = this.mHardwareLevel;
        if (r03 == 1 || r03 == 3) {
            this.mSurfaceCombinations.addAll(getFullSupportedCombinationList());
        }
        int[] r04 = (int[]) this.mCharacteristics.get(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES);
        if (r04 != null) {
            for (int r52 : r04) {
                if (r52 == 3) {
                    this.mIsRawSupported = true;
                } else if (r52 == 6) {
                    this.mIsBurstCaptureSupported = true;
                }
            }
        }
        if (this.mIsRawSupported) {
            this.mSurfaceCombinations.addAll(getRAWSupportedCombinationList());
        }
        if (this.mIsBurstCaptureSupported && this.mHardwareLevel == 0) {
            this.mSurfaceCombinations.addAll(getBurstSupportedCombinationList());
        }
        if (this.mHardwareLevel == 3) {
            this.mSurfaceCombinations.addAll(getLevel3SupportedCombinationList());
        }
        this.mSurfaceCombinations.addAll(this.mExtraSupportedSurfaceCombinationsContainer.get(this.mCameraId, this.mHardwareLevel));
    }

    private void generateSurfaceSizeDefinition() {
        this.mSurfaceSizeDefinition = SurfaceSizeDefinition.create(new Size(640, 480), this.mDisplayInfoManager.getPreviewSize(), getRecordSize());
    }

    @NonNull
    private Size[] getAllOutputSizesByFormat(int r32) {
        Size[] sizeArr = this.mOutputSizesCache.get(Integer.valueOf(r32));
        if (sizeArr != null) {
            return sizeArr;
        }
        Size[] sizeArrDoGetAllOutputSizesByFormat = doGetAllOutputSizesByFormat(r32);
        this.mOutputSizesCache.put(Integer.valueOf(r32), sizeArrDoGetAllOutputSizesByFormat);
        return sizeArrDoGetAllOutputSizesByFormat;
    }

    private List<List<Size>> getAllPossibleSizeArrangements(List<List<Size>> list) {
        Iterator<List<Size>> it = list.iterator();
        int size = 1;
        while (it.hasNext()) {
            size *= it.next().size();
        }
        if (size == 0) {
            throw new IllegalArgumentException("Failed to find supported resolutions.");
        }
        ArrayList arrayList = new ArrayList();
        for (int r42 = 0; r42 < size; r42++) {
            arrayList.add(new ArrayList());
        }
        int size2 = size / list.get(0).size();
        int r6 = size;
        for (int r52 = 0; r52 < list.size(); r52++) {
            List<Size> list2 = list.get(r52);
            for (int r82 = 0; r82 < size; r82++) {
                ((List) arrayList.get(r82)).add(list2.get((r82 % r6) / size2));
            }
            if (r52 < list.size() - 1) {
                r6 = size2;
                size2 /= list.get(r52 + 1).size();
            }
        }
        return arrayList;
    }

    private static int getArea(Size size) {
        return size.getHeight() * size.getWidth();
    }

    @NonNull
    private SurfaceConfig.ConfigType getConfigType(int r22) {
        return r22 == 35 ? SurfaceConfig.ConfigType.YUV : r22 == 256 ? SurfaceConfig.ConfigType.JPEG : r22 == 32 ? SurfaceConfig.ConfigType.RAW : SurfaceConfig.ConfigType.PRIV;
    }

    @Nullable
    private Size[] getCustomizedSupportSizesFromConfig(int r42, @NonNull ImageOutputConfig imageOutputConfig) {
        Size[] sizeArr = null;
        List<Pair<Integer, Size[]>> supportedResolutions = imageOutputConfig.getSupportedResolutions(null);
        if (supportedResolutions != null) {
            Iterator<Pair<Integer, Size[]>> it = supportedResolutions.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Pair<Integer, Size[]> next = it.next();
                if (((Integer) next.first).intValue() == r42) {
                    sizeArr = (Size[]) next.second;
                    break;
                }
            }
        }
        if (sizeArr == null) {
            return sizeArr;
        }
        Size[] sizeArrExcludeProblematicSizes = excludeProblematicSizes(sizeArr, r42);
        Arrays.sort(sizeArrExcludeProblematicSizes, new CompareSizesByArea(true));
        return sizeArrExcludeProblematicSizes;
    }

    @NonNull
    private Size getRecordSize() throws NumberFormatException {
        try {
            int r02 = Integer.parseInt(this.mCameraId);
            CamcorderProfile camcorderProfile = this.mCamcorderProfileHelper.hasProfile(r02, 1) ? this.mCamcorderProfileHelper.get(r02, 1) : null;
            return camcorderProfile != null ? new Size(camcorderProfile.videoFrameWidth, camcorderProfile.videoFrameHeight) : getRecordSizeByHasProfile(r02);
        } catch (NumberFormatException unused) {
            return getRecordSizeFromStreamConfigurationMap();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x000c A[PHI: r2
      0x000c: PHI (r2v6 int) = (r2v0 int), (r2v1 int), (r2v2 int), (r2v3 int), (r2v4 int), (r2v5 int) binds: [B:3:0x000a, B:6:0x001b, B:9:0x0026, B:12:0x0030, B:15:0x003a, B:18:0x0044] A[DONT_GENERATE, DONT_INLINE]] */
    @androidx.annotation.NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.util.Size getRecordSizeByHasProfile(int r4) {
        /*
            r3 = this;
            android.util.Size r0 = androidx.camera.camera2.internal.SupportedSurfaceCombination.QUALITY_480P_SIZE
            androidx.camera.camera2.internal.CamcorderProfileHelper r1 = r3.mCamcorderProfileHelper
            r2 = 10
            boolean r1 = r1.hasProfile(r4, r2)
            if (r1 == 0) goto L13
        Lc:
            androidx.camera.camera2.internal.CamcorderProfileHelper r1 = r3.mCamcorderProfileHelper
            android.media.CamcorderProfile r4 = r1.get(r4, r2)
            goto L48
        L13:
            androidx.camera.camera2.internal.CamcorderProfileHelper r1 = r3.mCamcorderProfileHelper
            r2 = 8
            boolean r1 = r1.hasProfile(r4, r2)
            if (r1 == 0) goto L1e
            goto Lc
        L1e:
            androidx.camera.camera2.internal.CamcorderProfileHelper r1 = r3.mCamcorderProfileHelper
            r2 = 12
            boolean r1 = r1.hasProfile(r4, r2)
            if (r1 == 0) goto L29
            goto Lc
        L29:
            androidx.camera.camera2.internal.CamcorderProfileHelper r1 = r3.mCamcorderProfileHelper
            r2 = 6
            boolean r1 = r1.hasProfile(r4, r2)
            if (r1 == 0) goto L33
            goto Lc
        L33:
            androidx.camera.camera2.internal.CamcorderProfileHelper r1 = r3.mCamcorderProfileHelper
            r2 = 5
            boolean r1 = r1.hasProfile(r4, r2)
            if (r1 == 0) goto L3d
            goto Lc
        L3d:
            androidx.camera.camera2.internal.CamcorderProfileHelper r1 = r3.mCamcorderProfileHelper
            r2 = 4
            boolean r1 = r1.hasProfile(r4, r2)
            if (r1 == 0) goto L47
            goto Lc
        L47:
            r4 = 0
        L48:
            if (r4 == 0) goto L53
            android.util.Size r0 = new android.util.Size
            int r1 = r4.videoFrameWidth
            int r4 = r4.videoFrameHeight
            r0.<init>(r1, r4)
        L53:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.internal.SupportedSurfaceCombination.getRecordSizeByHasProfile(int):android.util.Size");
    }

    @NonNull
    private Size getRecordSizeFromStreamConfigurationMap() {
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) this.mCharacteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
        if (streamConfigurationMap == null) {
            throw new IllegalArgumentException("Can not retrieve SCALER_STREAM_CONFIGURATION_MAP");
        }
        Size[] outputSizes = streamConfigurationMap.getOutputSizes(MediaRecorder.class);
        if (outputSizes == null) {
            return QUALITY_480P_SIZE;
        }
        Arrays.sort(outputSizes, new CompareSizesByArea(true));
        for (Size size : outputSizes) {
            int width = size.getWidth();
            Size size2 = QUALITY_1080P_SIZE;
            if (width <= size2.getWidth() && size.getHeight() <= size2.getHeight()) {
                return size;
            }
        }
        return QUALITY_480P_SIZE;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.util.Rational getTargetAspectRatio(@androidx.annotation.NonNull androidx.camera.core.impl.ImageOutputConfig r5) {
        /*
            r4 = this;
            androidx.camera.camera2.internal.compat.workaround.TargetAspectRatio r0 = new androidx.camera.camera2.internal.compat.workaround.TargetAspectRatio
            r0.<init>()
            java.lang.String r1 = r4.mCameraId
            androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat r2 = r4.mCharacteristics
            int r0 = r0.get(r1, r2)
            if (r0 == 0) goto L7b
            r1 = 1
            if (r0 == r1) goto L71
            r2 = 2
            if (r0 == r2) goto L5d
            r2 = 3
            r3 = 0
            if (r0 == r2) goto L1b
            goto L85
        L1b:
            android.util.Size r0 = r4.getTargetSize(r5)
            boolean r2 = r5.hasTargetAspectRatio()
            if (r2 == 0) goto L4d
            int r5 = r5.getTargetAspectRatio()
            if (r5 == 0) goto L46
            if (r5 == r1) goto L41
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Undefined target aspect ratio: "
            r0.<init>(r1)
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            java.lang.String r0 = "SupportedSurfaceCombination"
            androidx.camera.core.Logger.e(r0, r5)
            goto L85
        L41:
            boolean r5 = r4.mIsSensorLandscapeResolution
            if (r5 == 0) goto L78
            goto L75
        L46:
            boolean r5 = r4.mIsSensorLandscapeResolution
            if (r5 == 0) goto L82
            goto L7f
        L4b:
            r3 = r5
            goto L85
        L4d:
            if (r0 == 0) goto L85
            android.util.Rational r3 = new android.util.Rational
            int r5 = r0.getWidth()
            int r0 = r0.getHeight()
            r3.<init>(r5, r0)
            goto L85
        L5d:
            r5 = 256(0x100, float:3.59E-43)
            android.util.Size r5 = r4.fetchMaxSize(r5)
            android.util.Rational r3 = new android.util.Rational
            int r0 = r5.getWidth()
            int r5 = r5.getHeight()
            r3.<init>(r0, r5)
            goto L85
        L71:
            boolean r5 = r4.mIsSensorLandscapeResolution
            if (r5 == 0) goto L78
        L75:
            android.util.Rational r5 = androidx.camera.camera2.internal.SupportedSurfaceCombination.ASPECT_RATIO_16_9
            goto L4b
        L78:
            android.util.Rational r5 = androidx.camera.camera2.internal.SupportedSurfaceCombination.ASPECT_RATIO_9_16
            goto L4b
        L7b:
            boolean r5 = r4.mIsSensorLandscapeResolution
            if (r5 == 0) goto L82
        L7f:
            android.util.Rational r5 = androidx.camera.camera2.internal.SupportedSurfaceCombination.ASPECT_RATIO_4_3
            goto L4b
        L82:
            android.util.Rational r5 = androidx.camera.camera2.internal.SupportedSurfaceCombination.ASPECT_RATIO_3_4
            goto L4b
        L85:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.internal.SupportedSurfaceCombination.getTargetAspectRatio(androidx.camera.core.impl.ImageOutputConfig):android.util.Rational");
    }

    @Nullable
    private Size getTargetSize(@NonNull ImageOutputConfig imageOutputConfig) {
        return flipSizeByRotation(imageOutputConfig.getTargetResolution(null), imageOutputConfig.getTargetRotation(0));
    }

    private List<Integer> getUseCasesPriorityOrder(List<UseCaseConfig<?>> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<UseCaseConfig<?>> it = list.iterator();
        while (it.hasNext()) {
            int surfaceOccupancyPriority = it.next().getSurfaceOccupancyPriority(0);
            if (!arrayList2.contains(Integer.valueOf(surfaceOccupancyPriority))) {
                arrayList2.add(Integer.valueOf(surfaceOccupancyPriority));
            }
        }
        Collections.sort(arrayList2);
        Collections.reverse(arrayList2);
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            int r22 = ((Integer) it2.next()).intValue();
            for (UseCaseConfig<?> useCaseConfig : list) {
                if (r22 == useCaseConfig.getSurfaceOccupancyPriority(0)) {
                    arrayList.add(Integer.valueOf(list.indexOf(useCaseConfig)));
                }
            }
        }
        return arrayList;
    }

    private Map<Rational, List<Size>> groupSizesByAspectRatio(List<Size> list) {
        HashMap map = new HashMap();
        map.put(ASPECT_RATIO_4_3, new ArrayList());
        map.put(ASPECT_RATIO_16_9, new ArrayList());
        for (Size size : list) {
            Rational rational = null;
            for (Rational rational2 : map.keySet()) {
                if (hasMatchingAspectRatio(size, rational2)) {
                    List list2 = (List) map.get(rational2);
                    if (!list2.contains(size)) {
                        list2.add(size);
                    }
                    rational = rational2;
                }
            }
            if (rational == null) {
                map.put(new Rational(size.getWidth(), size.getHeight()), new ArrayList(Collections.singleton(size)));
            }
        }
        return map;
    }

    public static boolean hasMatchingAspectRatio(Size size, Rational rational) {
        if (rational == null) {
            return false;
        }
        if (rational.equals(new Rational(size.getWidth(), size.getHeight()))) {
            return true;
        }
        if (getArea(size) >= getArea(DEFAULT_SIZE)) {
            return isPossibleMod16FromAspectRatio(size, rational);
        }
        return false;
    }

    private static boolean isPossibleMod16FromAspectRatio(Size size, Rational rational) {
        int width = size.getWidth();
        int height = size.getHeight();
        Rational rational2 = new Rational(rational.getDenominator(), rational.getNumerator());
        int r22 = width % 16;
        if (r22 == 0 && height % 16 == 0) {
            return ratioIntersectsMod16Segment(Math.max(0, height + (-16)), width, rational) || ratioIntersectsMod16Segment(Math.max(0, width + (-16)), height, rational2);
        }
        if (r22 == 0) {
            return ratioIntersectsMod16Segment(height, width, rational);
        }
        if (height % 16 == 0) {
            return ratioIntersectsMod16Segment(width, height, rational2);
        }
        return false;
    }

    private boolean isRotationNeeded(int r52) {
        Integer num = (Integer) this.mCharacteristics.get(CameraCharacteristics.SENSOR_ORIENTATION);
        Preconditions.checkNotNull(num, "Camera HAL in bad state, unable to retrieve the SENSOR_ORIENTATION");
        int r53 = CameraOrientationUtil.surfaceRotationToDegrees(r52);
        Integer num2 = (Integer) this.mCharacteristics.get(CameraCharacteristics.LENS_FACING);
        Preconditions.checkNotNull(num2, "Camera HAL in bad state, unable to retrieve the LENS_FACING");
        int relativeImageRotation = CameraOrientationUtil.getRelativeImageRotation(r53, num.intValue(), 1 == num2.intValue());
        return relativeImageRotation == 90 || relativeImageRotation == 270;
    }

    private boolean isSensorLandscapeResolution() {
        Size size = (Size) this.mCharacteristics.get(CameraCharacteristics.SENSOR_INFO_PIXEL_ARRAY_SIZE);
        return size == null || size.getWidth() >= size.getHeight();
    }

    private static boolean ratioIntersectsMod16Segment(int r72, int r82, Rational rational) {
        Preconditions.checkArgument(r82 % 16 == 0);
        double numerator = (rational.getNumerator() * r72) / rational.getDenominator();
        return numerator > ((double) Math.max(0, r82 + (-16))) && numerator < ((double) (r82 + 16));
    }

    private void refreshPreviewSize() {
        this.mDisplayInfoManager.refresh();
        if (this.mSurfaceSizeDefinition == null) {
            generateSurfaceSizeDefinition();
        } else {
            this.mSurfaceSizeDefinition = SurfaceSizeDefinition.create(this.mSurfaceSizeDefinition.getAnalysisSize(), this.mDisplayInfoManager.getPreviewSize(), this.mSurfaceSizeDefinition.getRecordSize());
        }
    }

    private void removeSupportedSizesByTargetSize(List<Size> list, Size size) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        int r22 = -1;
        for (int r12 = 0; r12 < list.size(); r12++) {
            Size size2 = list.get(r12);
            if (size2.getWidth() < size.getWidth() || size2.getHeight() < size.getHeight()) {
                break;
            }
            if (r22 >= 0) {
                arrayList.add(list.get(r22));
            }
            r22 = r12;
        }
        list.removeAll(arrayList);
    }

    public boolean checkSupported(List<SurfaceConfig> list) {
        Iterator<SurfaceCombination> it = this.mSurfaceCombinations.iterator();
        boolean zIsSupported = false;
        while (it.hasNext() && !(zIsSupported = it.next().isSupported(list))) {
        }
        return zIsSupported;
    }

    public List<SurfaceCombination> getBurstSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.MAXIMUM;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.create(configType, configSize2));
        arrayList.add(surfaceCombination);
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.YUV;
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.create(configType2, configSize2));
        arrayList.add(surfaceCombination2);
        SurfaceCombination surfaceCombination3 = new SurfaceCombination();
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.create(configType2, configSize));
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.create(configType2, configSize2));
        arrayList.add(surfaceCombination3);
        return arrayList;
    }

    public String getCameraId() {
        return this.mCameraId;
    }

    public List<SurfaceCombination> getFullSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.MAXIMUM;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.create(configType, configSize2));
        arrayList.add(surfaceCombination);
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.YUV;
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.create(configType2, configSize2));
        arrayList.add(surfaceCombination2);
        SurfaceCombination surfaceCombination3 = new SurfaceCombination();
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.create(configType2, configSize));
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.create(configType2, configSize2));
        arrayList.add(surfaceCombination3);
        SurfaceCombination surfaceCombination4 = new SurfaceCombination();
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.create(SurfaceConfig.ConfigType.JPEG, configSize2));
        arrayList.add(surfaceCombination4);
        SurfaceCombination surfaceCombination5 = new SurfaceCombination();
        SurfaceConfig.ConfigSize configSize3 = SurfaceConfig.ConfigSize.ANALYSIS;
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.create(configType2, configSize3));
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.create(configType2, configSize2));
        arrayList.add(surfaceCombination5);
        SurfaceCombination surfaceCombination6 = new SurfaceCombination();
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.create(configType2, configSize3));
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.create(configType2, configSize));
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.create(configType2, configSize2));
        arrayList.add(surfaceCombination6);
        return arrayList;
    }

    public List<SurfaceCombination> getLegacySupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.MAXIMUM;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        arrayList.add(surfaceCombination);
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.JPEG;
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.create(configType2, configSize));
        arrayList.add(surfaceCombination2);
        SurfaceCombination surfaceCombination3 = new SurfaceCombination();
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.YUV;
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.create(configType3, configSize));
        arrayList.add(surfaceCombination3);
        SurfaceCombination surfaceCombination4 = new SurfaceCombination();
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.create(configType, configSize2));
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.create(configType2, configSize));
        arrayList.add(surfaceCombination4);
        SurfaceCombination surfaceCombination5 = new SurfaceCombination();
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.create(configType3, configSize2));
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.create(configType2, configSize));
        arrayList.add(surfaceCombination5);
        SurfaceCombination surfaceCombination6 = new SurfaceCombination();
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.create(configType, configSize2));
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.create(configType, configSize2));
        arrayList.add(surfaceCombination6);
        SurfaceCombination surfaceCombination7 = new SurfaceCombination();
        surfaceCombination7.addSurfaceConfig(SurfaceConfig.create(configType, configSize2));
        surfaceCombination7.addSurfaceConfig(SurfaceConfig.create(configType3, configSize2));
        arrayList.add(surfaceCombination7);
        SurfaceCombination surfaceCombination8 = new SurfaceCombination();
        surfaceCombination8.addSurfaceConfig(SurfaceConfig.create(configType, configSize2));
        surfaceCombination8.addSurfaceConfig(SurfaceConfig.create(configType3, configSize2));
        surfaceCombination8.addSurfaceConfig(SurfaceConfig.create(configType2, configSize));
        arrayList.add(surfaceCombination8);
        return arrayList;
    }

    public List<SurfaceCombination> getLevel3SupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.ANALYSIS;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.create(configType, configSize2));
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.YUV;
        SurfaceConfig.ConfigSize configSize3 = SurfaceConfig.ConfigSize.MAXIMUM;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.create(configType2, configSize3));
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.RAW;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.create(configType3, configSize3));
        arrayList.add(surfaceCombination);
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.create(configType, configSize2));
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.create(SurfaceConfig.ConfigType.JPEG, configSize3));
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.create(configType3, configSize3));
        arrayList.add(surfaceCombination2);
        return arrayList;
    }

    public List<SurfaceCombination> getLimitedSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.RECORD;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.create(configType, configSize2));
        arrayList.add(surfaceCombination);
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.YUV;
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.create(configType2, configSize2));
        arrayList.add(surfaceCombination2);
        SurfaceCombination surfaceCombination3 = new SurfaceCombination();
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.create(configType2, configSize));
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.create(configType2, configSize2));
        arrayList.add(surfaceCombination3);
        SurfaceCombination surfaceCombination4 = new SurfaceCombination();
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.create(configType, configSize2));
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.JPEG;
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.create(configType3, configSize2));
        arrayList.add(surfaceCombination4);
        SurfaceCombination surfaceCombination5 = new SurfaceCombination();
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.create(configType2, configSize2));
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.create(configType3, configSize2));
        arrayList.add(surfaceCombination5);
        SurfaceCombination surfaceCombination6 = new SurfaceCombination();
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.create(configType2, configSize));
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.create(configType2, configSize));
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.create(configType3, SurfaceConfig.ConfigSize.MAXIMUM));
        arrayList.add(surfaceCombination6);
        return arrayList;
    }

    public Size getMaxOutputSizeByFormat(int r22) {
        return (Size) Collections.max(Arrays.asList(getAllOutputSizesByFormat(r22)), new CompareSizesByArea());
    }

    public List<SurfaceCombination> getRAWSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.RAW;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.MAXIMUM;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        arrayList.add(surfaceCombination);
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.create(configType2, configSize2));
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        arrayList.add(surfaceCombination2);
        SurfaceCombination surfaceCombination3 = new SurfaceCombination();
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.YUV;
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.create(configType3, configSize2));
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        arrayList.add(surfaceCombination3);
        SurfaceCombination surfaceCombination4 = new SurfaceCombination();
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.create(configType2, configSize2));
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.create(configType2, configSize2));
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        arrayList.add(surfaceCombination4);
        SurfaceCombination surfaceCombination5 = new SurfaceCombination();
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.create(configType2, configSize2));
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.create(configType3, configSize2));
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        arrayList.add(surfaceCombination5);
        SurfaceCombination surfaceCombination6 = new SurfaceCombination();
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.create(configType3, configSize2));
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.create(configType3, configSize2));
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        arrayList.add(surfaceCombination6);
        SurfaceCombination surfaceCombination7 = new SurfaceCombination();
        surfaceCombination7.addSurfaceConfig(SurfaceConfig.create(configType2, configSize2));
        SurfaceConfig.ConfigType configType4 = SurfaceConfig.ConfigType.JPEG;
        surfaceCombination7.addSurfaceConfig(SurfaceConfig.create(configType4, configSize));
        surfaceCombination7.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        arrayList.add(surfaceCombination7);
        SurfaceCombination surfaceCombination8 = new SurfaceCombination();
        surfaceCombination8.addSurfaceConfig(SurfaceConfig.create(configType3, configSize2));
        surfaceCombination8.addSurfaceConfig(SurfaceConfig.create(configType4, configSize));
        surfaceCombination8.addSurfaceConfig(SurfaceConfig.create(configType, configSize));
        arrayList.add(surfaceCombination8);
        return arrayList;
    }

    @NonNull
    public Map<UseCaseConfig<?>, Size> getSuggestedResolutions(@NonNull List<SurfaceConfig> list, @NonNull List<UseCaseConfig<?>> list2) {
        HashMap map;
        refreshPreviewSize();
        ArrayList arrayList = new ArrayList(list);
        Iterator<UseCaseConfig<?>> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(transformSurfaceConfig(it.next().getInputFormat(), new Size(640, 480)));
        }
        if (!checkSupported(arrayList)) {
            throw new IllegalArgumentException("No supported surface combination is found for camera device - Id : " + this.mCameraId + ".  May be attempting to bind too many use cases. Existing surfaces: " + list + " New configs: " + list2);
        }
        List<Integer> useCasesPriorityOrder = getUseCasesPriorityOrder(list2);
        ArrayList arrayList2 = new ArrayList();
        Iterator<Integer> it2 = useCasesPriorityOrder.iterator();
        while (it2.hasNext()) {
            arrayList2.add(getSupportedOutputSizes(list2.get(it2.next().intValue())));
        }
        Iterator<List<Size>> it3 = getAllPossibleSizeArrangements(arrayList2).iterator();
        while (true) {
            if (!it3.hasNext()) {
                map = null;
                break;
            }
            List<Size> next = it3.next();
            ArrayList arrayList3 = new ArrayList(list);
            for (int r6 = 0; r6 < next.size(); r6++) {
                arrayList3.add(transformSurfaceConfig(list2.get(useCasesPriorityOrder.get(r6).intValue()).getInputFormat(), next.get(r6)));
            }
            if (checkSupported(arrayList3)) {
                map = new HashMap();
                for (UseCaseConfig<?> useCaseConfig : list2) {
                    map.put(useCaseConfig, next.get(useCasesPriorityOrder.indexOf(Integer.valueOf(list2.indexOf(useCaseConfig)))));
                }
            }
        }
        if (map != null) {
            return map;
        }
        throw new IllegalArgumentException("No supported surface combination is found for camera device - Id : " + this.mCameraId + " and Hardware level: " + this.mHardwareLevel + ". May be the specified resolution is too large and not supported. Existing surfaces: " + list + " New configs: " + list2);
    }

    @NonNull
    @VisibleForTesting
    public List<Size> getSupportedOutputSizes(@NonNull UseCaseConfig<?> useCaseConfig) {
        int inputFormat = useCaseConfig.getInputFormat();
        ImageOutputConfig imageOutputConfig = (ImageOutputConfig) useCaseConfig;
        Size[] customizedSupportSizesFromConfig = getCustomizedSupportSizesFromConfig(inputFormat, imageOutputConfig);
        if (customizedSupportSizesFromConfig == null) {
            customizedSupportSizesFromConfig = getAllOutputSizesByFormat(inputFormat);
        }
        ArrayList arrayList = new ArrayList();
        Size maxResolution = imageOutputConfig.getMaxResolution(null);
        Size maxOutputSizeByFormat = getMaxOutputSizeByFormat(inputFormat);
        if (maxResolution == null || getArea(maxOutputSizeByFormat) < getArea(maxResolution)) {
            maxResolution = maxOutputSizeByFormat;
        }
        Arrays.sort(customizedSupportSizesFromConfig, new CompareSizesByArea(true));
        Size targetSize = getTargetSize(imageOutputConfig);
        Size size = DEFAULT_SIZE;
        int area = getArea(size);
        if (getArea(maxResolution) < area) {
            size = ZERO_SIZE;
        } else if (targetSize != null && getArea(targetSize) < area) {
            size = targetSize;
        }
        for (Size size2 : customizedSupportSizesFromConfig) {
            if (getArea(size2) <= getArea(maxResolution) && getArea(size2) >= getArea(size) && !arrayList.contains(size2)) {
                arrayList.add(size2);
            }
        }
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException(android.support.v4.media.a.d("Can not get supported output size under supported maximum for the format: ", inputFormat));
        }
        Rational targetAspectRatio = getTargetAspectRatio(imageOutputConfig);
        if (targetSize == null) {
            targetSize = imageOutputConfig.getDefaultResolution(null);
        }
        ArrayList arrayList2 = new ArrayList();
        new HashMap();
        if (targetAspectRatio == null) {
            arrayList2.addAll(arrayList);
            if (targetSize != null) {
                removeSupportedSizesByTargetSize(arrayList2, targetSize);
            }
        } else {
            Map<Rational, List<Size>> mapGroupSizesByAspectRatio = groupSizesByAspectRatio(arrayList);
            if (targetSize != null) {
                Iterator<Rational> it = mapGroupSizesByAspectRatio.keySet().iterator();
                while (it.hasNext()) {
                    removeSupportedSizesByTargetSize(mapGroupSizesByAspectRatio.get(it.next()), targetSize);
                }
            }
            ArrayList arrayList3 = new ArrayList(mapGroupSizesByAspectRatio.keySet());
            Collections.sort(arrayList3, new CompareAspectRatiosByDistanceToTargetRatio(targetAspectRatio));
            Iterator it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                for (Size size3 : mapGroupSizesByAspectRatio.get((Rational) it2.next())) {
                    if (!arrayList2.contains(size3)) {
                        arrayList2.add(size3);
                    }
                }
            }
        }
        return this.mResolutionCorrector.insertOrPrioritize(getConfigType(useCaseConfig.getInputFormat()), arrayList2);
    }

    @VisibleForTesting
    public SurfaceSizeDefinition getSurfaceSizeDefinition() {
        return this.mSurfaceSizeDefinition;
    }

    public boolean isBurstCaptureSupported() {
        return this.mIsBurstCaptureSupported;
    }

    public boolean isRawSupported() {
        return this.mIsRawSupported;
    }

    public SurfaceConfig transformSurfaceConfig(int r6, Size size) {
        SurfaceConfig.ConfigType configType = getConfigType(r6);
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.NOT_SUPPORT;
        Size sizeFetchMaxSize = fetchMaxSize(r6);
        if (size.getHeight() * size.getWidth() <= this.mSurfaceSizeDefinition.getAnalysisSize().getHeight() * this.mSurfaceSizeDefinition.getAnalysisSize().getWidth()) {
            configSize = SurfaceConfig.ConfigSize.ANALYSIS;
        } else {
            if (size.getHeight() * size.getWidth() <= this.mSurfaceSizeDefinition.getPreviewSize().getHeight() * this.mSurfaceSizeDefinition.getPreviewSize().getWidth()) {
                configSize = SurfaceConfig.ConfigSize.PREVIEW;
            } else {
                if (size.getHeight() * size.getWidth() <= this.mSurfaceSizeDefinition.getRecordSize().getHeight() * this.mSurfaceSizeDefinition.getRecordSize().getWidth()) {
                    configSize = SurfaceConfig.ConfigSize.RECORD;
                } else {
                    if (size.getHeight() * size.getWidth() <= sizeFetchMaxSize.getHeight() * sizeFetchMaxSize.getWidth()) {
                        configSize = SurfaceConfig.ConfigSize.MAXIMUM;
                    }
                }
            }
        }
        return SurfaceConfig.create(configType, configSize);
    }
}
