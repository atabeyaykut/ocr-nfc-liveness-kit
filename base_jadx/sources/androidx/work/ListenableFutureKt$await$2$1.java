package androidx.work;

import c5.w;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import m5.a;
import nc.i;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0000H\n"}, d2 = {"R", "Ll9/m;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class ListenableFutureKt$await$2$1 implements Runnable {
    final /* synthetic */ i<R> $cancellableContinuation;
    final /* synthetic */ a<R> $this_await;

    /* JADX WARN: Multi-variable type inference failed */
    public ListenableFutureKt$await$2$1(i<? super R> iVar, a<R> aVar) {
        this.$cancellableContinuation = iVar;
        this.$this_await = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.$cancellableContinuation.resumeWith(this.$this_await.get());
        } catch (Throwable th2) {
            Throwable cause = th2.getCause();
            if (cause == null) {
                cause = th2;
            }
            if (th2 instanceof CancellationException) {
                this.$cancellableContinuation.x(cause);
            } else {
                this.$cancellableContinuation.resumeWith(w.j(cause));
            }
        }
    }
}
