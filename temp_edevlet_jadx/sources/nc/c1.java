package nc;

import java.util.concurrent.CancellationException;

/* loaded from: classes2.dex */
public final class c1 extends CancellationException {

    /* renamed from: a, reason: collision with root package name */
    public final b1 f10787a;

    public c1(String str, Throwable th2, b1 b1Var) {
        super(str);
        this.f10787a = b1Var;
        if (th2 != null) {
            initCause(th2);
        }
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof c1) {
                c1 c1Var = (c1) obj;
                if (!kotlin.jvm.internal.h.a(c1Var.getMessage(), getMessage()) || !kotlin.jvm.internal.h.a(c1Var.f10787a, this.f10787a) || !kotlin.jvm.internal.h.a(c1Var.getCause(), getCause())) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public final int hashCode() {
        String message = getMessage();
        kotlin.jvm.internal.h.c(message);
        int r12 = (this.f10787a.hashCode() + (message.hashCode() * 31)) * 31;
        Throwable cause = getCause();
        return r12 + (cause == null ? 0 : cause.hashCode());
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return super.toString() + "; job=" + this.f10787a;
    }
}
