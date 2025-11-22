package androidx.camera.view;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes.dex */
final class FlashModeConverter {
    private FlashModeConverter() {
    }

    @NonNull
    public static String nameOf(int r22) {
        if (r22 == 0) {
            return "AUTO";
        }
        if (r22 == 1) {
            return "ON";
        }
        if (r22 == 2) {
            return "OFF";
        }
        throw new IllegalArgumentException(android.support.v4.media.a.d("Unknown flash mode ", r22));
    }

    public static int valueOf(@Nullable String str) {
        if (str == null) {
            throw new NullPointerException("name cannot be null");
        }
        switch (str) {
            case "ON":
                return 1;
            case "OFF":
                return 2;
            case "AUTO":
                return 0;
            default:
                throw new IllegalArgumentException("Unknown flash mode name ".concat(str));
        }
    }
}
