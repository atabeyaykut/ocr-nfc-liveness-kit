package com.google.android.gms.internal.measurement;

import android.content.Context;
import androidx.annotation.GuardedBy;
import androidx.core.content.PermissionChecker;

/* loaded from: classes.dex */
public final class r4 implements p4 {

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("GservicesLoader.class")
    public static r4 f3708c;

    /* renamed from: a, reason: collision with root package name */
    public final Context f3709a;

    /* renamed from: b, reason: collision with root package name */
    public final q4 f3710b;

    public r4() {
        this.f3709a = null;
        this.f3710b = null;
    }

    public r4(Context context) {
        this.f3709a = context;
        q4 q4Var = new q4();
        this.f3710b = q4Var;
        context.getContentResolver().registerContentObserver(j4.f3566a, true, q4Var);
    }

    public static r4 b(Context context) {
        r4 r4Var;
        synchronized (r4.class) {
            if (f3708c == null) {
                f3708c = PermissionChecker.checkSelfPermission(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new r4(context) : new r4();
            }
            r4Var = f3708c;
        }
        return r4Var;
    }

    public static synchronized void d() {
        Context context;
        r4 r4Var = f3708c;
        if (r4Var != null && (context = r4Var.f3709a) != null && r4Var.f3710b != null) {
            context.getContentResolver().unregisterContentObserver(f3708c.f3710b);
        }
        f3708c = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0039  */
    @Override // com.google.android.gms.internal.measurement.p4
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String a(java.lang.String r5) {
        /*
            r4 = this;
            android.content.Context r0 = r4.f3709a
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            x0.t r0 = new x0.t     // Catch: java.lang.NullPointerException -> L23 java.lang.SecurityException -> L25 java.lang.IllegalStateException -> L27
            r0.<init>(r4, r5)     // Catch: java.lang.NullPointerException -> L23 java.lang.SecurityException -> L25 java.lang.IllegalStateException -> L27
            java.lang.Object r0 = r0.b()     // Catch: java.lang.SecurityException -> L10 java.lang.NullPointerException -> L23 java.lang.IllegalStateException -> L27
            goto L1b
        L10:
            long r2 = android.os.Binder.clearCallingIdentity()     // Catch: java.lang.NullPointerException -> L23 java.lang.SecurityException -> L25 java.lang.IllegalStateException -> L27
            java.lang.Object r0 = r0.b()     // Catch: java.lang.Throwable -> L1e
            android.os.Binder.restoreCallingIdentity(r2)     // Catch: java.lang.NullPointerException -> L23 java.lang.SecurityException -> L25 java.lang.IllegalStateException -> L27
        L1b:
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.NullPointerException -> L23 java.lang.SecurityException -> L25 java.lang.IllegalStateException -> L27
            return r0
        L1e:
            r0 = move-exception
            android.os.Binder.restoreCallingIdentity(r2)     // Catch: java.lang.NullPointerException -> L23 java.lang.SecurityException -> L25 java.lang.IllegalStateException -> L27
            throw r0     // Catch: java.lang.NullPointerException -> L23 java.lang.SecurityException -> L25 java.lang.IllegalStateException -> L27
        L23:
            r0 = move-exception
            goto L28
        L25:
            r0 = move-exception
            goto L28
        L27:
            r0 = move-exception
        L28:
            java.lang.String r5 = java.lang.String.valueOf(r5)
            int r2 = r5.length()
            java.lang.String r3 = "Unable to read GServices for: "
            if (r2 == 0) goto L39
            java.lang.String r5 = r3.concat(r5)
            goto L3e
        L39:
            java.lang.String r5 = new java.lang.String
            r5.<init>(r3)
        L3e:
            java.lang.String r2 = "GservicesLoader"
            android.util.Log.e(r2, r5, r0)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.r4.a(java.lang.String):java.lang.String");
    }
}
