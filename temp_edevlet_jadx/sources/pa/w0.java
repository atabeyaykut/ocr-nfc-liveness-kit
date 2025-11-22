package pa;

import java.util.Collections;
import java.util.List;
import ma.a1;
import ma.b1;

/* loaded from: classes2.dex */
public abstract class w0 extends q implements b1 {

    /* renamed from: e, reason: collision with root package name */
    public cc.e0 f13008e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w0(ma.j jVar, na.h hVar, lb.f fVar, cc.e0 e0Var, ma.r0 r0Var) {
        super(jVar, hVar, fVar, r0Var);
        if (jVar == null) {
            C(0);
            throw null;
        }
        if (hVar == null) {
            C(1);
            throw null;
        }
        if (fVar == null) {
            C(2);
            throw null;
        }
        if (r0Var == null) {
            C(3);
            throw null;
        }
        this.f13008e = e0Var;
    }

    public static /* synthetic */ void C(int r6) {
        String str;
        int r22;
        switch (r6) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (r6) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                r22 = 2;
                break;
            default:
                r22 = 3;
                break;
        }
        Object[] objArr = new Object[r22];
        switch (r6) {
            case 1:
                objArr[0] = "annotations";
                break;
            case 2:
                objArr[0] = "name";
                break;
            case 3:
                objArr[0] = "source";
                break;
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (r6) {
            case 4:
                objArr[1] = "getType";
                break;
            case 5:
                objArr[1] = "getOriginal";
                break;
            case 6:
                objArr[1] = "getValueParameters";
                break;
            case 7:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 8:
                objArr[1] = "getTypeParameters";
                break;
            case 9:
                objArr[1] = "getContextReceiverParameters";
                break;
            case 10:
                objArr[1] = "getReturnType";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl";
                break;
        }
        switch (r6) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (r6) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                throw new IllegalStateException(str2);
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    @Override // ma.a
    public boolean B() {
        return false;
    }

    public ma.o0 a0() {
        return null;
    }

    @Override // ma.a
    public final List<a1> g() {
        List<a1> listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        C(6);
        throw null;
    }

    public cc.e0 getReturnType() {
        cc.e0 type = getType();
        if (type != null) {
            return type;
        }
        C(10);
        throw null;
    }

    @Override // ma.z0
    public final cc.e0 getType() {
        cc.e0 e0Var = this.f13008e;
        if (e0Var != null) {
            return e0Var;
        }
        C(4);
        throw null;
    }

    public List<ma.w0> getTypeParameters() {
        List<ma.w0> listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        C(8);
        throw null;
    }

    public ma.o0 h0() {
        return null;
    }
}
