package wa;

/* loaded from: classes2.dex */
public interface k {

    /* renamed from: a, reason: collision with root package name */
    public static final a f18853a = new a();

    public static class a implements k {
        public static /* synthetic */ void a(int r32) {
            Object[] objArr = new Object[3];
            switch (r32) {
                case 1:
                    objArr[0] = "owner";
                    break;
                case 2:
                    objArr[0] = "returnType";
                    break;
                case 3:
                    objArr[0] = "valueParameters";
                    break;
                case 4:
                    objArr[0] = "typeParameters";
                    break;
                case 5:
                    objArr[0] = "descriptor";
                    break;
                case 6:
                    objArr[0] = "signatureErrors";
                    break;
                default:
                    objArr[0] = "method";
                    break;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$1";
            if (r32 == 5 || r32 == 6) {
                objArr[2] = "reportSignatureErrors";
            } else {
                objArr[2] = "resolvePropagatedSignature";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }
    }

    public static class b {
        public static /* synthetic */ void a(int r10) {
            String str = (r10 == 4 || r10 == 5 || r10 == 6 || r10 == 7) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(r10 == 4 || r10 == 5 || r10 == 6 || r10 == 7) ? 2 : 3];
            switch (r10) {
                case 1:
                    objArr[0] = "valueParameters";
                    break;
                case 2:
                    objArr[0] = "typeParameters";
                    break;
                case 3:
                    objArr[0] = "signatureErrors";
                    break;
                case 4:
                case 5:
                case 6:
                case 7:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature";
                    break;
                default:
                    objArr[0] = "returnType";
                    break;
            }
            if (r10 == 4) {
                objArr[1] = "getReturnType";
            } else if (r10 == 5) {
                objArr[1] = "getValueParameters";
            } else if (r10 == 6) {
                objArr[1] = "getTypeParameters";
            } else if (r10 != 7) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature";
            } else {
                objArr[1] = "getErrors";
            }
            if (r10 != 4 && r10 != 5 && r10 != 6 && r10 != 7) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (r10 != 4 && r10 != 5 && r10 != 6 && r10 != 7) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }
    }
}
