package pa;

import cc.p1;
import cc.t1;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import ma.a1;
import ma.p;

/* loaded from: classes2.dex */
public abstract class d extends p implements ma.o0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(na.h hVar) {
        super(hVar, lb.h.f9682d);
        if (hVar != null) {
        } else {
            C(0);
            throw null;
        }
    }

    public static /* synthetic */ void C(int r6) {
        String str;
        int r22;
        switch (r6) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (r6) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                r22 = 2;
                break;
            default:
                r22 = 3;
                break;
        }
        Object[] objArr = new Object[r22];
        switch (r6) {
            case 1:
                objArr[0] = "substitutor";
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor";
                break;
            default:
                objArr[0] = "annotations";
                break;
        }
        switch (r6) {
            case 2:
                objArr[1] = "getContextReceiverParameters";
                break;
            case 3:
                objArr[1] = "getTypeParameters";
                break;
            case 4:
                objArr[1] = "getType";
                break;
            case 5:
                objArr[1] = "getValueParameters";
                break;
            case 6:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 7:
                objArr[1] = "getVisibility";
                break;
            case 8:
                objArr[1] = "getOriginal";
                break;
            case 9:
                objArr[1] = "getSource";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor";
                break;
        }
        switch (r6) {
            case 1:
                objArr[2] = "substitute";
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (r6) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                throw new IllegalStateException(str2);
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    @Override // ma.a
    public final boolean B() {
        return false;
    }

    @Override // pa.p, ma.j
    public final ma.a a() {
        return this;
    }

    @Override // pa.p, ma.j
    public final ma.j a() {
        return this;
    }

    @Override // ma.a
    public final ma.o0 a0() {
        return null;
    }

    @Override // ma.t0
    public final d c(p1 p1Var) {
        cc.e0 type;
        t1 t1Var;
        if (p1Var == null) {
            C(1);
            throw null;
        }
        if (p1Var.h()) {
            return this;
        }
        if (b() instanceof ma.e) {
            type = getType();
            t1Var = t1.OUT_VARIANCE;
        } else {
            type = getType();
            t1Var = t1.INVARIANT;
        }
        cc.e0 e0VarK = p1Var.k(type, t1Var);
        if (e0VarK == null) {
            return null;
        }
        return e0VarK == getType() ? this : new o0(b(), new wb.j(e0VarK), getAnnotations());
    }

    @Override // ma.a
    public final Collection<? extends ma.a> e() {
        Set setEmptySet = Collections.emptySet();
        if (setEmptySet != null) {
            return setEmptySet;
        }
        C(6);
        throw null;
    }

    @Override // ma.a
    public final List<a1> g() {
        List<a1> listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        C(5);
        throw null;
    }

    @Override // ma.a
    public final cc.e0 getReturnType() {
        return getType();
    }

    @Override // ma.m
    public final ma.r0 getSource() {
        return ma.r0.f10243a;
    }

    @Override // ma.z0
    public final cc.e0 getType() {
        cc.e0 type = getValue().getType();
        if (type != null) {
            return type;
        }
        C(4);
        throw null;
    }

    @Override // ma.a
    public final List<ma.w0> getTypeParameters() {
        List<ma.w0> listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        C(3);
        throw null;
    }

    @Override // ma.n, ma.z
    public final ma.q getVisibility() {
        p.i iVar = ma.p.f;
        if (iVar != null) {
            return iVar;
        }
        C(7);
        throw null;
    }

    @Override // ma.a
    public final ma.o0 h0() {
        return null;
    }

    @Override // ma.j
    public final <R, D> R o0(ma.l<R, D> lVar, D d10) {
        return lVar.g(this, d10);
    }
}
