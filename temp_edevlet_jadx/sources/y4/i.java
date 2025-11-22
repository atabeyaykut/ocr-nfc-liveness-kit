package y4;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import r3.r;

/* loaded from: classes.dex */
public final class i {
    @Nullable
    public static Parcelable a(@Nullable Bundle bundle, String str) {
        ClassLoader classLoader = i.class.getClassLoader();
        r.i(classLoader);
        bundle.setClassLoader(classLoader);
        Bundle bundle2 = bundle.getBundle("map_state");
        if (bundle2 == null) {
            return null;
        }
        bundle2.setClassLoader(classLoader);
        return bundle2.getParcelable(str);
    }

    public static void b(@Nullable Bundle bundle, @Nullable Bundle bundle2) {
        if (bundle == null || bundle2 == null) {
            return;
        }
        Parcelable parcelableA = a(bundle, "MapOptions");
        if (parcelableA != null) {
            c(bundle2, "MapOptions", parcelableA);
        }
        Parcelable parcelableA2 = a(bundle, "StreetViewPanoramaOptions");
        if (parcelableA2 != null) {
            c(bundle2, "StreetViewPanoramaOptions", parcelableA2);
        }
        Parcelable parcelableA3 = a(bundle, "camera");
        if (parcelableA3 != null) {
            c(bundle2, "camera", parcelableA3);
        }
        if (bundle.containsKey("position")) {
            bundle2.putString("position", bundle.getString("position"));
        }
        if (bundle.containsKey("com.google.android.wearable.compat.extra.LOWBIT_AMBIENT")) {
            bundle2.putBoolean("com.google.android.wearable.compat.extra.LOWBIT_AMBIENT", bundle.getBoolean("com.google.android.wearable.compat.extra.LOWBIT_AMBIENT", false));
        }
    }

    public static void c(Bundle bundle, String str, @Nullable Parcelable parcelable) {
        ClassLoader classLoader = i.class.getClassLoader();
        r.i(classLoader);
        bundle.setClassLoader(classLoader);
        Bundle bundle2 = bundle.getBundle("map_state");
        if (bundle2 == null) {
            bundle2 = new Bundle();
        }
        bundle2.setClassLoader(classLoader);
        bundle2.putParcelable(str, parcelable);
        bundle.putBundle("map_state", bundle2);
    }
}
