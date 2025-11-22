package r0;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class i<T> extends b<T> {

    /* renamed from: b, reason: collision with root package name */
    public final Throwable f13749b;

    /* renamed from: c, reason: collision with root package name */
    public final T f13750c;

    public /* synthetic */ i() {
        throw null;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public i(Object obj, Throwable error) {
        super(obj);
        kotlin.jvm.internal.h.f(error, "error");
        this.f13749b = error;
        this.f13750c = obj;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof i)) {
            return false;
        }
        Throwable th2 = ((i) obj).f13749b;
        Throwable th3 = this.f13749b;
        if (!kotlin.jvm.internal.h.a(kotlin.jvm.internal.w.a(th3.getClass()), kotlin.jvm.internal.w.a(th2.getClass())) || !kotlin.jvm.internal.h.a(th3.getMessage(), th2.getMessage())) {
            return false;
        }
        StackTraceElement[] stackTrace = th3.getStackTrace();
        kotlin.jvm.internal.h.e(stackTrace, "error.stackTrace");
        StackTraceElement stackTraceElement = (StackTraceElement) m9.k.r0(stackTrace);
        StackTraceElement[] stackTrace2 = th2.getStackTrace();
        kotlin.jvm.internal.h.e(stackTrace2, "otherError.stackTrace");
        return kotlin.jvm.internal.h.a(stackTraceElement, (StackTraceElement) m9.k.r0(stackTrace2));
    }

    public final int hashCode() {
        Throwable th2 = this.f13749b;
        StackTraceElement[] stackTrace = th2.getStackTrace();
        kotlin.jvm.internal.h.e(stackTrace, "error.stackTrace");
        return Arrays.hashCode(new Object[]{kotlin.jvm.internal.w.a(th2.getClass()), th2.getMessage(), m9.k.r0(stackTrace)});
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Fail(error=");
        sb2.append(this.f13749b);
        sb2.append(", value=");
        return androidx.camera.core.impl.a.e(sb2, this.f13750c, ")");
    }
}
