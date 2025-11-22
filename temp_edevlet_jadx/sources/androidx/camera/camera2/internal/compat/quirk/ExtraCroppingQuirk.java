package androidx.camera.camera2.internal.compat.quirk;

import android.os.Build;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.camera.core.impl.Quirk;
import androidx.camera.core.impl.SurfaceConfig;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

@RequiresApi(21)
/* loaded from: classes.dex */
public class ExtraCroppingQuirk implements Quirk {
    private static final List<String> SAMSUNG_DISTORTION_MODELS = Arrays.asList("SM-T580", "SM-J710MN", "SM-A320FL", "SM-G570M", "SM-G610F", "SM-G610M");

    /* renamed from: androidx.camera.camera2.internal.compat.quirk.ExtraCroppingQuirk$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$camera$core$impl$SurfaceConfig$ConfigType;

        static {
            int[] r02 = new int[SurfaceConfig.ConfigType.values().length];
            $SwitchMap$androidx$camera$core$impl$SurfaceConfig$ConfigType = r02;
            try {
                r02[SurfaceConfig.ConfigType.PRIV.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$camera$core$impl$SurfaceConfig$ConfigType[SurfaceConfig.ConfigType.YUV.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$camera$core$impl$SurfaceConfig$ConfigType[SurfaceConfig.ConfigType.JPEG.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static boolean isSamsungDistortion() {
        return "samsung".equalsIgnoreCase(Build.BRAND) && SAMSUNG_DISTORTION_MODELS.contains(Build.MODEL.toUpperCase(Locale.US));
    }

    public static boolean load() {
        return isSamsungDistortion();
    }

    @Nullable
    public Size getVerifiedResolution(@NonNull SurfaceConfig.ConfigType configType) {
        if (!isSamsungDistortion()) {
            return null;
        }
        int r32 = AnonymousClass1.$SwitchMap$androidx$camera$core$impl$SurfaceConfig$ConfigType[configType.ordinal()];
        if (r32 == 1) {
            return new Size(1920, 1080);
        }
        if (r32 == 2) {
            return new Size(1280, 720);
        }
        if (r32 != 3) {
            return null;
        }
        return new Size(3264, 1836);
    }
}
