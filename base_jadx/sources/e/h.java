package e;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Looper;
import c5.v;
import c5.w;
import com.google.android.gms.internal.clearcut.d0;
import e.a;
import e.b;
import g.b;
import j.a;
import j.b;
import j.c;
import j.d;
import j.e;
import j.i;
import j.j;
import j.k;
import java.io.File;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import m9.t;
import nc.a0;
import nc.f0;
import nc.j0;
import nc.t1;
import nc.u1;
import p.m;
import p.q;
import rc.r;
import u.l;
import x9.p;

/* loaded from: classes.dex */
public final class h implements f {

    /* renamed from: a, reason: collision with root package name */
    public final p.a f4993a;

    /* renamed from: b, reason: collision with root package name */
    public final l9.e<n.b> f4994b;

    /* renamed from: c, reason: collision with root package name */
    public final b.InterfaceC0076b f4995c;

    /* renamed from: d, reason: collision with root package name */
    public final kotlinx.coroutines.internal.f f4996d;

    /* renamed from: e, reason: collision with root package name */
    public final m f4997e;
    public final l9.e f;

    /* renamed from: g, reason: collision with root package name */
    public final e.a f4998g;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f4999h;

    @r9.e(c = "coil.RealImageLoader$enqueue$job$1", f = "RealImageLoader.kt", l = {113}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super p.h>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f5000a;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ p.g f5002c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(p.g gVar, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f5002c = gVar;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return h.this.new a(this.f5002c, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super p.h> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f5000a;
            h hVar = h.this;
            if (r12 == 0) {
                w.F(obj);
                this.f5000a = 1;
                obj = h.c(hVar, this.f5002c, this);
                if (obj == aVar) {
                    return aVar;
                }
            } else {
                if (r12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.F(obj);
            }
            if (((p.h) obj) instanceof p.d) {
                hVar.getClass();
            }
            return obj;
        }
    }

    public h(Context context, p.a aVar, l9.j jVar, l9.j jVar2, l9.j jVar3, e.a aVar2, u.h hVar) {
        androidx.constraintlayout.core.state.b bVar = b.InterfaceC0076b.f4986b0;
        this.f4993a = aVar;
        this.f4994b = jVar;
        this.f4995c = bVar;
        u1 u1VarA = d0.a();
        kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
        this.f4996d = b8.f.f(u1VarA.plus(kotlinx.coroutines.internal.m.f9167a.d()).plus(new k(this)));
        m mVar = new m(this, new l(this, context, hVar.f17738b));
        this.f4997e = mVar;
        this.f = jVar;
        a.C0075a c0075a = new a.C0075a(aVar2);
        c0075a.b(new m.c(), r.class);
        c0075a.b(new m.g(), String.class);
        c0075a.b(new m.b(), Uri.class);
        c0075a.b(new m.f(), Uri.class);
        c0075a.b(new m.e(), Integer.class);
        c0075a.b(new m.a(), byte[].class);
        l.c cVar2 = new l.c();
        ArrayList arrayList = c0075a.f4982c;
        arrayList.add(new l9.g(cVar2, Uri.class));
        arrayList.add(new l9.g(new l.a(hVar.f17737a), File.class));
        c0075a.a(new j.a(jVar3, jVar2, hVar.f17739c), Uri.class);
        c0075a.a(new i.a(), File.class);
        c0075a.a(new a.C0133a(), Uri.class);
        c0075a.a(new d.a(), Uri.class);
        c0075a.a(new k.a(), Uri.class);
        c0075a.a(new e.a(), Drawable.class);
        c0075a.a(new b.a(), Bitmap.class);
        c0075a.a(new c.a(), ByteBuffer.class);
        b.C0090b c0090b = new b.C0090b(hVar.f17740d);
        ArrayList arrayList2 = c0075a.f4984e;
        arrayList2.add(c0090b);
        List listG = w.G(c0075a.f4980a);
        this.f4998g = new e.a(listG, w.G(c0075a.f4981b), w.G(arrayList), w.G(c0075a.f4983d), w.G(arrayList2));
        this.f4999h = t.n1(new k.a(this, mVar), listG);
        new AtomicBoolean(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00f2 A[Catch: all -> 0x0192, TryCatch #0 {all -> 0x0192, blocks: (B:36:0x00d7, B:50:0x00ff, B:51:0x010b, B:55:0x0113, B:59:0x011e, B:58:0x011b, B:54:0x0110, B:48:0x00f2, B:39:0x00de, B:45:0x00ec, B:42:0x00e4, B:31:0x00b6, B:33:0x00c0, B:76:0x0194, B:77:0x0199), top: B:96:0x00b6 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ff A[Catch: all -> 0x0192, TryCatch #0 {all -> 0x0192, blocks: (B:36:0x00d7, B:50:0x00ff, B:51:0x010b, B:55:0x0113, B:59:0x011e, B:58:0x011b, B:54:0x0110, B:48:0x00f2, B:39:0x00de, B:45:0x00ec, B:42:0x00e4, B:31:0x00b6, B:33:0x00c0, B:76:0x0194, B:77:0x0199), top: B:96:0x00b6 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0110 A[Catch: all -> 0x0192, TryCatch #0 {all -> 0x0192, blocks: (B:36:0x00d7, B:50:0x00ff, B:51:0x010b, B:55:0x0113, B:59:0x011e, B:58:0x011b, B:54:0x0110, B:48:0x00f2, B:39:0x00de, B:45:0x00ec, B:42:0x00e4, B:31:0x00b6, B:33:0x00c0, B:76:0x0194, B:77:0x0199), top: B:96:0x00b6 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x011b A[Catch: all -> 0x0192, TryCatch #0 {all -> 0x0192, blocks: (B:36:0x00d7, B:50:0x00ff, B:51:0x010b, B:55:0x0113, B:59:0x011e, B:58:0x011b, B:54:0x0110, B:48:0x00f2, B:39:0x00de, B:45:0x00ec, B:42:0x00e4, B:31:0x00b6, B:33:0x00c0, B:76:0x0194, B:77:0x0199), top: B:96:0x00b6 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0170 A[Catch: all -> 0x0069, TryCatch #2 {all -> 0x0069, blocks: (B:14:0x003c, B:66:0x0169, B:68:0x0170, B:69:0x017c, B:71:0x0180, B:19:0x0053, B:63:0x013f, B:22:0x0062), top: B:98:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x017c A[Catch: all -> 0x0069, TryCatch #2 {all -> 0x0069, blocks: (B:14:0x003c, B:66:0x0169, B:68:0x0170, B:69:0x017c, B:71:0x0180, B:19:0x0053, B:63:0x013f, B:22:0x0062), top: B:98:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001c  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01c6 A[Catch: all -> 0x01d4, TryCatch #1 {all -> 0x01d4, blocks: (B:78:0x019a, B:80:0x019e, B:84:0x01ac, B:83:0x01a9, B:85:0x01ad, B:87:0x01b8, B:90:0x01ca, B:89:0x01c6), top: B:97:0x019a }] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [e.b] */
    /* JADX WARN: Type inference failed for: r2v8, types: [e.b, e.b$a] */
    /* JADX WARN: Type inference failed for: r3v3, types: [int] */
    /* JADX WARN: Type inference failed for: r3v4, types: [p.g] */
    /* JADX WARN: Type inference failed for: r3v7, types: [p.g] */
    /* JADX WARN: Type inference failed for: r4v16, types: [int] */
    /* JADX WARN: Type inference failed for: r4v17, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object c(e.h r22, p.g r23, p9.d r24) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 473
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e.h.c(e.h, p.g, p9.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void d(p.d r3, r.a r4, e.b r5) {
        /*
            p.g r0 = r3.f12113b
            boolean r1 = r4 instanceof t.d
            if (r1 != 0) goto L9
            if (r4 != 0) goto L16
            goto L25
        L9:
            t.c$a r1 = r0.f12128m
            r2 = r4
            t.d r2 = (t.d) r2
            t.c r1 = r1.a(r2, r3)
            boolean r2 = r1 instanceof t.b
            if (r2 == 0) goto L1c
        L16:
            android.graphics.drawable.Drawable r3 = r3.f12112a
            r4.b(r3)
            goto L25
        L1c:
            r5.d()
            r1.a()
            r5.o()
        L25:
            r5.a()
            p.g$b r3 = r0.f12120d
            if (r3 != 0) goto L2d
            goto L30
        L2d:
            r3.a()
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: e.h.d(p.d, r.a, e.b):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void e(p.n r3, r.a r4, e.b r5) {
        /*
            p.g r0 = r3.f12187b
            boolean r1 = r4 instanceof t.d
            if (r1 != 0) goto L9
            if (r4 != 0) goto L16
            goto L25
        L9:
            t.c$a r1 = r0.f12128m
            r2 = r4
            t.d r2 = (t.d) r2
            t.c r1 = r1.a(r2, r3)
            boolean r2 = r1 instanceof t.b
            if (r2 == 0) goto L1c
        L16:
            android.graphics.drawable.Drawable r3 = r3.f12186a
            r4.a(r3)
            goto L25
        L1c:
            r5.d()
            r1.a()
            r5.o()
        L25:
            r5.onSuccess()
            p.g$b r3 = r0.f12120d
            if (r3 != 0) goto L2d
            goto L30
        L2d:
            r3.onSuccess()
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: e.h.e(p.n, r.a, e.b):void");
    }

    @Override // e.f
    public final p.c a(p.g gVar) {
        a0.b bVar;
        f0 f0VarN = v.n(this.f4996d, null, new a(gVar, null), 3);
        r.a aVar = gVar.f12119c;
        if (!(aVar instanceof r.b)) {
            return new b8.f(f0VarN);
        }
        q qVarC = u.c.c(((r.b) aVar).getF2468b());
        synchronized (qVarC) {
            bVar = qVarC.f12195a;
            if (bVar != null && kotlin.jvm.internal.h.a(Looper.myLooper(), Looper.getMainLooper()) && qVarC.f12198d) {
                qVarC.f12198d = false;
                bVar.getClass();
            } else {
                t1 t1Var = qVarC.f12196b;
                if (t1Var != null) {
                    t1Var.a(null);
                }
                qVarC.f12196b = null;
                bVar = new a0.b(f0VarN);
                qVarC.f12195a = bVar;
            }
        }
        return bVar;
    }

    @Override // e.f
    public final n.b b() {
        return (n.b) this.f.getValue();
    }

    @Override // e.f
    public final e.a getComponents() {
        return this.f4998g;
    }
}
