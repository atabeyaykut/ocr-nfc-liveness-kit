package pa;

import cc.t1;
import java.util.ArrayList;
import java.util.List;
import ma.u0;
import na.h;

/* loaded from: classes2.dex */
public final class t0 extends k {

    /* renamed from: l, reason: collision with root package name */
    public final x9.l<cc.e0, Void> f12994l;

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f12995m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f12996n;

    /* JADX WARN: Illegal instructions before constructor call */
    public t0(ma.j jVar, na.h hVar, boolean z10, t1 t1Var, lb.f fVar, int r17, bc.l lVar) {
        u0.a aVar = u0.a.f10247a;
        if (jVar == null) {
            C(19);
            throw null;
        }
        if (hVar == null) {
            C(20);
            throw null;
        }
        if (t1Var == null) {
            C(21);
            throw null;
        }
        if (fVar == null) {
            C(22);
            throw null;
        }
        if (lVar == null) {
            C(25);
            throw null;
        }
        super(lVar, jVar, hVar, fVar, t1Var, z10, r17, aVar);
        this.f12995m = new ArrayList(1);
        this.f12996n = false;
        this.f12994l = null;
    }

    public static /* synthetic */ void C(int r82) {
        String str = (r82 == 5 || r82 == 28) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(r82 == 5 || r82 == 28) ? 2 : 3];
        switch (r82) {
            case 1:
            case 7:
            case 13:
            case 20:
                objArr[0] = "annotations";
                break;
            case 2:
            case 8:
            case 14:
            case 21:
                objArr[0] = "variance";
                break;
            case 3:
            case 9:
            case 15:
            case 22:
                objArr[0] = "name";
                break;
            case 4:
            case 11:
            case 18:
            case 25:
                objArr[0] = "storageManager";
                break;
            case 5:
            case 28:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl";
                break;
            case 6:
            case 12:
            case 19:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 10:
            case 16:
            case 23:
                objArr[0] = "source";
                break;
            case 17:
                objArr[0] = "supertypeLoopsResolver";
                break;
            case 24:
                objArr[0] = "supertypeLoopsChecker";
                break;
            case 26:
                objArr[0] = "bound";
                break;
            case 27:
                objArr[0] = "type";
                break;
        }
        if (r82 == 5) {
            objArr[1] = "createWithDefaultBound";
        } else if (r82 != 28) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl";
        } else {
            objArr[1] = "resolveUpperBounds";
        }
        switch (r82) {
            case 5:
            case 28:
                break;
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
                objArr[2] = "createForFurtherModification";
                break;
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
                objArr[2] = "<init>";
                break;
            case 26:
                objArr[2] = "addUpperBound";
                break;
            case 27:
                objArr[2] = "reportSupertypeLoopError";
                break;
            default:
                objArr[2] = "createWithDefaultBound";
                break;
        }
        String str2 = String.format(str, objArr);
        if (r82 != 5 && r82 != 28) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static t0 N0(ma.j jVar, na.h hVar, boolean z10, t1 t1Var, lb.f fVar, int r14, bc.l lVar) {
        if (jVar == null) {
            C(6);
            throw null;
        }
        if (hVar == null) {
            C(7);
            throw null;
        }
        if (t1Var == null) {
            C(8);
            throw null;
        }
        if (fVar == null) {
            C(9);
            throw null;
        }
        if (lVar != null) {
            return new t0(jVar, hVar, z10, t1Var, fVar, r14, lVar);
        }
        C(11);
        throw null;
    }

    public static t0 O0(ma.j jVar, t1 t1Var, lb.f fVar, int r10, bc.l lVar) {
        h.a.C0201a c0201a = h.a.f10653a;
        if (jVar == null) {
            C(0);
            throw null;
        }
        if (lVar == null) {
            C(4);
            throw null;
        }
        t0 t0VarN0 = N0(jVar, c0201a, false, t1Var, fVar, r10, lVar);
        cc.m0 m0VarO = sb.b.e(jVar).o();
        t0VarN0.M0();
        if (!c5.v.y(m0VarO)) {
            t0VarN0.f12995m.add(m0VarO);
        }
        t0VarN0.M0();
        t0VarN0.f12996n = true;
        return t0VarN0;
    }

    @Override // pa.k
    public final void K0(cc.e0 e0Var) {
        if (e0Var == null) {
            C(27);
            throw null;
        }
        x9.l<cc.e0, Void> lVar = this.f12994l;
        if (lVar == null) {
            return;
        }
        lVar.invoke(e0Var);
    }

    @Override // pa.k
    public final List<cc.e0> L0() {
        if (!this.f12996n) {
            throw new IllegalStateException("Type parameter descriptor is not initialized: " + P0());
        }
        ArrayList arrayList = this.f12995m;
        if (arrayList != null) {
            return arrayList;
        }
        C(28);
        throw null;
    }

    public final void M0() {
        if (this.f12996n) {
            throw new IllegalStateException("Type parameter descriptor is already initialized: " + P0());
        }
    }

    public final String P0() {
        return getName() + " declared in " + ob.i.g(b());
    }
}
