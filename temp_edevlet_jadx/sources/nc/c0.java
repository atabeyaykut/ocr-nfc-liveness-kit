package nc;

/* loaded from: classes2.dex */
public final class c0 {
    public static /* synthetic */ void a(int r32) {
        Object[] objArr = new Object[3];
        switch (r32) {
            case 1:
            case 4:
                objArr[0] = "b";
                break;
            case 2:
            case 7:
                objArr[0] = "typeCheckingProcedure";
                break;
            case 3:
            default:
                objArr[0] = "a";
                break;
            case 5:
            case 10:
                objArr[0] = "subtype";
                break;
            case 6:
            case 11:
                objArr[0] = "supertype";
                break;
            case 8:
                objArr[0] = "type";
                break;
            case 9:
                objArr[0] = "typeProjection";
                break;
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/types/checker/TypeCheckerProcedureCallbacksImpl";
        switch (r32) {
            case 3:
            case 4:
                objArr[2] = "assertEqualTypeConstructors";
                break;
            case 5:
            case 6:
            case 7:
                objArr[2] = "assertSubtype";
                break;
            case 8:
            case 9:
                objArr[2] = "capture";
                break;
            case 10:
            case 11:
                objArr[2] = "noCorrespondingSupertype";
                break;
            default:
                objArr[2] = "assertEqualTypes";
                break;
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public static boolean b(cc.c1 c1Var, cc.c1 c1Var2) {
        if (c1Var == null) {
            a(3);
            throw null;
        }
        if (c1Var2 != null) {
            return c1Var.equals(c1Var2);
        }
        a(4);
        throw null;
    }

    public static final String c(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    public static final String d(p9.d dVar) {
        Object objJ;
        if (dVar instanceof kotlinx.coroutines.internal.g) {
            return dVar.toString();
        }
        try {
            objJ = dVar + '@' + c(dVar);
        } catch (Throwable th2) {
            objJ = c5.w.j(th2);
        }
        if (l9.h.a(objJ) != null) {
            objJ = ((Object) dVar.getClass().getName()) + '@' + c(dVar);
        }
        return (String) objJ;
    }
}
