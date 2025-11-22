package ic;

/* loaded from: classes2.dex */
public interface f {

    public static final class a {
        public static String a(f fVar, ma.u functionDescriptor) {
            kotlin.jvm.internal.h.f(functionDescriptor, "functionDescriptor");
            if (fVar.b(functionDescriptor)) {
                return null;
            }
            return fVar.getDescription();
        }
    }

    String a(ma.u uVar);

    boolean b(ma.u uVar);

    String getDescription();
}
