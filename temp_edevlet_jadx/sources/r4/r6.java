package r4;

import androidx.annotation.Nullable;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public final class r6 {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public static q6 f14243a;

    public static String a(String str, Object... objArr) {
        int length;
        int length2;
        int r42;
        String string;
        int r02 = 0;
        int r12 = 0;
        while (true) {
            length = objArr.length;
            if (r12 >= length) {
                break;
            }
            Object obj = objArr[r12];
            if (obj == null) {
                string = "null";
            } else {
                try {
                    string = obj.toString();
                } catch (Exception e10) {
                    String name = obj.getClass().getName();
                    String hexString = Integer.toHexString(System.identityHashCode(obj));
                    StringBuilder sb2 = new StringBuilder(name.length() + 1 + String.valueOf(hexString).length());
                    sb2.append(name);
                    sb2.append('@');
                    sb2.append(hexString);
                    String string2 = sb2.toString();
                    Logger logger = Logger.getLogger("com.google.common.base.Strings");
                    Level level = Level.WARNING;
                    String strValueOf = String.valueOf(string2);
                    logger.logp(level, "com.google.common.base.Strings", "lenientToString", strValueOf.length() != 0 ? "Exception during lenientFormat for ".concat(strValueOf) : new String("Exception during lenientFormat for "), (Throwable) e10);
                    String name2 = e10.getClass().getName();
                    StringBuilder sb3 = new StringBuilder(String.valueOf(string2).length() + 9 + name2.length());
                    sb3.append("<");
                    sb3.append(string2);
                    sb3.append(" threw ");
                    sb3.append(name2);
                    sb3.append(">");
                    string = sb3.toString();
                }
            }
            objArr[r12] = string;
            r12++;
        }
        StringBuilder sb4 = new StringBuilder((length * 16) + str.length());
        int r22 = 0;
        while (true) {
            length2 = objArr.length;
            if (r02 >= length2 || (r42 = str.indexOf("%s", r22)) == -1) {
                break;
            }
            sb4.append((CharSequence) str, r22, r42);
            sb4.append(objArr[r02]);
            r22 = r42 + 2;
            r02++;
        }
        sb4.append((CharSequence) str, r22, str.length());
        if (r02 < length2) {
            sb4.append(" [");
            sb4.append(objArr[r02]);
            for (int r11 = r02 + 1; r11 < objArr.length; r11++) {
                sb4.append(", ");
                sb4.append(objArr[r11]);
            }
            sb4.append(']');
        }
        return sb4.toString();
    }

    public static synchronized m6 b(h6 h6Var) {
        if (f14243a == null) {
            f14243a = new q6();
        }
        return f14243a.b(h6Var);
    }
}
