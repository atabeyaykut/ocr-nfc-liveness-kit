package w3;

import android.os.Build;
import androidx.annotation.ChecksSdkIntAtLeast;

/* loaded from: classes.dex */
public final class d {
    @ChecksSdkIntAtLeast(api = 26)
    public static boolean a() {
        return Build.VERSION.SDK_INT >= 26;
    }
}
