package h6;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import androidx.annotation.NonNull;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class g0 implements h0 {

    /* renamed from: g, reason: collision with root package name */
    public static final Pattern f6916g = Pattern.compile("[^\\p{Alnum}]");

    /* renamed from: h, reason: collision with root package name */
    public static final String f6917h = Pattern.quote("/");

    /* renamed from: a, reason: collision with root package name */
    public final i0 f6918a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f6919b;

    /* renamed from: c, reason: collision with root package name */
    public final String f6920c;

    /* renamed from: d, reason: collision with root package name */
    public final b7.d f6921d;

    /* renamed from: e, reason: collision with root package name */
    public final c0 f6922e;
    public String f;

    public g0(Context context, String str, b7.d dVar, c0 c0Var) {
        if (str == null) {
            throw new IllegalArgumentException("appIdentifier must not be null");
        }
        this.f6919b = context;
        this.f6920c = str;
        this.f6921d = dVar;
        this.f6922e = c0Var;
        this.f6918a = new i0();
    }

    public static String b() {
        return "SYN_" + UUID.randomUUID().toString();
    }

    @NonNull
    public final synchronized String a(String str, SharedPreferences sharedPreferences) {
        String lowerCase;
        String string = UUID.randomUUID().toString();
        lowerCase = string == null ? null : f6916g.matcher(string).replaceAll("").toLowerCase(Locale.US);
        String str2 = "Created new Crashlytics installation ID: " + lowerCase + " for FID: " + str;
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            Log.v("FirebaseCrashlytics", str2, null);
        }
        sharedPreferences.edit().putString("crashlytics.installation.id", lowerCase).putString("firebase.installation.id", str).apply();
        return lowerCase;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00b5 A[Catch: all -> 0x00e5, TryCatch #1 {, blocks: (B:4:0x0007, B:8:0x000d, B:10:0x0019, B:11:0x001e, B:13:0x0041, B:14:0x0046, B:16:0x004e, B:17:0x0054, B:21:0x0064, B:23:0x0078, B:26:0x0081, B:28:0x0087, B:31:0x008f, B:40:0x00b1, B:42:0x00b5, B:43:0x00c6, B:45:0x00dc, B:46:0x00e1, B:32:0x0094, B:20:0x005c, B:34:0x009b, B:39:0x00a9), top: B:54:0x0007, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00dc A[Catch: all -> 0x00e5, TryCatch #1 {, blocks: (B:4:0x0007, B:8:0x000d, B:10:0x0019, B:11:0x001e, B:13:0x0041, B:14:0x0046, B:16:0x004e, B:17:0x0054, B:21:0x0064, B:23:0x0078, B:26:0x0081, B:28:0x0087, B:31:0x008f, B:40:0x00b1, B:42:0x00b5, B:43:0x00c6, B:45:0x00dc, B:46:0x00e1, B:32:0x0094, B:20:0x005c, B:34:0x009b, B:39:0x00a9), top: B:54:0x0007, inners: #0 }] */
    @androidx.annotation.NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized java.lang.String c() {
        /*
            r9 = this;
            java.lang.String r0 = "Crashlytics installation ID: "
            java.lang.String r1 = "Fetched Firebase Installation ID: "
            java.lang.String r2 = "Cached Firebase Installation ID: "
            monitor-enter(r9)
            java.lang.String r3 = r9.f     // Catch: java.lang.Throwable -> Le5
            if (r3 == 0) goto Ld
            monitor-exit(r9)
            return r3
        Ld:
            java.lang.String r3 = "Determining Crashlytics installation ID..."
            java.lang.String r4 = "FirebaseCrashlytics"
            r5 = 2
            boolean r4 = android.util.Log.isLoggable(r4, r5)     // Catch: java.lang.Throwable -> Le5
            r6 = 0
            if (r4 == 0) goto L1e
            java.lang.String r4 = "FirebaseCrashlytics"
            android.util.Log.v(r4, r3, r6)     // Catch: java.lang.Throwable -> Le5
        L1e:
            android.content.Context r3 = r9.f6919b     // Catch: java.lang.Throwable -> Le5
            java.lang.String r4 = "com.google.firebase.crashlytics"
            r7 = 0
            android.content.SharedPreferences r3 = r3.getSharedPreferences(r4, r7)     // Catch: java.lang.Throwable -> Le5
            java.lang.String r4 = "firebase.installation.id"
            java.lang.String r4 = r3.getString(r4, r6)     // Catch: java.lang.Throwable -> Le5
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Le5
            r8.<init>(r2)     // Catch: java.lang.Throwable -> Le5
            r8.append(r4)     // Catch: java.lang.Throwable -> Le5
            java.lang.String r2 = r8.toString()     // Catch: java.lang.Throwable -> Le5
            java.lang.String r8 = "FirebaseCrashlytics"
            boolean r8 = android.util.Log.isLoggable(r8, r5)     // Catch: java.lang.Throwable -> Le5
            if (r8 == 0) goto L46
            java.lang.String r8 = "FirebaseCrashlytics"
            android.util.Log.v(r8, r2, r6)     // Catch: java.lang.Throwable -> Le5
        L46:
            h6.c0 r2 = r9.f6922e     // Catch: java.lang.Throwable -> Le5
            boolean r2 = r2.a()     // Catch: java.lang.Throwable -> Le5
            if (r2 == 0) goto L99
            b7.d r2 = r9.f6921d     // Catch: java.lang.Throwable -> Le5
            h5.z r2 = r2.getId()     // Catch: java.lang.Throwable -> Le5
            java.lang.Object r2 = h6.p0.a(r2)     // Catch: java.lang.Exception -> L5b java.lang.Throwable -> Le5
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.Exception -> L5b java.lang.Throwable -> Le5
            goto L64
        L5b:
            r2 = move-exception
            java.lang.String r7 = "FirebaseCrashlytics"
            java.lang.String r8 = "Failed to retrieve Firebase Installations ID."
            android.util.Log.w(r7, r8, r2)     // Catch: java.lang.Throwable -> Le5
            r2 = r6
        L64:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Le5
            r7.<init>(r1)     // Catch: java.lang.Throwable -> Le5
            r7.append(r2)     // Catch: java.lang.Throwable -> Le5
            java.lang.String r1 = r7.toString()     // Catch: java.lang.Throwable -> Le5
            java.lang.String r7 = "FirebaseCrashlytics"
            boolean r7 = android.util.Log.isLoggable(r7, r5)     // Catch: java.lang.Throwable -> Le5
            if (r7 == 0) goto L7d
            java.lang.String r7 = "FirebaseCrashlytics"
            android.util.Log.v(r7, r1, r6)     // Catch: java.lang.Throwable -> Le5
        L7d:
            if (r2 != 0) goto L87
            if (r4 != 0) goto L86
            java.lang.String r2 = b()     // Catch: java.lang.Throwable -> Le5
            goto L87
        L86:
            r2 = r4
        L87:
            boolean r1 = r2.equals(r4)     // Catch: java.lang.Throwable -> Le5
            if (r1 == 0) goto L94
            java.lang.String r1 = "crashlytics.installation.id"
        L8f:
            java.lang.String r1 = r3.getString(r1, r6)     // Catch: java.lang.Throwable -> Le5
            goto Lb1
        L94:
            java.lang.String r1 = r9.a(r2, r3)     // Catch: java.lang.Throwable -> Le5
            goto Lb1
        L99:
            if (r4 == 0) goto La4
            java.lang.String r1 = "SYN_"
            boolean r1 = r4.startsWith(r1)     // Catch: java.lang.Throwable -> Le5
            if (r1 == 0) goto La4
            r7 = 1
        La4:
            if (r7 == 0) goto La9
            java.lang.String r1 = "crashlytics.installation.id"
            goto L8f
        La9:
            java.lang.String r1 = b()     // Catch: java.lang.Throwable -> Le5
            java.lang.String r1 = r9.a(r1, r3)     // Catch: java.lang.Throwable -> Le5
        Lb1:
            r9.f = r1     // Catch: java.lang.Throwable -> Le5
            if (r1 != 0) goto Lc6
            java.lang.String r1 = "Unable to determine Crashlytics Install Id, creating a new one."
            java.lang.String r2 = "FirebaseCrashlytics"
            android.util.Log.w(r2, r1, r6)     // Catch: java.lang.Throwable -> Le5
            java.lang.String r1 = b()     // Catch: java.lang.Throwable -> Le5
            java.lang.String r1 = r9.a(r1, r3)     // Catch: java.lang.Throwable -> Le5
            r9.f = r1     // Catch: java.lang.Throwable -> Le5
        Lc6:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Le5
            r1.<init>(r0)     // Catch: java.lang.Throwable -> Le5
            java.lang.String r0 = r9.f     // Catch: java.lang.Throwable -> Le5
            r1.append(r0)     // Catch: java.lang.Throwable -> Le5
            java.lang.String r0 = r1.toString()     // Catch: java.lang.Throwable -> Le5
            java.lang.String r1 = "FirebaseCrashlytics"
            boolean r1 = android.util.Log.isLoggable(r1, r5)     // Catch: java.lang.Throwable -> Le5
            if (r1 == 0) goto Le1
            java.lang.String r1 = "FirebaseCrashlytics"
            android.util.Log.v(r1, r0, r6)     // Catch: java.lang.Throwable -> Le5
        Le1:
            java.lang.String r0 = r9.f     // Catch: java.lang.Throwable -> Le5
            monitor-exit(r9)
            return r0
        Le5:
            r0 = move-exception
            monitor-exit(r9)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: h6.g0.c():java.lang.String");
    }

    public final String d() {
        String str;
        i0 i0Var = this.f6918a;
        Context context = this.f6919b;
        synchronized (i0Var) {
            if (i0Var.f6923a == null) {
                String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
                if (installerPackageName == null) {
                    installerPackageName = "";
                }
                i0Var.f6923a = installerPackageName;
            }
            str = "".equals(i0Var.f6923a) ? null : i0Var.f6923a;
        }
        return str;
    }
}
