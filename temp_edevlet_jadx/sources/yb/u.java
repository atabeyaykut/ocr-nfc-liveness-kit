package yb;

import java.util.ArrayList;

/* loaded from: classes2.dex */
public interface u {

    /* renamed from: k0, reason: collision with root package name */
    public static final a f19485k0 = new a();

    public static class a implements u {
        public static /* synthetic */ void a(int r42) {
            Object[] objArr = new Object[3];
            if (r42 != 1) {
                objArr[0] = "descriptor";
            } else {
                objArr[0] = "unresolvedSuperClasses";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter$1";
            if (r42 != 2) {
                objArr[2] = "reportIncompleteHierarchy";
            } else {
                objArr[2] = "reportCannotInferVisibility";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // yb.u
        public final void h(pa.b bVar, ArrayList arrayList) {
            if (bVar != null) {
                return;
            }
            a(0);
            throw null;
        }

        @Override // yb.u
        public final void k(ma.b bVar) {
            if (bVar != null) {
                return;
            }
            a(2);
            throw null;
        }
    }

    void h(pa.b bVar, ArrayList arrayList);

    void k(ma.b bVar);
}
