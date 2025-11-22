package pa;

import cc.p1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import ma.a;
import ma.b;

/* loaded from: classes2.dex */
public abstract class k0 extends q implements ma.k0 {

    /* renamed from: e, reason: collision with root package name */
    public boolean f12928e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final ma.a0 f12929g;

    /* renamed from: h, reason: collision with root package name */
    public final ma.l0 f12930h;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f12931j;

    /* renamed from: k, reason: collision with root package name */
    public final b.a f12932k;

    /* renamed from: l, reason: collision with root package name */
    public ma.q f12933l;

    /* renamed from: m, reason: collision with root package name */
    public ma.u f12934m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k0(ma.a0 a0Var, ma.q qVar, ma.l0 l0Var, na.h hVar, lb.f fVar, boolean z10, boolean z11, boolean z12, b.a aVar, ma.r0 r0Var) {
        super(l0Var.b(), hVar, fVar, r0Var);
        if (a0Var == null) {
            C(0);
            throw null;
        }
        if (qVar == null) {
            C(1);
            throw null;
        }
        if (hVar == null) {
            C(3);
            throw null;
        }
        if (r0Var == null) {
            C(5);
            throw null;
        }
        this.f12934m = null;
        this.f12929g = a0Var;
        this.f12933l = qVar;
        this.f12930h = l0Var;
        this.f12928e = z10;
        this.f = z11;
        this.f12931j = z12;
        this.f12932k = aVar;
    }

    public static /* synthetic */ void C(int r6) {
        String str;
        int r22;
        switch (r6) {
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 7:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (r6) {
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                r22 = 2;
                break;
            case 7:
            default:
                r22 = 3;
                break;
        }
        Object[] objArr = new Object[r22];
        switch (r6) {
            case 1:
                objArr[0] = "visibility";
                break;
            case 2:
                objArr[0] = "correspondingProperty";
                break;
            case 3:
                objArr[0] = "annotations";
                break;
            case 4:
                objArr[0] = "name";
                break;
            case 5:
                objArr[0] = "source";
                break;
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl";
                break;
            case 7:
                objArr[0] = "substitutor";
                break;
            case 16:
                objArr[0] = "overriddenDescriptors";
                break;
            default:
                objArr[0] = "modality";
                break;
        }
        switch (r6) {
            case 6:
                objArr[1] = "getKind";
                break;
            case 7:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl";
                break;
            case 8:
                objArr[1] = "substitute";
                break;
            case 9:
                objArr[1] = "getTypeParameters";
                break;
            case 10:
                objArr[1] = "getModality";
                break;
            case 11:
                objArr[1] = "getVisibility";
                break;
            case 12:
                objArr[1] = "getCorrespondingVariable";
                break;
            case 13:
                objArr[1] = "getCorrespondingProperty";
                break;
            case 14:
                objArr[1] = "getContextReceiverParameters";
                break;
            case 15:
                objArr[1] = "getOverriddenDescriptors";
                break;
        }
        switch (r6) {
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                break;
            case 7:
                objArr[2] = "substitute";
                break;
            case 16:
                objArr[2] = "setOverriddenDescriptors";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (r6) {
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                throw new IllegalStateException(str2);
            case 7:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    @Override // ma.k0
    public final ma.l0 A0() {
        ma.l0 l0Var = this.f12930h;
        if (l0Var != null) {
            return l0Var;
        }
        C(13);
        throw null;
    }

    @Override // ma.a
    public final boolean B() {
        return false;
    }

    @Override // ma.u
    public final boolean B0() {
        return false;
    }

    @Override // ma.z
    public final boolean D0() {
        return false;
    }

    @Override // pa.q
    /* renamed from: E0 */
    public abstract ma.k0 a();

    @Override // ma.z
    public final boolean G() {
        return false;
    }

    public final ArrayList K0(boolean z10) {
        ArrayList arrayList = new ArrayList(0);
        for (ma.l0 l0Var : A0().e()) {
            ma.m mVarL = z10 ? l0Var.l() : l0Var.f();
            if (mVarL != null) {
                arrayList.add(mVarL);
            }
        }
        return arrayList;
    }

    @Override // ma.u
    public final boolean L() {
        return false;
    }

    @Override // ma.k0
    public final boolean Q() {
        return this.f12928e;
    }

    @Override // ma.u
    public final ma.u Y() {
        return this.f12934m;
    }

    @Override // ma.a
    public final <V> V Z(a.InterfaceC0187a<V> interfaceC0187a) {
        return null;
    }

    @Override // ma.a
    public final ma.o0 a0() {
        return A0().a0();
    }

    @Override // ma.b
    public final ma.b b0(ma.j jVar, ma.a0 a0Var, ma.o oVar) {
        throw new UnsupportedOperationException("Accessors must be copied by the corresponding property");
    }

    @Override // ma.t0
    public final /* bridge */ /* synthetic */ ma.k c(p1 p1Var) {
        c(p1Var);
        return this;
    }

    @Override // ma.u, ma.t0
    public final ma.u c(p1 p1Var) {
        if (p1Var != null) {
            return this;
        }
        C(7);
        throw null;
    }

    @Override // ma.a
    public final List<ma.w0> getTypeParameters() {
        List<ma.w0> listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        C(9);
        throw null;
    }

    @Override // ma.n, ma.z
    public final ma.q getVisibility() {
        ma.q qVar = this.f12933l;
        if (qVar != null) {
            return qVar;
        }
        C(11);
        throw null;
    }

    @Override // ma.a
    public final ma.o0 h0() {
        return A0().h0();
    }

    @Override // ma.z
    public final boolean isExternal() {
        return this.f;
    }

    @Override // ma.u
    public final boolean isInfix() {
        return false;
    }

    @Override // ma.u
    public final boolean isInline() {
        return this.f12931j;
    }

    @Override // ma.u
    public final boolean isOperator() {
        return false;
    }

    @Override // ma.u
    public final boolean isSuspend() {
        return false;
    }

    @Override // ma.z
    public final ma.a0 j() {
        ma.a0 a0Var = this.f12929g;
        if (a0Var != null) {
            return a0Var;
        }
        C(10);
        throw null;
    }

    @Override // ma.b
    public final b.a k0() {
        b.a aVar = this.f12932k;
        if (aVar != null) {
            return aVar;
        }
        C(6);
        throw null;
    }

    @Override // ma.a
    public final List<ma.o0> p0() {
        List<ma.o0> listP0 = A0().p0();
        if (listP0 != null) {
            return listP0;
        }
        C(14);
        throw null;
    }

    @Override // ma.u
    public final boolean v0() {
        return false;
    }

    @Override // ma.b
    public final void w0(Collection<? extends ma.b> collection) {
        if (collection != null) {
            return;
        }
        C(16);
        throw null;
    }
}
