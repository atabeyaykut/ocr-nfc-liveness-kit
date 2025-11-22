package androidx.camera.extensions;

import android.content.Context;
import android.util.Range;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.annotation.RequiresApi;
import androidx.camera.camera2.interop.ExperimentalCamera2Interop;
import androidx.camera.core.CameraFilter;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraProvider;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.CameraConfigProvider;
import androidx.camera.core.impl.ExtendedCameraConfigProviderStore;
import androidx.camera.core.impl.Identifier;
import androidx.camera.core.impl.SessionProcessor;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.extensions.ExtensionsConfig;
import androidx.camera.extensions.internal.AdvancedVendorExtender;
import androidx.camera.extensions.internal.BasicVendorExtender;
import androidx.camera.extensions.internal.ExtensionVersion;
import androidx.camera.extensions.internal.ExtensionsUseCaseConfigFactory;
import androidx.camera.extensions.internal.VendorExtender;
import androidx.camera.extensions.internal.Version;
import java.util.Iterator;
import java.util.List;

@RequiresApi(21)
/* loaded from: classes.dex */
final class ExtensionsInfo {
    private static final String EXTENDED_CAMERA_CONFIG_PROVIDER_ID_PREFIX = ":camera:camera-extensions-";
    private final CameraProvider mCameraProvider;

    public ExtensionsInfo(@NonNull CameraProvider cameraProvider) {
        this.mCameraProvider = cameraProvider;
    }

    private static String getExtendedCameraConfigProviderId(int r12) {
        if (r12 == 0) {
            return ":camera:camera-extensions-EXTENSION_MODE_NONE";
        }
        if (r12 == 1) {
            return ":camera:camera-extensions-EXTENSION_MODE_BOKEH";
        }
        if (r12 == 2) {
            return ":camera:camera-extensions-EXTENSION_MODE_HDR";
        }
        if (r12 == 3) {
            return ":camera:camera-extensions-EXTENSION_MODE_NIGHT";
        }
        if (r12 == 4) {
            return ":camera:camera-extensions-EXTENSION_MODE_FACE_RETOUCH";
        }
        if (r12 == 5) {
            return ":camera:camera-extensions-EXTENSION_MODE_AUTO";
        }
        throw new IllegalArgumentException("Invalid extension mode!");
    }

    private static CameraFilter getFilter(int r22) {
        return new ExtensionCameraFilter(getExtendedCameraConfigProviderId(r22), getVendorExtender(r22));
    }

    @NonNull
    private static VendorExtender getVendorExtender(int r12) {
        return isAdvancedExtenderSupported() ? new AdvancedVendorExtender(r12) : new BasicVendorExtender(r12);
    }

    private static void injectExtensionCameraConfig(final int r32) {
        final Identifier identifierCreate = Identifier.create(getExtendedCameraConfigProviderId(r32));
        if (ExtendedCameraConfigProviderStore.getConfigProvider(identifierCreate) == CameraConfigProvider.EMPTY) {
            ExtendedCameraConfigProviderStore.addConfig(identifierCreate, new CameraConfigProvider() { // from class: androidx.camera.extensions.a
                @Override // androidx.camera.core.impl.CameraConfigProvider
                public final CameraConfig getConfig(CameraInfo cameraInfo, Context context) {
                    return ExtensionsInfo.lambda$injectExtensionCameraConfig$0(r32, identifierCreate, cameraInfo, context);
                }
            });
        }
    }

    private static boolean isAdvancedExtenderSupported() {
        if (ExtensionVersion.getRuntimeVersion().compareTo(Version.VERSION_1_2) < 0) {
            return false;
        }
        return ExtensionVersion.isAdvancedExtenderSupported();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ CameraConfig lambda$injectExtensionCameraConfig$0(int r22, Identifier identifier, CameraInfo cameraInfo, Context context) {
        VendorExtender vendorExtender = getVendorExtender(r22);
        vendorExtender.init(cameraInfo);
        ExtensionsConfig.Builder useCaseCombinationRequiredRule = new ExtensionsConfig.Builder().setExtensionMode(r22).setUseCaseConfigFactory((UseCaseConfigFactory) new ExtensionsUseCaseConfigFactory(r22, vendorExtender, context)).setCompatibilityId(identifier).setZslDisabled(true).setUseCaseCombinationRequiredRule(1);
        SessionProcessor sessionProcessorCreateSessionProcessor = vendorExtender.createSessionProcessor(context);
        if (sessionProcessorCreateSessionProcessor != null) {
            useCaseCombinationRequiredRule.setSessionProcessor(sessionProcessorCreateSessionProcessor);
        }
        return useCaseCombinationRequiredRule.build();
    }

    @Nullable
    @OptIn(markerClass = {ExperimentalCamera2Interop.class})
    public Range<Long> getEstimatedCaptureLatencyRange(@NonNull CameraSelector cameraSelector, int r42, @Nullable Size size) {
        List<CameraInfo> listFilter = CameraSelector.Builder.fromSelector(cameraSelector).addCameraFilter(getFilter(r42)).build().filter(this.mCameraProvider.getAvailableCameraInfos());
        if (listFilter.isEmpty()) {
            throw new IllegalArgumentException("No cameras found for given CameraSelector");
        }
        CameraInfo cameraInfo = listFilter.get(0);
        if (ExtensionVersion.getRuntimeVersion().compareTo(Version.VERSION_1_2) < 0) {
            return null;
        }
        try {
            VendorExtender vendorExtender = getVendorExtender(r42);
            vendorExtender.init(cameraInfo);
            return vendorExtender.getEstimatedCaptureLatencyRange(size);
        } catch (NoSuchMethodError unused) {
            return null;
        }
    }

    @NonNull
    public CameraSelector getExtensionCameraSelectorAndInjectCameraConfig(@NonNull CameraSelector cameraSelector, int r42) {
        if (!isExtensionAvailable(cameraSelector, r42)) {
            throw new IllegalArgumentException("No camera can be found to support the specified extensions mode! isExtensionAvailable should be checked first before calling getExtensionEnabledCameraSelector.");
        }
        Iterator<CameraFilter> it = cameraSelector.getCameraFilterSet().iterator();
        while (it.hasNext()) {
            if (it.next() instanceof ExtensionCameraFilter) {
                throw new IllegalArgumentException("An extension is already applied to the base CameraSelector.");
            }
        }
        injectExtensionCameraConfig(r42);
        CameraSelector.Builder builderFromSelector = CameraSelector.Builder.fromSelector(cameraSelector);
        builderFromSelector.addCameraFilter(getFilter(r42));
        return builderFromSelector.build();
    }

    public boolean isExtensionAvailable(@NonNull CameraSelector cameraSelector, int r22) {
        CameraSelector.Builder.fromSelector(cameraSelector).addCameraFilter(getFilter(r22));
        return !r1.build().filter(this.mCameraProvider.getAvailableCameraInfos()).isEmpty();
    }
}
