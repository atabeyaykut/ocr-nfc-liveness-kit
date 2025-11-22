package pa;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import ma.a1;
import ma.b;

/* loaded from: classes2.dex */
public final class m0 extends k0 implements ma.m0 {

    /* renamed from: n, reason: collision with root package name */
    public cc.e0 f12961n;

    /* renamed from: p, reason: collision with root package name */
    public final ma.m0 f12962p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public m0(ma.l0 l0Var, na.h hVar, ma.a0 a0Var, ma.q qVar, boolean z10, boolean z11, boolean z12, b.a aVar, ma.m0 m0Var, ma.r0 r0Var) {
        m0 m0Var2;
        m0 m0Var3;
        super(a0Var, qVar, l0Var, hVar, lb.f.v("<get-" + l0Var.getName() + ">"), z10, z11, z12, aVar, r0Var);
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
        if (m0Var != 0) {
            m0Var3 = this;
            m0Var2 = m0Var;
        } else {
            m0Var2 = this;
            m0Var3 = m0Var2;
        }
        m0Var3.f12962p = m0Var2;
    }

    public static /* synthetic */ void C(int r92) {
        String str = (r92 == 6 || r92 == 7 || r92 == 8) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(r92 == 6 || r92 == 7 || r92 == 8) ? 2 : 3];
        switch (r92) {
            case 1:
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
            case 7:
            case 8:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl";
                break;
            default:
                objArr[0] = "correspondingProperty";
                break;
        }
        if (r92 == 6) {
            objArr[1] = "getOverriddenDescriptors";
        } else if (r92 == 7) {
            objArr[1] = "getValueParameters";
        } else if (r92 != 8) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl";
        } else {
            objArr[1] = "getOriginal";
        }
        if (r92 != 6 && r92 != 7 && r92 != 8) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (r92 != 6 && r92 != 7 && r92 != 8) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // pa.k0, pa.q
    /* renamed from: L0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final ma.m0 a() {
        ma.m0 m0Var = this.f12962p;
        if (m0Var != null) {
            return m0Var;
        }
        C(8);
        throw null;
    }

    public final void M0(cc.e0 e0Var) {
        if (e0Var == null) {
            e0Var = A0().getType();
        }
        this.f12961n = e0Var;
    }

    @Override // ma.u, ma.b, ma.a
    public final Collection<? extends ma.m0> e() {
        return K0(true);
    }

    @Override // ma.a
    public final List<a1> g() {
        List<a1> listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        C(7);
        throw null;
    }

    @Override // ma.a
    public final cc.e0 getReturnType() {
        return this.f12961n;
    }

    @Override // ma.j
    public final <R, D> R o0(ma.l<R, D> lVar, D d10) {
        return lVar.j(this, d10);
    }
}
