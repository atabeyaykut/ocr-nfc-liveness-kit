package j;

import android.net.Uri;
import android.webkit.MimeTypeMap;
import androidx.annotation.VisibleForTesting;
import ed.d0;
import ed.v;
import ed.z;
import h.a;
import j.h;
import java.io.IOException;
import java.util.Map;
import mc.n;
import org.jmrtd.PassportService;
import rc.c;
import rc.d;
import rc.q;
import rc.t;
import rc.x;

/* loaded from: classes.dex */
public final class j implements h {
    public static final rc.c f;

    /* renamed from: g, reason: collision with root package name */
    public static final rc.c f7928g;

    /* renamed from: a, reason: collision with root package name */
    public final String f7929a;

    /* renamed from: b, reason: collision with root package name */
    public final p.k f7930b;

    /* renamed from: c, reason: collision with root package name */
    public final l9.e<d.a> f7931c;

    /* renamed from: d, reason: collision with root package name */
    public final l9.e<h.a> f7932d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f7933e;

    public static final class a implements h.a<Uri> {

        /* renamed from: a, reason: collision with root package name */
        public final l9.e<d.a> f7934a;

        /* renamed from: b, reason: collision with root package name */
        public final l9.e<h.a> f7935b;

        /* renamed from: c, reason: collision with root package name */
        public final boolean f7936c;

        public a(l9.j jVar, l9.j jVar2, boolean z10) {
            this.f7934a = jVar;
            this.f7935b = jVar2;
            this.f7936c = z10;
        }

        @Override // j.h.a
        public final h a(Object obj, p.k kVar) {
            Uri uri = (Uri) obj;
            if (kotlin.jvm.internal.h.a(uri.getScheme(), "http") || kotlin.jvm.internal.h.a(uri.getScheme(), "https")) {
                return new j(uri.toString(), kVar, this.f7934a, this.f7935b, this.f7936c);
            }
            return null;
        }
    }

    @r9.e(c = "coil.fetch.HttpUriFetcher", f = "HttpUriFetcher.kt", l = {PassportService.DEFAULT_MAX_BLOCKSIZE}, m = "executeNetworkRequest")
    public static final class b extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f7937a;

        /* renamed from: c, reason: collision with root package name */
        public int f7939c;

