package pa;

import cc.l1;
import cc.p1;
import cc.q1;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class b extends b0 {

    /* renamed from: a, reason: collision with root package name */
    public final lb.f f12877a;

    /* renamed from: b, reason: collision with root package name */
    public final bc.i<cc.m0> f12878b;

    /* renamed from: c, reason: collision with root package name */
    public final bc.i<vb.i> f12879c;

    /* renamed from: d, reason: collision with root package name */
    public final bc.i<ma.o0> f12880d;

    public class a implements x9.a<cc.m0> {
        public a() {
        }

        @Override // x9.a
        public final cc.m0 invoke() {
            b bVar = b.this;
            return q1.p(bVar, bVar.C0(), new pa.a(this));
        }
    }

    /* renamed from: pa.b$b, reason: collision with other inner class name */
    public class C0217b implements x9.a<vb.i> {
        public C0217b() {
        }

        @Override // x9.a
        public final vb.i invoke() {
            return new vb.g(b.this.C0());
        }
    }

    public class c implements x9.a<ma.o0> {
        public c() {
        }

        @Override // x9.a
        public final ma.o0 invoke() {
            return new y(b.this);
        }
    }

    public b(bc.l lVar, lb.f fVar) {
        if (lVar == null) {
            z0(0);
            throw null;
        }
        if (fVar == null) {
            z0(1);
            throw null;
        }
        this.f12877a = fVar;
        this.f12878b = lVar.d(new a());
        this.f12879c = lVar.d(new C0217b());
        this.f12880d = lVar.d(new c());
    }

    public static /* synthetic */ void z0(int r19) {
        String str = (r19 == 2 || r19 == 3 || r19 == 4 || r19 == 5 || r19 == 6 || r19 == 9 || r19 == 12 || r19 == 14 || r19 == 16 || r19 == 17 || r19 == 19 || r19 == 20) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(r19 == 2 || r19 == 3 || r19 == 4 || r19 == 5 || r19 == 6 || r19 == 9 || r19 == 12 || r19 == 14 || r19 == 16 || r19 == 17 || r19 == 19 || r19 == 20) ? 2 : 3];
        switch (r19) {
            case 1:
                objArr[0] = "name";
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            case 17:
            case 19:
            case 20:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor";
                break;
            case 7:
            case 13:
                objArr[0] = "typeArguments";
                break;
            case 8:
            case 11:
                objArr[0] = "kotlinTypeRefiner";
                break;
            case 10:
            case 15:
                objArr[0] = "typeSubstitution";
                break;
            case 18:
                objArr[0] = "substitutor";
                break;
            default:
                objArr[0] = "storageManager";
                break;
        }
        if (r19 == 2) {
            objArr[1] = "getName";
        } else if (r19 == 3) {
            objArr[1] = "getOriginal";
        } else if (r19 == 4) {
            objArr[1] = "getUnsubstitutedInnerClassesScope";
        } else if (r19 == 5) {
            objArr[1] = "getThisAsReceiverParameter";
        } else if (r19 == 6) {
            objArr[1] = "getContextReceivers";
        } else if (r19 == 9 || r19 == 12 || r19 == 14 || r19 == 16) {
            objArr[1] = "getMemberScope";
        } else if (r19 == 17) {
            objArr[1] = "getUnsubstitutedMemberScope";
        } else if (r19 == 19) {
            objArr[1] = "substitute";
        } else if (r19 != 20) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor";
        } else {
            objArr[1] = "getDefaultType";
        }
        switch (r19) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            case 17:
            case 19:
            case 20:
                break;
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
                objArr[2] = "getMemberScope";
                break;
            case 18:
                objArr[2] = "substitute";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (r19 != 2 && r19 != 3 && r19 != 4 && r19 != 5 && r19 != 6 && r19 != 9 && r19 != 12 && r19 != 14 && r19 != 16 && r19 != 17 && r19 != 19 && r19 != 20) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // pa.b0
    public vb.i C(l1 l1Var, dc.f fVar) {
        if (l1Var == null) {
            z0(10);
            throw null;
        }
        if (fVar == null) {
            z0(11);
            throw null;
        }
        if (!l1Var.e()) {
            return new vb.n(e0(fVar), p1.e(l1Var));
        }
        vb.i iVarE0 = e0(fVar);
        if (iVarE0 != null) {
            return iVarE0;
        }
        z0(12);
        throw null;
    }

    @Override // ma.e
    public vb.i C0() {
        vb.i iVarE0 = e0(sb.b.i(ob.i.d(this)));
        if (iVarE0 != null) {
            return iVarE0;
        }
        z0(17);
        throw null;
    }

    @Override // ma.t0
    /* renamed from: E0, reason: merged with bridge method [inline-methods] */
    public ma.e c(p1 p1Var) {
        if (p1Var != null) {
            return p1Var.h() ? this : new a0(this, p1Var);
        }
        z0(18);
        throw null;
    }

    @Override // ma.e
    public List<ma.o0> F0() {
        List<ma.o0> listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        z0(6);
        throw null;
    }

    @Override // ma.e
    public final vb.i J(l1 l1Var) {
        if (l1Var == null) {
            z0(15);
            throw null;
        }
        vb.i iVarC = C(l1Var, sb.b.i(ob.i.d(this)));
        if (iVarC != null) {
            return iVarC;
        }
        z0(16);
        throw null;
    }

    @Override // ma.e
    public final ma.o0 J0() {
        ma.o0 o0VarInvoke = this.f12880d.invoke();
        if (o0VarInvoke != null) {
            return o0VarInvoke;
        }
        z0(5);
        throw null;
    }

    @Override // pa.b0, ma.e, ma.j
    public final ma.e a() {
        return this;
    }

    @Override // pa.b0, ma.e, ma.j
    public final ma.g a() {
        return this;
    }

    @Override // pa.b0, ma.j
    public final ma.j a() {
        return this;
    }

    @Override // ma.j
    public final lb.f getName() {
        lb.f fVar = this.f12877a;
        if (fVar != null) {
            return fVar;
        }
        z0(2);
        throw null;
    }

    @Override // ma.j
    public final <R, D> R o0(ma.l<R, D> lVar, D d10) {
        return lVar.f(this, d10);
    }

    @Override // ma.e, ma.g
    public final cc.m0 q() {
        cc.m0 m0VarInvoke = this.f12878b.invoke();
        if (m0VarInvoke != null) {
            return m0VarInvoke;
        }
        z0(20);
        throw null;
    }

    @Override // ma.e
    public vb.i x0() {
        vb.i iVarInvoke = this.f12879c.invoke();
        if (iVarInvoke != null) {
            return iVarInvoke;
        }
        z0(4);
        throw null;
    }
}
