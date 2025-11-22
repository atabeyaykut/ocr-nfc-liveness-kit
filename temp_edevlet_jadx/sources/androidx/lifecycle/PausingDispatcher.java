package androidx.lifecycle;

import kotlin.Metadata;
import kotlinx.coroutines.internal.m;
import nc.j0;
import nc.y;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001c\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\n\u0010\b\u001a\u00060\u0006j\u0002`\u0007H\u0016R\u0014\u0010\f\u001a\u00020\u000b8\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Landroidx/lifecycle/PausingDispatcher;", "Lnc/y;", "Lp9/f;", "context", "", "isDispatchNeeded", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "Ll9/m;", "dispatch", "Landroidx/lifecycle/DispatchQueue;", "dispatchQueue", "Landroidx/lifecycle/DispatchQueue;", "<init>", "()V", "lifecycle-runtime-ktx_release"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes.dex */
public final class PausingDispatcher extends y {
    public final DispatchQueue dispatchQueue = new DispatchQueue();

    @Override // nc.y
    public void dispatch(p9.f context, Runnable block) {
        kotlin.jvm.internal.h.f(context, "context");
        kotlin.jvm.internal.h.f(block, "block");
        this.dispatchQueue.dispatchAndEnqueue(context, block);
    }

    @Override // nc.y
    public boolean isDispatchNeeded(p9.f context) {
        kotlin.jvm.internal.h.f(context, "context");
        kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
        if (m.f9167a.d().isDispatchNeeded(context)) {
            return true;
        }
        return !this.dispatchQueue.canRun();
    }
}