        public b(p9.d<? super b> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f7937a = obj;
            this.f7939c |= Integer.MIN_VALUE;
            rc.c cVar = j.f;
            return j.this.b(null, this);
        }
    }

    @r9.e(c = "coil.fetch.HttpUriFetcher", f = "HttpUriFetcher.kt", l = {76, 105}, m = "fetch")
    public static final class c extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public j f7940a;

        /* renamed from: b, reason: collision with root package name */
        public a.b f7941b;

        /* renamed from: c, reason: collision with root package name */
        public Object f7942c;

        /* renamed from: d, reason: collision with root package name */
        public /* synthetic */ Object f7943d;
        public int f;

        public c(p9.d<? super c> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f7943d = obj;
            this.f |= Integer.MIN_VALUE;
            return j.this.a(this);
        }
    }

    static {
        c.a aVar = new c.a();
        aVar.f14425a = true;
        aVar.f14426b = true;
        f = aVar.a();
        c.a aVar2 = new c.a();
        aVar2.f14425a = true;
        aVar2.f = true;
        f7928g = aVar2.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public j(String str, p.k kVar, l9.e<? extends d.a> eVar, l9.e<? extends h.a> eVar2, boolean z10) {
        this.f7929a = str;
        this.f7930b = kVar;
        this.f7931c = eVar;
        this.f7932d = eVar2;
        this.f7933e = z10;
    }

    @VisibleForTesting
    public static String d(String str, t tVar) {
        String strB;
        String str2 = tVar == null ? null : tVar.f14534a;
        if ((str2 == null || mc.j.D(str2, "text/plain", false)) && (strB = u.c.b(MimeTypeMap.getSingleton(), str)) != null) {
            return strB;
        }
        if (str2 == null) {
            return null;
        }
        return n.e0(str2, ';');
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01a9 A[Catch: Exception -> 0x01d5, TryCatch #4 {Exception -> 0x01d5, blocks: (B:85:0x01a2, B:87:0x01a9, B:91:0x01d1, B:95:0x01d7, B:96:0x01e0), top: B:119:0x01a2 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01d7 A[Catch: Exception -> 0x01d5, TryCatch #4 {Exception -> 0x01d5, blocks: (B:85:0x01a2, B:87:0x01a9, B:91:0x01d1, B:95:0x01d7, B:96:0x01e0), top: B:119:0x01a2 }] */
    /* JADX WARN: Type inference failed for: r4v0, types: [int] */
    @Override // j.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(p9.d<? super j.g> r20) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 511
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j.j.a(p9.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(rc.x r5, p9.d<? super rc.b0> r6) throws java.lang.Throwable {
        /*
            r4 = this;
            boolean r0 = r6 instanceof j.j.b
            if (r0 == 0) goto L13
            r0 = r6
            j.j$b r0 = (j.j.b) r0
            int r1 = r0.f7939c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f7939c = r1
            goto L18
        L13:
            j.j$b r0 = new j.j$b
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f7937a
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f7939c
            r3 = 1
            if (r2 == 0) goto L2f
            if (r2 != r3) goto L27
            c5.w.F(r6)
            goto L8d
        L27:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L2f:
            c5.w.F(r6)
            android.graphics.Bitmap$Config[] r6 = u.c.f17726a
            android.os.Looper r6 = android.os.Looper.myLooper()
            android.os.Looper r2 = android.os.Looper.getMainLooper()
            boolean r6 = kotlin.jvm.internal.h.a(r6, r2)
            l9.e<rc.d$a> r2 = r4.f7931c
            if (r6 == 0) goto L63
            p.k r6 = r4.f7930b
            int r6 = r6.f12179o
            boolean r6 = androidx.camera.core.impl.utils.f.d(r6)
            if (r6 != 0) goto L5d
            java.lang.Object r6 = r2.getValue()
            rc.d$a r6 = (rc.d.a) r6
            vc.e r5 = r6.b(r5)
            rc.b0 r5 = r5.execute()
            goto L90
        L5d:
            android.os.NetworkOnMainThreadException r5 = new android.os.NetworkOnMainThreadException
            r5.<init>()
            throw r5
        L63:
            java.lang.Object r6 = r2.getValue()
            rc.d$a r6 = (rc.d.a) r6
            vc.e r5 = r6.b(r5)
            r0.f7939c = r3
            nc.j r6 = new nc.j
            p9.d r0 = c5.w.x(r0)
            r6.<init>(r3, r0)
            r6.n()
            u.d r0 = new u.d
            r0.<init>(r5, r6)
            r5.y(r0)
            r6.D(r0)
            java.lang.Object r6 = r6.m()
            if (r6 != r1) goto L8d
            return r1
        L8d:
            r5 = r6
            rc.b0 r5 = (rc.b0) r5
        L90:
            boolean r6 = r5.c()
            if (r6 != 0) goto Laa
            r6 = 304(0x130, float:4.26E-43)
            int r0 = r5.f14389e
            if (r0 == r6) goto Laa
            rc.d0 r6 = r5.f14391h
            if (r6 != 0) goto La1
            goto La4
        La1:
            u.c.a(r6)
        La4:
            o.e r6 = new o.e
            r6.<init>(r5)
            throw r6
        Laa:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: j.j.b(rc.x, p9.d):java.lang.Object");
    }

    public final ed.k c() {
        h.a value = this.f7932d.getValue();
        kotlin.jvm.internal.h.c(value);
        return value.getFileSystem();
    }

    public final x e() {
        rc.c cVar;
        x.a aVar = new x.a();
        aVar.f(this.f7929a);
        p.k kVar = this.f7930b;
        q headers = kVar.f12174j;
        kotlin.jvm.internal.h.f(headers, "headers");
        aVar.f14604c = headers.u();
        for (Map.Entry<Class<?>, Object> entry : kVar.f12175k.f12193a.entrySet()) {
            aVar.e(entry.getKey(), entry.getValue());
        }
        int r22 = kVar.f12178n;
        boolean zD = androidx.camera.core.impl.utils.f.d(r22);
        boolean zD2 = androidx.camera.core.impl.utils.f.d(kVar.f12179o);
        if (!zD2 && zD) {
            cVar = rc.c.f14411o;
        } else {
            if (!zD2 || zD) {
                if (!zD2 && !zD) {
                    cVar = f7928g;
                }
                return aVar.a();
            }
            cVar = androidx.camera.core.impl.utils.f.e(r22) ? rc.c.f14410n : f;
        }
        aVar.b(cVar);
        return aVar.a();
    }

    public final o.c f(a.b bVar) throws Throwable {
        o.c cVar;
        try {
            d0 d0VarB = v.b(c().l(bVar.L()));
            try {
                cVar = new o.c(d0VarB);
                th = null;
            } catch (Throwable th2) {
                th = th2;
                cVar = null;
            }
            try {
                d0VarB.close();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                } else {
                    b8.f.k(th, th3);
                }
            }
            if (th != null) {
                throw th;
            }
            kotlin.jvm.internal.h.c(cVar);
            return cVar;
        } catch (IOException unused) {
            return null;
        }
    }

    public final g.k g(a.b bVar) {
        z zVarL = bVar.l();
        ed.k kVarC = c();
        String str = this.f7930b.f12173i;
        if (str == null) {
            str = this.f7929a;
        }
        return new g.k(zVarL, kVarC, str, bVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final h.a.b h(h.a.b r7, rc.x r8, rc.b0 r9, o.c r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j.j.h(h.a$b, rc.x, rc.b0, o.c):h.a$b");
    }
}
