package eb;

import eb.h;
import java.util.HashMap;
import java.util.List;
import ma.r0;

/* loaded from: classes2.dex */
public final class i extends h.a {

    /* renamed from: b, reason: collision with root package name */
    public final HashMap<lb.f, qb.g<?>> f5206b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ h f5207c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ma.e f5208d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ lb.b f5209e;
    public final /* synthetic */ List<na.c> f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ r0 f5210g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(h hVar, ma.e eVar, lb.b bVar, List<na.c> list, r0 r0Var) {
        super();
        this.f5207c = hVar;
        this.f5208d = eVar;
        this.f5209e = bVar;
        this.f = list;
        this.f5210g = r0Var;
        this.f5206b = new HashMap<>();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003d  */
    @Override // eb.s.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            r6 = this;
            java.util.HashMap<lb.f, qb.g<?>> r0 = r6.f5206b
            eb.h r1 = r6.f5207c
            r1.getClass()
            lb.b r2 = r6.f5209e
            java.lang.String r3 = "annotationClassId"
            kotlin.jvm.internal.h.f(r2, r3)
            java.lang.String r3 = "arguments"
            kotlin.jvm.internal.h.f(r0, r3)
            lb.b r3 = ia.b.f7318b
            boolean r3 = kotlin.jvm.internal.h.a(r2, r3)
            if (r3 != 0) goto L1c
            goto L3d
        L1c:
            java.lang.String r3 = "value"
            lb.f r3 = lb.f.t(r3)
            java.lang.Object r3 = r0.get(r3)
            boolean r4 = r3 instanceof qb.s
            r5 = 0
            if (r4 == 0) goto L2e
            qb.s r3 = (qb.s) r3
            goto L2f
        L2e:
            r3 = r5
        L2f:
            if (r3 != 0) goto L32
            goto L3d
        L32:
            T r3 = r3.f13469a
            boolean r4 = r3 instanceof qb.s.a.b
            if (r4 == 0) goto L3b
            r5 = r3
            qb.s$a$b r5 = (qb.s.a.b) r5
        L3b:
            if (r5 != 0) goto L3f
        L3d:
            r3 = 0
            goto L47
        L3f:
            qb.f r3 = r5.f13483a
            lb.b r3 = r3.f13467a
            boolean r3 = r1.p(r3)
        L47:
            if (r3 == 0) goto L4a
            return
        L4a:
            boolean r1 = r1.p(r2)
            if (r1 == 0) goto L51
            return
        L51:
            na.d r1 = new na.d
            ma.e r2 = r6.f5208d
            cc.m0 r2 = r2.q()
            ma.r0 r3 = r6.f5210g
            r1.<init>(r2, r0, r3)
            java.util.List<na.c> r0 = r6.f
            r0.add(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: eb.i.a():void");
    }

    @Override // eb.h.a
    public final void g(lb.f fVar, qb.g<?> gVar) {
        if (fVar != null) {
            this.f5206b.put(fVar, gVar);
        }
    }
}
