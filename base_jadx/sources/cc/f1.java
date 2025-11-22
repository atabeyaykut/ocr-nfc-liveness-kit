package cc;

import bc.c;

/* loaded from: classes2.dex */
public final class f1 {

    /* renamed from: a, reason: collision with root package name */
    public final c5.v f2300a;

    /* renamed from: b, reason: collision with root package name */
    public final x5.a f2301b;

    /* renamed from: c, reason: collision with root package name */
    public final l9.j f2302c;

    /* renamed from: d, reason: collision with root package name */
    public final c.k f2303d;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final ma.w0 f2304a;

        /* renamed from: b, reason: collision with root package name */
        public final x f2305b;

        public a(ma.w0 typeParameter, x typeAttr) {
            kotlin.jvm.internal.h.f(typeParameter, "typeParameter");
            kotlin.jvm.internal.h.f(typeAttr, "typeAttr");
            this.f2304a = typeParameter;
            this.f2305b = typeAttr;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return kotlin.jvm.internal.h.a(aVar.f2304a, this.f2304a) && kotlin.jvm.internal.h.a(aVar.f2305b, this.f2305b);
        }

        public final int hashCode() {
            int r02 = this.f2304a.hashCode();
            return this.f2305b.hashCode() + (r02 * 31) + r02;
        }

        public final String toString() {
            return "DataToEraseUpperBound(typeParameter=" + this.f2304a + ", typeAttr=" + this.f2305b + ')';
        }
    }

    public f1(ab.f fVar) {
        x5.a aVar = new x5.a();
        this.f2300a = fVar;
        this.f2301b = aVar;
        bc.c cVar = new bc.c("Type parameter upper bound erasure results");
        this.f2302c = c5.y.w(new g1(this));
        this.f2303d = cVar.g(new h1(this));
    }

    public final e0 a(ma.w0 typeParameter, x typeAttr) {
        kotlin.jvm.internal.h.f(typeParameter, "typeParameter");
        kotlin.jvm.internal.h.f(typeAttr, "typeAttr");
        Object objInvoke = this.f2303d.invoke(new a(typeParameter, typeAttr));
        kotlin.jvm.internal.h.e(objInvoke, "getErasedUpperBound(Data…typeParameter, typeAttr))");
        return (e0) objInvoke;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final n9.f b(cc.p1 r18, java.util.List r19, cc.x r20) {
        /*
            Method dump skipped, instructions count: 554
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cc.f1.b(cc.p1, java.util.List, cc.x):n9.f");
    }
}
