package io.realm.log;

import android.util.Log;
import java.net.URISyntaxException;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class RealmLog {
    public static void a(int r22, URISyntaxException uRISyntaxException, String str, Object... objArr) {
        if (r22 < nativeGetLogLevel()) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        if (str != null && objArr.length > 0) {
            str = String.format(Locale.US, str, objArr);
        }
        if (uRISyntaxException != null) {
            sb2.append(Log.getStackTraceString(uRISyntaxException));
        }
        if (str != null) {
            if (uRISyntaxException != null) {
                sb2.append("\n");
            }
            sb2.append(str);
        }
        nativeLog(r22, "REALM_JAVA", uRISyntaxException, sb2.toString());
    }

    private static native int nativeGetLogLevel();

    private static native void nativeLog(int r02, String str, Throwable th2, String str2);
}
