package kotlinx.coroutines.internal;

/* loaded from: classes2.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f9175a = 0;

    static {
        Object objJ;
        Object objJ2;
        try {
            objJ = r9.a.class.getCanonicalName();
        } catch (Throwable th2) {
            objJ = c5.w.j(th2);
        }
        if (l9.h.a(objJ) != null) {
            objJ = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
        }
        try {
            objJ2 = t.class.getCanonicalName();
        } catch (Throwable th3) {
            objJ2 = c5.w.j(th3);
        }
        if (l9.h.a(objJ2) != null) {
            objJ2 = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
        }
    }
}
