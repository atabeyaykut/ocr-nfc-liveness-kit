package yb;

import gb.b;
import ma.r0;

/* loaded from: classes2.dex */
public abstract class g0 {

    /* renamed from: a, reason: collision with root package name */
    public final ib.c f19408a;

    /* renamed from: b, reason: collision with root package name */
    public final ib.g f19409b;

    /* renamed from: c, reason: collision with root package name */
    public final r0 f19410c;

    public static final class a extends g0 {

        /* renamed from: d, reason: collision with root package name */
        public final gb.b f19411d;

        /* renamed from: e, reason: collision with root package name */
        public final a f19412e;
        public final lb.b f;

        /* renamed from: g, reason: collision with root package name */
        public final b.c f19413g;

        /* renamed from: h, reason: collision with root package name */
        public final boolean f19414h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(gb.b classProto, ib.c nameResolver, ib.g typeTable, r0 r0Var, a aVar) {
            super(nameResolver, typeTable, r0Var);
            kotlin.jvm.internal.h.f(classProto, "classProto");
            kotlin.jvm.internal.h.f(nameResolver, "nameResolver");
            kotlin.jvm.internal.h.f(typeTable, "typeTable");
            this.f19411d = classProto;
            this.f19412e = aVar;
            this.f = a6.a.n(nameResolver, classProto.f6211e);
            b.c cVar = (b.c) ib.b.f.c(classProto.f6210d);
            this.f19413g = cVar == null ? b.c.CLASS : cVar;
            this.f19414h = androidx.room.util.a.i(ib.b.f7329g, classProto.f6210d, "IS_INNER.get(classProto.flags)");
        }

        @Override // yb.g0
        public final lb.c a() {
            lb.c cVarB = this.f.b();
            kotlin.jvm.internal.h.e(cVarB, "classId.asSingleFqName()");
            return cVarB;
        }
    }

    public static final class b extends g0 {

        /* renamed from: d, reason: collision with root package name */
        public final lb.c f19415d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(lb.c fqName, ib.c nameResolver, ib.g typeTable, ac.g gVar) {
            super(nameResolver, typeTable, gVar);
            kotlin.jvm.internal.h.f(fqName, "fqName");
            kotlin.jvm.internal.h.f(nameResolver, "nameResolver");
            kotlin.jvm.internal.h.f(typeTable, "typeTable");
            this.f19415d = fqName;
        }

        @Override // yb.g0
        public final lb.c a() {
            return this.f19415d;
        }
    }

    public g0(ib.c cVar, ib.g gVar, r0 r0Var) {
        this.f19408a = cVar;
        this.f19409b = gVar;
        this.f19410c = r0Var;
    }

    public abstract lb.c a();

    public final String toString() {
        return getClass().getSimpleName() + ": " + a();
    }
}
