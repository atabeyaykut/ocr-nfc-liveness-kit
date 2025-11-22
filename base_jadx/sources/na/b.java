package na;

/* loaded from: classes2.dex */
public class b implements a {

    /* renamed from: a, reason: collision with root package name */
    public final h f10633a;

    public b(h hVar) {
        if (hVar != null) {
            this.f10633a = hVar;
        } else {
            C(0);
            throw null;
        }
    }

    public static /* synthetic */ void C(int r72) {
        String str = r72 != 1 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[r72 != 1 ? 3 : 2];
        if (r72 != 1) {
            objArr[0] = "annotations";
        } else {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotatedImpl";
        }
        if (r72 != 1) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotatedImpl";
        } else {
            objArr[1] = "getAnnotations";
        }
        if (r72 != 1) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (r72 == 1) {
            throw new IllegalStateException(str2);
        }
    }

    @Override // na.a
    public h getAnnotations() {
        h hVar = this.f10633a;
        if (hVar != null) {
            return hVar;
        }
        C(1);
        throw null;
    }
}
