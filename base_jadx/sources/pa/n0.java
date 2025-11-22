package pa;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import ma.a1;
import ma.b;

/* loaded from: classes2.dex */
public final class n0 extends k0 implements ma.n0 {

    /* renamed from: n, reason: collision with root package name */
    public a1 f12969n;

    /* renamed from: p, reason: collision with root package name */
    public final ma.n0 f12970p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public n0(ma.l0 l0Var, na.h hVar, ma.a0 a0Var, ma.q qVar, boolean z10, boolean z11, boolean z12, b.a aVar, ma.n0 n0Var, ma.r0 r0Var) {
        n0 n0Var2;
        n0 n0Var3;
        super(a0Var, qVar, l0Var, hVar, lb.f.v("<set-" + l0Var.getName() + ">"), z10, z11, z12, aVar, r0Var);
        if (hVar == null) {
            C(1);
            throw null;
        }
        if (a0Var == null) {
            C(2);
            throw null;
        }
        if (qVar == null) {
            C(3);
            throw null;
        }
        if (aVar == null) {
            C(4);
            throw null;
        }
        if (r0Var == null) {
            C(5);
            throw null;
        }
        if (n0Var != 0) {
            n0Var3 = this;
            n0Var2 = n0Var;
        } else {
            n0Var2 = this;
            n0Var3 = n0Var2;
        }
        n0Var3.f12970p = n0Var2;
    }

    public static /* synthetic */ void C(int r6) {
        String str;
        int r22;
        switch (r6) {
            case 10:
            case 11:
            case 12:
            case 13:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (r6) {
            case 10:
            case 11:
            case 12:
            case 13:
                r22 = 2;
                break;
            default:
                r22 = 3;
                break;
        }
        Object[] objArr = new Object[r22];
        switch (r6) {
            case 1:
            case 9:
                objArr[0] = "annotations";
                break;
            case 2:
                objArr[0] = "modality";
                break;
            case 3:
                objArr[0] = "visibility";
                break;
            case 4:
                objArr[0] = "kind";
                break;
            case 5:
                objArr[0] = "source";
                break;
            case 6:
                objArr[0] = "parameter";
                break;
            case 7:
                objArr[0] = "setterDescriptor";
                break;
            case 8:
                objArr[0] = "type";
                break;
            case 10:
            case 11:
            case 12:
            case 13:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl";
                break;
            default:
                objArr[0] = "correspondingProperty";
                break;
        }
        switch (r6) {
            case 10:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 11:
                objArr[1] = "getValueParameters";
                break;
            case 12:
                objArr[1] = "getReturnType";
                break;
            case 13:
                objArr[1] = "getOriginal";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl";
                break;
        }
        switch (r6) {
            case 6:
                objArr[2] = "initialize";
                break;
            case 7:
            case 8:
            case 9:
                objArr[2] = "createSetterParameter";
                break;
            case 10:
            case 11:
            case 12:
            case 13:
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (r6) {
            case 10:
            case 11:
            case 12:
            case 13:
                throw new IllegalStateException(str2);
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    public static v0 L0(n0 n0Var, cc.e0 e0Var, na.h hVar) {
        if (e0Var == null) {
            C(8);
            throw null;
        }
        if (hVar != null) {
            return new v0(n0Var, null, 0, hVar, lb.h.f9684g, e0Var, false, false, false, null, ma.r0.f10243a);
        }
        C(9);
        throw null;
    }

    @Override // pa.k0, pa.q
    /* renamed from: M0, reason: merged with bridge method [inline-methods] */
    public final ma.n0 a() {
        ma.n0 n0Var = this.f12970p;
        if (n0Var != null) {
            return n0Var;
        }
        C(13);
        throw null;
    }

    @Override // ma.u, ma.b, ma.a
    public final Collection<? extends ma.n0> e() {
        return K0(false);
    }

    @Override // ma.a
    public final List<a1> g() {
        a1 a1Var = this.f12969n;
        if (a1Var == null) {
            throw new IllegalStateException();
        }
        List<a1> listSingletonList = Collections.singletonList(a1Var);
        if (listSingletonList != null) {
            return listSingletonList;
        }
        C(11);
        throw null;
    }

    @Override // ma.a
    public final cc.e0 getReturnType() {
        cc.m0 m0VarW = sb.b.e(this).w();
        if (m0VarW != null) {
            return m0VarW;
        }
        C(12);
        throw null;
    }

    @Override // ma.j
    public final <R, D> R o0(ma.l<R, D> lVar, D d10) {
        return lVar.c(this, d10);
    }
}
