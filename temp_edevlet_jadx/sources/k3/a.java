package k3;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import c5.w;
import com.google.android.gms.internal.clearcut.f4;
import com.google.android.gms.internal.clearcut.i2;
import com.google.android.gms.internal.clearcut.m4;
import com.google.android.gms.internal.clearcut.z3;
import n3.a;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: k, reason: collision with root package name */
    @Deprecated
    public static final n3.a<a.c.C0198c> f8697k = new n3.a<>("ClearcutLogger.API", new k3.b(), new a.f());

    /* renamed from: a, reason: collision with root package name */
    public final Context f8698a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8699b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8700c;

    /* renamed from: d, reason: collision with root package name */
    public final String f8701d;

    /* renamed from: e, reason: collision with root package name */
    public final int f8702e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final z3 f8703g;

    /* renamed from: h, reason: collision with root package name */
    public final c f8704h;

    /* renamed from: i, reason: collision with root package name */
    public final w3.a f8705i;

    /* renamed from: j, reason: collision with root package name */
    public final b f8706j;

    /* renamed from: k3.a$a, reason: collision with other inner class name */
    public class C0161a {

        /* renamed from: a, reason: collision with root package name */
        public final int f8707a;

        /* renamed from: b, reason: collision with root package name */
        public final String f8708b;

        /* renamed from: c, reason: collision with root package name */
        public final String f8709c;

        /* renamed from: d, reason: collision with root package name */
        public final z3 f8710d;

        /* renamed from: e, reason: collision with root package name */
        public final f4 f8711e;
        public boolean f;

        /* JADX WARN: Removed duplicated region for block: B:28:0x005f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C0161a(byte[] r8) {
            /*
                r6 = this;
                k3.a.this = r7
                r6.<init>()
                int r0 = r7.f8702e
                r6.f8707a = r0
                java.lang.String r0 = r7.f8701d
                r6.f8708b = r0
                java.lang.String r0 = r7.f
                r6.f8709c = r0
                com.google.android.gms.internal.clearcut.z3 r0 = r7.f8703g
                r6.f8710d = r0
                com.google.android.gms.internal.clearcut.f4 r0 = new com.google.android.gms.internal.clearcut.f4
                r0.<init>()
                r6.f8711e = r0
                r1 = 0
                r6.f = r1
                java.lang.String r2 = r7.f
                r6.f8709c = r2
                android.content.Context r2 = r7.f8698a
                android.os.UserManager r3 = com.google.android.gms.internal.clearcut.a.f3021a
                int r3 = android.os.Build.VERSION.SDK_INT
                r4 = 24
                r5 = 1
                if (r3 < r4) goto L30
                r3 = 1
                goto L31
            L30:
                r3 = 0
            L31:
                if (r3 == 0) goto L65
                boolean r3 = com.google.android.gms.internal.clearcut.a.f3022b
                if (r3 != 0) goto L62
                android.os.UserManager r3 = com.google.android.gms.internal.clearcut.a.f3021a
                if (r3 != 0) goto L57
                java.lang.Class<com.google.android.gms.internal.clearcut.a> r4 = com.google.android.gms.internal.clearcut.a.class
                monitor-enter(r4)
                android.os.UserManager r3 = com.google.android.gms.internal.clearcut.a.f3021a     // Catch: java.lang.Throwable -> L54
                if (r3 != 0) goto L52
                java.lang.Object r2 = android.support.v4.media.h.f(r2)     // Catch: java.lang.Throwable -> L54
                android.os.UserManager r2 = (android.os.UserManager) r2     // Catch: java.lang.Throwable -> L54
                com.google.android.gms.internal.clearcut.a.f3021a = r2     // Catch: java.lang.Throwable -> L54
                if (r2 != 0) goto L51
                com.google.android.gms.internal.clearcut.a.f3022b = r5     // Catch: java.lang.Throwable -> L54
                monitor-exit(r4)     // Catch: java.lang.Throwable -> L54
                r3 = 1
                goto L62
            L51:
                r3 = r2
            L52:
                monitor-exit(r4)     // Catch: java.lang.Throwable -> L54
                goto L57
            L54:
                r7 = move-exception
                monitor-exit(r4)     // Catch: java.lang.Throwable -> L54
                throw r7
            L57:
                boolean r3 = androidx.appcompat.app.b.k(r3)
                com.google.android.gms.internal.clearcut.a.f3022b = r3
                if (r3 == 0) goto L62
                r2 = 0
                com.google.android.gms.internal.clearcut.a.f3021a = r2
            L62:
                if (r3 != 0) goto L65
                r1 = 1
            L65:
                r0.w = r1
                w3.a r1 = r7.f8705i
                c5.w r1 = (c5.w) r1
                r1.getClass()
                long r1 = java.lang.System.currentTimeMillis()
                r0.f3118c = r1
                w3.a r7 = r7.f8705i
                c5.w r7 = (c5.w) r7
                r7.getClass()
                long r1 = android.os.SystemClock.elapsedRealtime()
                r0.f3119d = r1
                long r1 = r0.f3118c
                java.util.TimeZone r7 = java.util.TimeZone.getDefault()
                int r7 = r7.getOffset(r1)
                int r7 = r7 / 1000
                long r1 = (long) r7
                r0.f3129q = r1
                r0.f3124k = r8
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: k3.a.C0161a.<init>(k3.a, byte[]):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:65:0x016c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() throws java.lang.NumberFormatException {
            /*
                Method dump skipped, instructions count: 573
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: k3.a.C0161a.a():void");
        }
    }

    public interface b {
    }

    public a(Context context) {
        i2 i2Var = new i2(context);
        w wVar = w.f2088h;
        m4 m4Var = new m4(context);
        this.f8702e = -1;
        z3 z3Var = z3.DEFAULT;
        this.f8703g = z3Var;
        this.f8698a = context;
        this.f8699b = context.getPackageName();
        int r52 = 0;
        try {
            r52 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e10) {
            Log.wtf("ClearcutLogger", "This can't happen.", e10);
        }
        this.f8700c = r52;
        this.f8702e = -1;
        this.f8701d = "VISION";
        this.f = null;
        this.f8704h = i2Var;
        this.f8705i = wVar;
        this.f8703g = z3Var;
        this.f8706j = m4Var;
    }
}
