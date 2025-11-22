package k;

import android.content.Context;
import java.util.List;
import k.h;

/* loaded from: classes.dex */
public final class i implements h.a {

    /* renamed from: a, reason: collision with root package name */
    public final p.g f8601a;

    /* renamed from: b, reason: collision with root package name */
    public final List<h> f8602b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8603c;

    /* renamed from: d, reason: collision with root package name */
    public final p.g f8604d;

    /* renamed from: e, reason: collision with root package name */
    public final q.e f8605e;
    public final e.b f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f8606g;

    @r9.e(c = "coil.intercept.RealInterceptorChain", f = "RealInterceptorChain.kt", l = {25}, m = "proceed")
    public static final class a extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public i f8607a;

        /* renamed from: b, reason: collision with root package name */
        public h f8608b;

        /* renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f8609c;

        /* renamed from: e, reason: collision with root package name */
        public int f8611e;

        public a(p9.d<? super a> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f8609c = obj;
            this.f8611e |= Integer.MIN_VALUE;
            return i.this.c(null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public i(p.g gVar, List<? extends h> list, int r32, p.g gVar2, q.e eVar, e.b bVar, boolean z10) {
        this.f8601a = gVar;
        this.f8602b = list;
        this.f8603c = r32;
        this.f8604d = gVar2;
        this.f8605e = eVar;
        this.f = bVar;
        this.f8606g = z10;
    }

    @Override // k.h.a
    public final p.g a() {
        return this.f8604d;
    }

    public final void b(p.g gVar, h hVar) {
        Context context = gVar.f12117a;
        p.g gVar2 = this.f8601a;
        if (!(context == gVar2.f12117a)) {
            throw new IllegalStateException(("Interceptor '" + hVar + "' cannot modify the request's context.").toString());
        }
        if (!(gVar.f12118b != p.i.f12165a)) {
            throw new IllegalStateException(("Interceptor '" + hVar + "' cannot set the request's data to null.").toString());
        }
        if (!(gVar.f12119c == gVar2.f12119c)) {
            throw new IllegalStateException(("Interceptor '" + hVar + "' cannot modify the request's target.").toString());
        }
        if (!(gVar.A == gVar2.A)) {
            throw new IllegalStateException(("Interceptor '" + hVar + "' cannot modify the request's lifecycle.").toString());
        }
        if (gVar.B == gVar2.B) {
            return;
        }
        throw new IllegalStateException(("Interceptor '" + hVar + "' cannot modify the request's size resolver. Use `Interceptor.Chain.withSize` instead.").toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(p.g r14, p9.d<? super p.h> r15) throws java.lang.Throwable {
        /*
            r13 = this;
            boolean r0 = r15 instanceof k.i.a
            if (r0 == 0) goto L13
            r0 = r15
            k.i$a r0 = (k.i.a) r0
            int r1 = r0.f8611e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f8611e = r1
            goto L18
        L13:
            k.i$a r0 = new k.i$a
            r0.<init>(r15)
        L18:
            java.lang.Object r15 = r0.f8609c
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f8611e
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            k.h r14 = r0.f8608b
            k.i r0 = r0.f8607a
            c5.w.F(r15)
            goto L71
        L2b:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r15 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r15)
            throw r14
        L33:
            c5.w.F(r15)
            java.util.List<k.h> r15 = r13.f8602b
            int r2 = r13.f8603c
            if (r2 <= 0) goto L47
            int r4 = r2 + (-1)
            java.lang.Object r4 = r15.get(r4)
            k.h r4 = (k.h) r4
            r13.b(r14, r4)
        L47:
            java.lang.Object r15 = r15.get(r2)
            k.h r15 = (k.h) r15
            int r7 = r2 + 1
            q.e r9 = r13.f8605e
            k.i r2 = new k.i
            p.g r5 = r13.f8601a
            java.util.List<k.h> r6 = r13.f8602b
            e.b r10 = r13.f
            boolean r11 = r13.f8606g
            r4 = r2
            r8 = r14
            r4.<init>(r5, r6, r7, r8, r9, r10, r11)
            r0.f8607a = r13
            r0.f8608b = r15
            r0.f8611e = r3
            java.lang.Object r14 = r15.a(r2, r0)
            if (r14 != r1) goto L6d
            return r1
        L6d:
            r0 = r13
            r12 = r15
            r15 = r14
            r14 = r12
        L71:
            p.h r15 = (p.h) r15
            p.g r1 = r15.b()
            r0.b(r1, r14)
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: k.i.c(p.g, p9.d):java.lang.Object");
    }
}
