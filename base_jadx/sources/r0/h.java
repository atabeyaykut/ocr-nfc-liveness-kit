package r0;

/* loaded from: classes.dex */
public abstract class h {

    public static final class a extends kotlin.jvm.internal.j implements x9.l<da.l<?, ?>, CharSequence> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f13746a = new a();

        public a() {
            super(1);
        }

        @Override // x9.l
        public final CharSequence invoke(da.l<?, ?> lVar) {
            da.l<?, ?> it = lVar;
            kotlin.jvm.internal.h.f(it, "it");
            return it.getName();
        }
    }

    public final h a(da.l<?, ?>... lVarArr) {
        if (this instanceof z0) {
            return z0.f13892a;
        }
        if (this instanceof e1) {
            return new e1(m9.k.v0(lVarArr, ",", androidx.camera.camera2.internal.c.h(new StringBuilder(), ((e1) this).f13738a, "_"), null, a.f13746a, 28));
        }
        throw new j7.p();
    }
}
