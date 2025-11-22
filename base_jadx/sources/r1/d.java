package r1;

/* loaded from: classes.dex */
public abstract class d {

    public static class a extends d {

        /* renamed from: a, reason: collision with root package name */
        public volatile boolean f13897a;

        public final void a() {
            if (this.f13897a) {
                throw new IllegalStateException("Already released");
            }
        }
    }
}
