package androidx.camera.extensions.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.UseCaseConfigFactory;

@RequiresApi(21)
/* loaded from: classes.dex */
public final class ExtensionsUseCaseConfigFactory implements UseCaseConfigFactory {
    private final ImageCaptureConfigProvider mImageCaptureConfigProvider;
    private final PreviewConfigProvider mPreviewConfigProvider;

    /* renamed from: androidx.camera.extensions.internal.ExtensionsUseCaseConfigFactory$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$camera$core$impl$UseCaseConfigFactory$CaptureType;

        static {
            int[] r02 = new int[UseCaseConfigFactory.CaptureType.values().length];
            $SwitchMap$androidx$camera$core$impl$UseCaseConfigFactory$CaptureType = r02;
            try {
                r02[UseCaseConfigFactory.CaptureType.IMAGE_CAPTURE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$camera$core$impl$UseCaseConfigFactory$CaptureType[UseCaseConfigFactory.CaptureType.PREVIEW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$camera$core$impl$UseCaseConfigFactory$CaptureType[UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public ExtensionsUseCaseConfigFactory(int r22, @NonNull VendorExtender vendorExtender, @NonNull Context context) {
        this.mImageCaptureConfigProvider = new ImageCaptureConfigProvider(r22, vendorExtender, context);
        this.mPreviewConfigProvider = new PreviewConfigProvider(r22, vendorExtender, context);
    }

    @Override // androidx.camera.core.impl.UseCaseConfigFactory
    @Nullable
    public Config getConfig(@NonNull UseCaseConfigFactory.CaptureType captureType, int r22) {
        Config config;
        int r12 = AnonymousClass1.$SwitchMap$androidx$camera$core$impl$UseCaseConfigFactory$CaptureType[captureType.ordinal()];
        if (r12 == 1) {
            config = this.mImageCaptureConfigProvider.getConfig();
        } else {
            if (r12 != 2) {
                if (r12 != 3) {
                    return null;
                }
                throw new IllegalArgumentException("CameraX Extensions doesn't support VideoCapture!");
            }
            config = this.mPreviewConfigProvider.getConfig();
        }
        return OptionsBundle.from(MutableOptionsBundle.from(config));
    }
}
