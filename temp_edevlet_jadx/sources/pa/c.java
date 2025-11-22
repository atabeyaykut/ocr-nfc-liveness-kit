package pa;

import cc.t1;

/* loaded from: classes2.dex */
public abstract class c extends k {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(bc.l lVar, ma.j jVar, na.h hVar, lb.f fVar, t1 t1Var, boolean z10, int r82, ma.u0 u0Var) {
        super(lVar, jVar, hVar, fVar, t1Var, z10, r82, u0Var);
        if (lVar == null) {
            C(0);
            throw null;
        }
        if (jVar == null) {
            C(1);
            throw null;
        }
        if (fVar == null) {
            C(3);
            throw null;
        }
        if (u0Var != null) {
        } else {
            C(6);
            throw null;
        }
    }

    public static /* synthetic */ void C(int r22) {
        Object[] objArr = new Object[3];
        switch (r22) {
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
            default:
                objArr[0] = "storageManager";
                break;
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractLazyTypeParameterDescriptor";
        objArr[2] = "<init>";
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    @Override // pa.p
    public final String toString() {
        Object[] objArr = new Object[3];
        String str = "";
        objArr[0] = this.f ? "reified " : "";
        if (I() != t1.INVARIANT) {
            str = I() + " ";
        }
        objArr[1] = str;
        objArr[2] = getName();
        return String.format("%s%s%s", objArr);
    }
}
