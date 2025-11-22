package k;

import k.h;
import l9.m;
import n.b;
import nc.a0;
import p.k;
import p.n;
import x9.p;

@r9.e(c = "coil.intercept.EngineInterceptor$intercept$2", f = "EngineInterceptor.kt", l = {75}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class f extends r9.i implements p<a0, p9.d<? super n>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f8583a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a f8584b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ p.g f8585c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f8586d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ k f8587e;
    public final /* synthetic */ e.b f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ b.a f8588g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ h.a f8589h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(a aVar, p.g gVar, Object obj, k kVar, e.b bVar, b.a aVar2, h.a aVar3, p9.d<? super f> dVar) {
        super(2, dVar);
        this.f8584b = aVar;
        this.f8585c = gVar;
        this.f8586d = obj;
        this.f8587e = kVar;
        this.f = bVar;
        this.f8588g = aVar2;
        this.f8589h = aVar3;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        return new f(this.f8584b, this.f8585c, this.f8586d, this.f8587e, this.f, this.f8588g, this.f8589h, dVar);
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super n> dVar) {
        return ((f) create(a0Var, dVar)).invokeSuspend(m.f9594a);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0088  */
    @Override // r9.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) throws java.lang.Throwable {
        /*
            r14 = this;
            q9.a r0 = q9.a.COROUTINE_SUSPENDED
            int r1 = r14.f8583a
            r2 = 1
            if (r1 == 0) goto L15
            if (r1 != r2) goto Ld
            c5.w.F(r15)
            goto L2c
        Ld:
            java.lang.IllegalStateException r15 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r15.<init>(r0)
            throw r15
        L15:
            c5.w.F(r15)
            k.a r3 = r14.f8584b
            p.g r4 = r14.f8585c
            java.lang.Object r5 = r14.f8586d
            p.k r6 = r14.f8587e
            e.b r7 = r14.f
            r14.f8583a = r2
            r8 = r14
            java.lang.Object r15 = k.a.c(r3, r4, r5, r6, r7, r8)
            if (r15 != r0) goto L2c
            return r0
        L2c:
            k.a$a r15 = (k.a.C0160a) r15
            k.a r0 = r14.f8584b
            n.c r0 = r0.f8535c
            r0.getClass()
            p.g r1 = r14.f8585c
            int r1 = r1.f12135t
            boolean r1 = androidx.camera.core.impl.utils.f.e(r1)
            r3 = 0
            r4 = 0
            n.b$a r5 = r14.f8588g
            if (r1 != 0) goto L44
            goto L88
        L44:
            e.f r0 = r0.f10462a
            n.b r0 = r0.b()
            if (r0 == 0) goto L88
            if (r5 != 0) goto L4f
            goto L88
        L4f:
            android.graphics.drawable.Drawable r1 = r15.f8536a
            boolean r6 = r1 instanceof android.graphics.drawable.BitmapDrawable
            if (r6 == 0) goto L58
            android.graphics.drawable.BitmapDrawable r1 = (android.graphics.drawable.BitmapDrawable) r1
            goto L59
        L58:
            r1 = r4
        L59:
            if (r1 != 0) goto L5d
            r1 = r4
            goto L61
        L5d:
            android.graphics.Bitmap r1 = r1.getBitmap()
        L61:
            if (r1 != 0) goto L64
            goto L88
        L64:
            java.util.LinkedHashMap r6 = new java.util.LinkedHashMap
            r6.<init>()
            boolean r7 = r15.f8537b
            java.lang.Boolean r7 = java.lang.Boolean.valueOf(r7)
            java.lang.String r8 = "coil#is_sampled"
            r6.put(r8, r7)
            java.lang.String r7 = r15.f8539d
            if (r7 != 0) goto L79
            goto L7e
        L79:
            java.lang.String r8 = "coil#disk_cache_key"
            r6.put(r8, r7)
        L7e:
            n.b$b r7 = new n.b$b
            r7.<init>(r1, r6)
            r0.c(r5, r7)
            r0 = 1
            goto L89
        L88:
            r0 = 0
        L89:
            android.graphics.drawable.Drawable r7 = r15.f8536a
            p.g r8 = r14.f8585c
            int r9 = r15.f8538c
            if (r0 == 0) goto L93
            r10 = r5
            goto L94
        L93:
            r10 = r4
        L94:
            java.lang.String r11 = r15.f8539d
            boolean r12 = r15.f8537b
            android.graphics.Bitmap$Config[] r15 = u.c.f17726a
            k.h$a r15 = r14.f8589h
            boolean r0 = r15 instanceof k.i
            if (r0 == 0) goto La8
            k.i r15 = (k.i) r15
            boolean r15 = r15.f8606g
            if (r15 == 0) goto La8
            r13 = 1
            goto La9
        La8:
            r13 = 0
        La9:
            p.n r15 = new p.n
            r6 = r15
            r6.<init>(r7, r8, r9, r10, r11, r12, r13)
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: k.f.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
