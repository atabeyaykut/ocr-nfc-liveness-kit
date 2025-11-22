package h6;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.Debug;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Locale;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;

/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f6901a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: b, reason: collision with root package name */
    public static long f6902b = -1;

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v0 h6.e$a, still in use, count: 1, list:
      (r0v0 h6.e$a) from 0x008c: INVOKE (r2v5 java.util.HashMap), ("x86"), (r0v0 h6.e$a) VIRTUAL call: java.util.HashMap.put(java.lang.Object, java.lang.Object):java.lang.Object A[MD:(K, V):V (c)]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:99)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1604)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:98)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:252)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:180)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a {
        /* JADX INFO: Fake field, exist only in values array */
        X86_32,
        /* JADX INFO: Fake field, exist only in values array */
        X86_64,
        /* JADX INFO: Fake field, exist only in values array */
        ARM_UNKNOWN,
        /* JADX INFO: Fake field, exist only in values array */
        PPC,
        /* JADX INFO: Fake field, exist only in values array */
        PPC64,
        /* JADX INFO: Fake field, exist only in values array */
        ARMV6,
        /* JADX INFO: Fake field, exist only in values array */
        ARMV7,
        UNKNOWN,
        /* JADX INFO: Fake field, exist only in values array */
        ARMV7S,
        /* JADX INFO: Fake field, exist only in values array */
        ARM64;


        /* renamed from: b, reason: collision with root package name */
        public static final HashMap f6904b;

        static {
            HashMap map = new HashMap(4);
            f6904b = map;
            map.put("armeabi-v7a", aVar);
            map.put("armeabi", aVar);
            map.put("arm64-v8a", aVar);
            map.put("x86", aVar);
        }

        public a() {
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) f6905c.clone();
        }
    }

    public static void a(Closeable closeable, String str) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e10) {
                Log.e("FirebaseCrashlytics", str, e10);
            }
        }
    }

    public static long b(int r22, String str, String str2) {
        return Long.parseLong(str.split(str2)[0].trim()) * r22;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0037, code lost:
    
        r3 = r4[1];
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String c(java.io.File r7) throws java.lang.Throwable {
        /*
            java.lang.String r0 = "MemTotal"
            java.lang.String r1 = "Failed to close system file reader."
            boolean r2 = r7.exists()
            r3 = 0
            if (r2 == 0) goto L5f
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            java.io.FileReader r4 = new java.io.FileReader     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            r4.<init>(r7)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            r5 = 1024(0x400, float:1.435E-42)
            r2.<init>(r4, r5)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
        L17:
            java.lang.String r4 = r2.readLine()     // Catch: java.lang.Exception -> L39 java.lang.Throwable -> L59
            if (r4 == 0) goto L55
            java.lang.String r5 = "\\s*:\\s*"
            java.util.regex.Pattern r5 = java.util.regex.Pattern.compile(r5)     // Catch: java.lang.Exception -> L39 java.lang.Throwable -> L59
            r6 = 2
            java.lang.String[] r4 = r5.split(r4, r6)     // Catch: java.lang.Exception -> L39 java.lang.Throwable -> L59
            int r5 = r4.length     // Catch: java.lang.Exception -> L39 java.lang.Throwable -> L59
            r6 = 1
            if (r5 <= r6) goto L17
            r5 = 0
            r5 = r4[r5]     // Catch: java.lang.Exception -> L39 java.lang.Throwable -> L59
            boolean r5 = r5.equals(r0)     // Catch: java.lang.Exception -> L39 java.lang.Throwable -> L59
            if (r5 == 0) goto L17
            r7 = r4[r6]     // Catch: java.lang.Exception -> L39 java.lang.Throwable -> L59
            r3 = r7
            goto L55
        L39:
            r0 = move-exception
            goto L3f
        L3b:
            r7 = move-exception
            goto L5b
        L3d:
            r0 = move-exception
            r2 = r3
        L3f:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L59
            r4.<init>()     // Catch: java.lang.Throwable -> L59
            java.lang.String r5 = "Error parsing "
            r4.append(r5)     // Catch: java.lang.Throwable -> L59
            r4.append(r7)     // Catch: java.lang.Throwable -> L59
            java.lang.String r7 = r4.toString()     // Catch: java.lang.Throwable -> L59
            java.lang.String r4 = "FirebaseCrashlytics"
            android.util.Log.e(r4, r7, r0)     // Catch: java.lang.Throwable -> L59
        L55:
            a(r2, r1)
            goto L5f
        L59:
            r7 = move-exception
            r3 = r2
        L5b:
            a(r3, r1)
            throw r7
        L5f:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: h6.e.c(java.io.File):java.lang.String");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    public static int d(Context context) {
        boolean zI = i(context);
        ?? r02 = zI;
        if (j(context)) {
            r02 = (zI ? 1 : 0) | 2;
        }
        return Debug.isDebuggerConnected() || Debug.waitingForDebugger() ? r02 | 4 : r02;
    }

    public static String e(Context context) throws Resources.NotFoundException {
        int r02 = f(context, "com.google.firebase.crashlytics.mapping_file_id", TypedValues.Custom.S_STRING);
        if (r02 == 0) {
            r02 = f(context, "com.crashlytics.android.build_id", TypedValues.Custom.S_STRING);
        }
        if (r02 != 0) {
            return context.getResources().getString(r02);
        }
        return null;
    }

    public static int f(Context context, String str, String str2) throws Resources.NotFoundException {
        String resourcePackageName;
        Resources resources = context.getResources();
        int r12 = context.getApplicationContext().getApplicationInfo().icon;
        if (r12 > 0) {
            try {
                resourcePackageName = context.getResources().getResourcePackageName(r12);
                if ("android".equals(resourcePackageName)) {
                    resourcePackageName = context.getPackageName();
                }
            } catch (Resources.NotFoundException unused) {
            }
        } else {
            resourcePackageName = context.getPackageName();
        }
        return resources.getIdentifier(str, str2, resourcePackageName);
    }

    public static synchronized long g() {
        long jB;
        if (f6902b == -1) {
            String strC = c(new File("/proc/meminfo"));
            if (TextUtils.isEmpty(strC)) {
                jB = 0;
                f6902b = jB;
            } else {
                String upperCase = strC.toUpperCase(Locale.US);
                try {
                } catch (NumberFormatException e10) {
                    Log.e("FirebaseCrashlytics", "Unexpected meminfo format while computing RAM: " + upperCase, e10);
                }
                if (upperCase.endsWith("KB")) {
                    jB = b(1024, upperCase, "KB");
                } else if (upperCase.endsWith("MB")) {
                    jB = b(1048576, upperCase, "MB");
                } else if (upperCase.endsWith("GB")) {
                    jB = b(1073741824, upperCase, "GB");
                } else {
                    Log.w("FirebaseCrashlytics", "Unexpected meminfo format while computing RAM: ".concat(upperCase), null);
                    jB = 0;
                }
                f6902b = jB;
            }
        }
        return f6902b;
    }

    public static String h(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int r12 = 0; r12 < bArr.length; r12++) {
            int r22 = bArr[r12] & 255;
            int r32 = r12 * 2;
            char[] cArr2 = f6901a;
            cArr[r32] = cArr2[r22 >>> 4];
            cArr[r32 + 1] = cArr2[r22 & 15];
        }
        return new String(cArr);
    }

    public static boolean i(Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (!Build.PRODUCT.contains("sdk")) {
            String str = Build.HARDWARE;
            if (!str.contains("goldfish") && !str.contains("ranchu") && string != null) {
                return false;
            }
        }
        return true;
    }

    public static boolean j(Context context) {
        boolean zI = i(context);
        String str = Build.TAGS;
        if ((zI || str == null || !str.contains("test-keys")) && !new File("/system/app/Superuser.apk").exists()) {
            return !zI && new File("/system/xbin/su").exists();
        }
        return true;
    }

    public static String k(String str) throws NoSuchAlgorithmException {
        byte[] bytes = str.getBytes();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(McElieceCCA2KeyGenParameterSpec.SHA1);
            messageDigest.update(bytes);
            return h(messageDigest.digest());
        } catch (NoSuchAlgorithmException e10) {
            Log.e("FirebaseCrashlytics", "Could not create hashing algorithm: SHA-1, returning empty string.", e10);
            return "";
        }
    }
}
