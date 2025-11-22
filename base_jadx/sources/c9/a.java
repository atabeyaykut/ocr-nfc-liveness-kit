package c9;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: c9.a$a, reason: collision with other inner class name */
    public static class C0054a extends Throwable {
        public C0054a() {
            super("No further exceptions");
        }

        @Override // java.lang.Throwable
        public final Throwable fillInStackTrace() {
            return this;
        }
    }

    static {
        new C0054a();
    }

    public static RuntimeException a(Throwable th2) {
        if (th2 instanceof Error) {
            throw ((Error) th2);
        }
        return th2 instanceof RuntimeException ? (RuntimeException) th2 : new RuntimeException(th2);
    }
}
