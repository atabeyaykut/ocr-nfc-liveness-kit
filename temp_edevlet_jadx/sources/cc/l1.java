package cc;

/* loaded from: classes2.dex */
public abstract class l1 {

    /* renamed from: a, reason: collision with root package name */
    public static final a f2330a = new a();

    public static final class a extends l1 {
        @Override // cc.l1
        public final i1 d(e0 e0Var) {
            return null;
        }

        public final String toString() {
            return "Empty TypeSubstitution";
        }
    }

    public boolean a() {
        return false;
    }

    public boolean b() {
        return false;
    }

    public na.h c(na.h annotations) {
        kotlin.jvm.internal.h.f(annotations, "annotations");
        return annotations;
    }

    public abstract i1 d(e0 e0Var);

    public boolean e() {
        return this instanceof a;
    }

    public e0 f(e0 topLevelType, t1 position) {
        kotlin.jvm.internal.h.f(topLevelType, "topLevelType");
        kotlin.jvm.internal.h.f(position, "position");
        return topLevelType;
    }
}
