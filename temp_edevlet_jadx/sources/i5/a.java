package i5;

import android.annotation.SuppressLint;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;

/* loaded from: classes.dex */
public final class a {
    @SuppressLint({"LogTagMismatch"})
    public static void a(@RecentlyNonNull Exception exc, @RecentlyNonNull String str, @RecentlyNonNull Object... objArr) {
        if (Log.isLoggable("Vision", 6)) {
            boolean zIsLoggable = Log.isLoggable("Vision", 3);
            String str2 = String.format(str, objArr);
            if (zIsLoggable) {
                Log.e("Vision", str2, exc);
                return;
            }
            String strValueOf = String.valueOf(exc);
            StringBuilder sb2 = new StringBuilder(strValueOf.length() + String.valueOf(str2).length() + 2);
            sb2.append(str2);
            sb2.append(": ");
            sb2.append(strValueOf);
            Log.e("Vision", sb2.toString());
        }
    }
}
