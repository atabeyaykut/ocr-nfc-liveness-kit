package g7;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;

/* loaded from: classes2.dex */
public final class d0 {

    /* renamed from: a, reason: collision with root package name */
    public final Context f5844a;

    /* renamed from: b, reason: collision with root package name */
    public String f5845b;

    /* renamed from: c, reason: collision with root package name */
    public String f5846c;

    /* renamed from: d, reason: collision with root package name */
    public int f5847d;

    /* renamed from: e, reason: collision with root package name */
    public int f5848e = 0;

    public d0(Context context) {
        this.f5844a = context;
    }

    public static String c(x5.c cVar) {
        cVar.a();
        String str = cVar.f19167c.f19180e;
        if (str != null) {
            return str;
        }
        cVar.a();
        String str2 = cVar.f19167c.f19177b;
        if (!str2.startsWith("1:")) {
            return str2;
        }
        String[] strArrSplit = str2.split(":");
        if (strArrSplit.length < 2) {
            return null;
        }
        String str3 = strArrSplit[1];
        if (str3.isEmpty()) {
            return null;
        }
        return str3;
    }

    public final synchronized String a() {
        if (this.f5845b == null) {
            f();
        }
        return this.f5845b;
    }

    public final synchronized String b() {
        if (this.f5846c == null) {
            f();
        }
        return this.f5846c;
    }

    public final PackageInfo d(String str) {
        try {
            return this.f5844a.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e10) {
            Log.w("FirebaseMessaging", "Failed to find package ".concat(e10.toString()));
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0048 A[Catch: all -> 0x0080, TRY_ENTER, TryCatch #0 {, blocks: (B:3:0x0001, B:6:0x0009, B:8:0x001a, B:11:0x0024, B:13:0x002a, B:15:0x003c, B:18:0x0043, B:21:0x0048, B:23:0x005b, B:26:0x0062, B:29:0x0066, B:31:0x0073, B:32:0x0077), top: B:42:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean e() {
        /*
            r5 = this;
            monitor-enter(r5)
            int r0 = r5.f5848e     // Catch: java.lang.Throwable -> L80
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L9
            goto L7a
        L9:
            android.content.Context r0 = r5.f5844a     // Catch: java.lang.Throwable -> L80
            android.content.pm.PackageManager r0 = r0.getPackageManager()     // Catch: java.lang.Throwable -> L80
            java.lang.String r3 = "com.google.android.c2dm.permission.SEND"
            java.lang.String r4 = "com.google.android.gms"
            int r3 = r0.checkPermission(r3, r4)     // Catch: java.lang.Throwable -> L80
            r4 = -1
            if (r3 != r4) goto L24
            java.lang.String r0 = "FirebaseMessaging"
            java.lang.String r3 = "Google Play services missing or without correct permission."
            android.util.Log.e(r0, r3)     // Catch: java.lang.Throwable -> L80
            monitor-exit(r5)
            r3 = 0
            goto L7c
        L24:
            boolean r3 = w3.d.a()     // Catch: java.lang.Throwable -> L80
            if (r3 != 0) goto L48
            android.content.Intent r3 = new android.content.Intent     // Catch: java.lang.Throwable -> L80
            java.lang.String r4 = "com.google.android.c2dm.intent.REGISTER"
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L80
            java.lang.String r4 = "com.google.android.gms"
            r3.setPackage(r4)     // Catch: java.lang.Throwable -> L80
            java.util.List r3 = r0.queryIntentServices(r3, r1)     // Catch: java.lang.Throwable -> L80
            if (r3 == 0) goto L48
            int r3 = r3.size()     // Catch: java.lang.Throwable -> L80
            if (r3 > 0) goto L43
            goto L48
        L43:
            r5.f5848e = r2     // Catch: java.lang.Throwable -> L80
            monitor-exit(r5)
            r3 = 1
            goto L7c
        L48:
            android.content.Intent r3 = new android.content.Intent     // Catch: java.lang.Throwable -> L80
            java.lang.String r4 = "com.google.iid.TOKEN_REQUEST"
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L80
            java.lang.String r4 = "com.google.android.gms"
            r3.setPackage(r4)     // Catch: java.lang.Throwable -> L80
            java.util.List r0 = r0.queryBroadcastReceivers(r3, r1)     // Catch: java.lang.Throwable -> L80
            r3 = 2
            if (r0 == 0) goto L66
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L80
            if (r0 > 0) goto L62
            goto L66
        L62:
            r5.f5848e = r3     // Catch: java.lang.Throwable -> L80
            monitor-exit(r5)
            goto L7c
        L66:
            java.lang.String r0 = "FirebaseMessaging"
            java.lang.String r4 = "Failed to resolve IID implementation package, falling back"
            android.util.Log.w(r0, r4)     // Catch: java.lang.Throwable -> L80
            boolean r0 = w3.d.a()     // Catch: java.lang.Throwable -> L80
            if (r0 == 0) goto L77
            r5.f5848e = r3     // Catch: java.lang.Throwable -> L80
            r0 = 2
            goto L7a
        L77:
            r5.f5848e = r2     // Catch: java.lang.Throwable -> L80
            r0 = 1
        L7a:
            monitor-exit(r5)
            r3 = r0
        L7c:
            if (r3 == 0) goto L7f
            return r2
        L7f:
            return r1
        L80:
            r0 = move-exception
            monitor-exit(r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: g7.d0.e():boolean");
    }

    public final synchronized void f() {
        PackageInfo packageInfoD = d(this.f5844a.getPackageName());
        if (packageInfoD != null) {
            this.f5845b = Integer.toString(packageInfoD.versionCode);
            this.f5846c = packageInfoD.versionName;
        }
    }
}
