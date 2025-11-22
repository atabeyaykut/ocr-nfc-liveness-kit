package qb;

import cc.a1;
import cc.e0;
import cc.f0;
import cc.k1;
import cc.m0;
import cc.s1;
import ja.o;
import ma.b0;

/* loaded from: classes2.dex */
public final class s extends g<a> {

    public static abstract class a {

        /* renamed from: qb.s$a$a, reason: collision with other inner class name */
        public static final class C0225a extends a {

            /* renamed from: a, reason: collision with root package name */
            public final e0 f13482a;

            public C0225a(e0 e0Var) {
                this.f13482a = e0Var;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof C0225a) && kotlin.jvm.internal.h.a(this.f13482a, ((C0225a) obj).f13482a);
            }

            public final int hashCode() {
                return this.f13482a.hashCode();
            }

            public final String toString() {
                return "LocalClass(type=" + this.f13482a + ')';
            }
        }

        public static final class b extends a {

            /* renamed from: a, reason: collision with root package name */
            public final f f13483a;

            public b(f fVar) {
                this.f13483a = fVar;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof b) && kotlin.jvm.internal.h.a(this.f13483a, ((b) obj).f13483a);
            }

            public final int hashCode() {
                return this.f13483a.hashCode();
            }

            public final String toString() {
                return "NormalClass(value=" + this.f13483a + ')';
            }
        }
    }

    public s(lb.b bVar, int r32) {
        super(new a.b(new f(bVar, r32)));
    }

    public s(a.C0225a c0225a) {
        super(c0225a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // qb.g
    public final e0 a(b0 module) {
        e0 e0VarC;
        kotlin.jvm.internal.h.f(module, "module");
        a1.f2258b.getClass();
        a1 a1Var = a1.f2259c;
        ja.k kVarM = module.m();
        kVarM.getClass();
        ma.e eVarJ = kVarM.j(o.a.P.h());
        T t10 = this.f13469a;
        a aVar = (a) t10;
        if (aVar instanceof a.C0225a) {
            e0VarC = ((a.C0225a) t10).f13482a;
        } else {
            if (!(aVar instanceof a.b)) {
                throw new j7.p();
            }
            f fVar = ((a.b) t10).f13483a;
            lb.b bVar = fVar.f13467a;
            ma.e eVarA = ma.t.a(module, bVar);
            int r32 = fVar.f13468b;
            if (eVarA == null) {
                ec.h hVar = ec.h.UNRESOLVED_KCLASS_CONSTANT_VALUE;
                String string = bVar.toString();
                kotlin.jvm.internal.h.e(string, "classId.toString()");
                e0VarC = ec.i.c(hVar, string, String.valueOf(r32));
            } else {
                m0 m0VarQ = eVarA.q();
                kotlin.jvm.internal.h.e(m0VarQ, "descriptor.defaultType");
                s1 s1VarA = c5.y.A(m0VarQ);
                for (int r6 = 0; r6 < r32; r6++) {
                    s1VarA = module.m().h(s1VarA);
                }
                e0VarC = s1VarA;
            }
        }
        return f0.e(a1Var, eVarJ, b8.f.S(new k1(e0VarC)));
    }

    public s(f fVar) {
        super(new a.b(fVar));
    }
}
