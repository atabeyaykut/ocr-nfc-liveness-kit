package androidx.lifecycle;

import java.io.Closeable;
import kotlin.Metadata;
import nc.a0;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\u0004\u001a\u00020\u0003H\u0016R\u001a\u0010\u0006\u001a\u00020\u00058\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Landroidx/lifecycle/CloseableCoroutineScope;", "Ljava/io/Closeable;", "Lnc/a0;", "Ll9/m;", "close", "Lp9/f;", "coroutineContext", "Lp9/f;", "getCoroutineContext", "()Lp9/f;", "context", "<init>", "(Lp9/f;)V", "lifecycle-viewmodel-ktx_release"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes.dex */
public final class CloseableCoroutineScope implements Closeable, a0 {
    private final p9.f coroutineContext;

    public CloseableCoroutineScope(p9.f context) {
        kotlin.jvm.internal.h.f(context, "context");
        this.coroutineContext = context;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        x5.a.d(getCoroutineContext(), null);
    }

    @Override // nc.a0
    public p9.f getCoroutineContext() {
        return this.coroutineContext;
    }
}
