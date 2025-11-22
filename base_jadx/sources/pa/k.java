package pa;

import cc.c1;
import cc.t1;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import ma.r0;

/* loaded from: classes2.dex */
public abstract class k extends q implements ma.w0 {

    /* renamed from: e, reason: collision with root package name */
    public final t1 f12921e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final int f12922g;

    /* renamed from: h, reason: collision with root package name */
    public final bc.i<c1> f12923h;

    /* renamed from: j, reason: collision with root package name */
    public final bc.i<cc.m0> f12924j;

    /* renamed from: k, reason: collision with root package name */
    public final bc.l f12925k;

    public class a extends cc.h {

        /* renamed from: c, reason: collision with root package name */
        public final ma.u0 f12926c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ k f12927d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(k kVar, bc.l lVar, ma.u0 u0Var) {
            super(lVar);
            if (lVar == null) {
                k(0);
                throw null;
            }
            this.f12927d = kVar;
            this.f12926c = u0Var;
        }

        public static /* synthetic */ void k(int r11) {
            String str = (r11 == 1 || r11 == 2 || r11 == 3 || r11 == 4 || r11 == 5 || r11 == 8) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(r11 == 1 || r11 == 2 || r11 == 3 || r11 == 4 || r11 == 5 || r11 == 8) ? 2 : 3];
            switch (r11) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 8:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor";
                    break;
                case 6:
                    objArr[0] = "type";
                    break;
                case 7:
                    objArr[0] = "supertypes";
                    break;
                case 9:
                    objArr[0] = "classifier";
                    break;
                default:
                    objArr[0] = "storageManager";
                    break;
            }
            if (r11 == 1) {
                objArr[1] = "computeSupertypes";
            } else if (r11 == 2) {
                objArr[1] = "getParameters";
            } else if (r11 == 3) {
                objArr[1] = "getDeclarationDescriptor";
            } else if (r11 == 4) {
                objArr[1] = "getBuiltIns";
            } else if (r11 == 5) {
                objArr[1] = "getSupertypeLoopChecker";
            } else if (r11 != 8) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor";
            } else {
                objArr[1] = "processSupertypesWithoutCycles";
            }
            switch (r11) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 8:
                    break;
                case 6:
                    objArr[2] = "reportSupertypeLoopError";
                    break;
                case 7:
                    objArr[2] = "processSupertypesWithoutCycles";
                    break;
                case 9:
                    objArr[2] = "isSameClassifier";
                    break;
                default:
                    objArr[2] = "<init>";
                    break;
            }
            String str2 = String.format(str, objArr);
            if (r11 != 1 && r11 != 2 && r11 != 3 && r11 != 4 && r11 != 5 && r11 != 8) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        @Override // cc.n
        public final boolean c(ma.g gVar) {
            if (gVar instanceof ma.w0) {
                k a10 = this.f12927d;
                kotlin.jvm.internal.h.f(a10, "a");
                if (ob.g.f11276a.b(a10, (ma.w0) gVar, true, ob.f.f11275a)) {
                    return true;
                }
            }
            return false;
        }

        @Override // cc.h
        public final Collection<cc.e0> d() {
            List<cc.e0> listL0 = this.f12927d.L0();
            if (listL0 != null) {
                return listL0;
            }
            k(1);
            throw null;
        }

        @Override // cc.h
        public final cc.e0 e() {
            return ec.i.c(ec.h.CYCLIC_UPPER_BOUNDS, new String[0]);
        }

        @Override // cc.h
        public final ma.u0 g() {
            ma.u0 u0Var = this.f12926c;
            if (u0Var != null) {
                return u0Var;
            }
            k(5);
            throw null;
        }

        @Override // cc.c1
        public final List<ma.w0> getParameters() {
            List<ma.w0> listEmptyList = Collections.emptyList();
            if (listEmptyList != null) {
                return listEmptyList;
            }
            k(2);
            throw null;
        }

        @Override // cc.h
        public final List<cc.e0> i(List<cc.e0> list) {
            List<cc.e0> listE0 = this.f12927d.E0(list);
            if (listE0 != null) {
                return listE0;
            }
            k(8);
            throw null;
        }

        @Override // cc.h
        public final void j(cc.e0 e0Var) {
            if (e0Var != null) {
                this.f12927d.K0(e0Var);
            } else {
                k(6);
                throw null;
            }
        }

        @Override // cc.c1
        public final ja.k m() {
            ja.k kVarE = sb.b.e(this.f12927d);
            if (kVarE != null) {
                return kVarE;
            }
            k(4);
            throw null;
        }

        @Override // cc.n, cc.c1
        public final ma.g n() {
            k kVar = this.f12927d;
            if (kVar != null) {
                return kVar;
            }
            k(3);
            throw null;
        }

        @Override // cc.c1
        public final boolean o() {
            return true;
        }

        public final String toString() {
            return this.f12927d.getName().f9676a;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public k(bc.l lVar, ma.j jVar, na.h hVar, lb.f fVar, t1 t1Var, boolean z10, int r92, ma.u0 u0Var) {
        r0.a aVar = ma.r0.f10243a;
        if (lVar == null) {
            C(0);
            throw null;
        }
        if (jVar == null) {
            C(1);
            throw null;
        }
        if (hVar == null) {
            C(2);
            throw null;
        }
        if (fVar == null) {
            C(3);
            throw null;
        }
        if (t1Var == null) {
            C(4);
            throw null;
        }
        if (u0Var == null) {
            C(6);
            throw null;
        }
        super(jVar, hVar, fVar, aVar);
        this.f12921e = t1Var;
        this.f = z10;
        this.f12922g = r92;
        this.f12923h = lVar.d(new h(this, lVar, u0Var));
        this.f12924j = lVar.d(new j(this, fVar));
        this.f12925k = lVar;
    }

    public static /* synthetic */ void C(int r6) {
        String str;
        int r22;
        switch (r6) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 12:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (r6) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                r22 = 2;
                break;
            case 12:
            default:
                r22 = 3;
                break;
        }
        Object[] objArr = new Object[r22];
        switch (r6) {
            case 1:
                objArr[0] = "containingDeclaration";
                break;
            case 2:
                objArr[0] = "annotations";
                break;
            case 3:
                objArr[0] = "name";
                break;
            case 4:
                objArr[0] = "variance";
                break;
            case 5:
                objArr[0] = "source";
                break;
            case 6:
                objArr[0] = "supertypeLoopChecker";
                break;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor";
                break;
            case 12:
                objArr[0] = "bounds";
                break;
            default:
                objArr[0] = "storageManager";
                break;
        }
        switch (r6) {
            case 7:
                objArr[1] = "getVariance";
                break;
            case 8:
                objArr[1] = "getUpperBounds";
                break;
            case 9:
                objArr[1] = "getTypeConstructor";
                break;
            case 10:
                objArr[1] = "getDefaultType";
                break;
            case 11:
                objArr[1] = "getOriginal";
                break;
            case 12:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor";
                break;
            case 13:
                objArr[1] = "processBoundsWithoutCycles";
                break;
            case 14:
                objArr[1] = "getStorageManager";
                break;
        }
        switch (r6) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                break;
            case 12:
                objArr[2] = "processBoundsWithoutCycles";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (r6) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                throw new IllegalStateException(str2);
            case 12:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    @Override // ma.w0
    public final boolean A() {
        return this.f;
    }

    public List<cc.e0> E0(List<cc.e0> list) {
        return list;
    }

    @Override // ma.w0
    public final t1 I() {
        t1 t1Var = this.f12921e;
        if (t1Var != null) {
            return t1Var;
        }
        C(7);
        throw null;
    }

    public abstract void K0(cc.e0 e0Var);

    public abstract List<cc.e0> L0();

    @Override // pa.q, pa.p, ma.j
    public final ma.g a() {
        return this;
    }

    @Override // pa.q, pa.p, ma.j
    public final ma.j a() {
        return this;
    }

    @Override // pa.q, pa.p, ma.j
    public final ma.w0 a() {
        return this;
    }

    @Override // ma.w0
    public final bc.l d0() {
        bc.l lVar = this.f12925k;
        if (lVar != null) {
            return lVar;
        }
        C(14);
        throw null;
    }

    @Override // ma.w0
    public final int getIndex() {
        return this.f12922g;
    }

    @Override // ma.w0
    public final List<cc.e0> getUpperBounds() {
        List<cc.e0> listL = ((a) i()).l();
        if (listL != null) {
            return listL;
        }
        C(8);
        throw null;
    }

    @Override // ma.w0, ma.g
    public final c1 i() {
        c1 c1VarInvoke = this.f12923h.invoke();
        if (c1VarInvoke != null) {
            return c1VarInvoke;
        }
        C(9);
        throw null;
    }

    @Override // ma.w0
    public final boolean l0() {
        return false;
    }

    @Override // ma.j
    public final <R, D> R o0(ma.l<R, D> lVar, D d10) {
        return lVar.i(this, d10);
    }

    @Override // ma.g
    public final cc.m0 q() {
        cc.m0 m0VarInvoke = this.f12924j.invoke();
        if (m0VarInvoke != null) {
            return m0VarInvoke;
        }
        C(10);
        throw null;
    }

    @Override // pa.q
    /* renamed from: z0 */
    public final ma.m a() {
        return this;
    }
}
