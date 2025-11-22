package k;

import java.util.List;
import k.a;
import l9.m;
import nc.a0;
import p.k;
import x9.p;

@r9.e(c = "coil.intercept.EngineInterceptor$transform$3", f = "EngineInterceptor.kt", l = {242}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class g extends r9.i implements p<a0, p9.d<? super a.C0160a>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public List f8590a;

    /* renamed from: b, reason: collision with root package name */
    public k f8591b;

    /* renamed from: c, reason: collision with root package name */
    public int f8592c;

    /* renamed from: d, reason: collision with root package name */
    public int f8593d;

    /* renamed from: e, reason: collision with root package name */
    public int f8594e;
    public /* synthetic */ Object f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ a f8595g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ a.C0160a f8596h;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ k f8597j;

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ List<s.b> f8598k;

    /* renamed from: l, reason: collision with root package name */
    public final /* synthetic */ e.b f8599l;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ p.g f8600m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public g(a aVar, a.C0160a c0160a, k kVar, List<? extends s.b> list, e.b bVar, p.g gVar, p9.d<? super g> dVar) {
        super(2, dVar);
        this.f8595g = aVar;
        this.f8596h = c0160a;
        this.f8597j = kVar;
        this.f8598k = list;
        this.f8599l = bVar;
        this.f8600m = gVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        g gVar = new g(this.f8595g, this.f8596h, this.f8597j, this.f8598k, this.f8599l, this.f8600m, dVar);
        gVar.f = obj;
        return gVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super a.C0160a> dVar) {
        return ((g) create(a0Var, dVar)).invokeSuspend(m.f9594a);
    }

    /* JADX WARN: Path cross not found for [B:16:0x0053, B:10:0x003b], limit reached: 25 */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a2  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0091 -> B:23:0x0094). Please report as a decompilation issue!!! */
    @Override // r9.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) throws java.lang.Throwable {
        /*
            r12 = this;
            q9.a r0 = q9.a.COROUTINE_SUSPENDED
            int r1 = r12.f8594e
            r2 = 1
            if (r1 == 0) goto L25
            if (r1 != r2) goto L1d
            int r1 = r12.f8593d
            int r3 = r12.f8592c
            p.k r4 = r12.f8591b
            java.util.List r5 = r12.f8590a
            java.util.List r5 = (java.util.List) r5
            java.lang.Object r6 = r12.f
            nc.a0 r6 = (nc.a0) r6
            c5.w.F(r13)
            r7 = r12
            goto L94
        L1d:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r0)
            throw r13
        L25:
            c5.w.F(r13)
            java.lang.Object r13 = r12.f
            nc.a0 r13 = (nc.a0) r13
            k.a$a r1 = r12.f8596h
            android.graphics.drawable.Drawable r1 = r1.f8536a
            k.a r3 = r12.f8595g
            r3.getClass()
            boolean r3 = r1 instanceof android.graphics.drawable.BitmapDrawable
            p.k r4 = r12.f8597j
            if (r3 == 0) goto L53
            r3 = r1
            android.graphics.drawable.BitmapDrawable r3 = (android.graphics.drawable.BitmapDrawable) r3
            android.graphics.Bitmap r3 = r3.getBitmap()
            android.graphics.Bitmap$Config r5 = r3.getConfig()
            if (r5 != 0) goto L4a
            android.graphics.Bitmap$Config r5 = android.graphics.Bitmap.Config.ARGB_8888
        L4a:
            android.graphics.Bitmap$Config[] r6 = u.c.f17726a
            boolean r5 = m9.k.o0(r6, r5)
            if (r5 == 0) goto L53
            goto L5f
        L53:
            android.graphics.Bitmap$Config r3 = r4.f12167b
            int r5 = r4.f12170e
            boolean r6 = r4.f
            q.e r7 = r4.f12169d
            android.graphics.Bitmap r3 = u.e.a(r1, r3, r7, r5, r6)
        L5f:
            e.b r1 = r12.f8599l
            r1.n()
            java.util.List<s.b> r1 = r12.f8598k
            int r5 = r1.size()
            r6 = 0
            r7 = r12
            r11 = r5
            r5 = r1
            r1 = r11
        L6f:
            if (r6 >= r1) goto La2
            int r8 = r6 + 1
            java.lang.Object r6 = r5.get(r6)
            s.b r6 = (s.b) r6
            q.e r9 = r4.f12169d
            r7.f = r13
            r10 = r5
            java.util.List r10 = (java.util.List) r10
            r7.f8590a = r10
            r7.f8591b = r4
            r7.f8592c = r8
            r7.f8593d = r1
            r7.f8594e = r2
            android.graphics.Bitmap r3 = r6.a(r3, r9)
            if (r3 != r0) goto L91
            return r0
        L91:
            r6 = r13
            r13 = r3
            r3 = r8
        L94:
            android.graphics.Bitmap r13 = (android.graphics.Bitmap) r13
            p9.f r8 = r6.getCoroutineContext()
            x5.a.h(r8)
            r11 = r3
            r3 = r13
            r13 = r6
            r6 = r11
            goto L6f
        La2:
            e.b r13 = r7.f8599l
            r13.j()
            p.g r13 = r7.f8600m
            android.content.Context r13 = r13.f12117a
            android.content.res.Resources r13 = r13.getResources()
            android.graphics.drawable.BitmapDrawable r0 = new android.graphics.drawable.BitmapDrawable
            r0.<init>(r13, r3)
            k.a$a r13 = r7.f8596h
            boolean r1 = r13.f8537b
            k.a$a r2 = new k.a$a
            int r3 = r13.f8538c
            java.lang.String r13 = r13.f8539d
            r2.<init>(r0, r1, r3, r13)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: k.g.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
