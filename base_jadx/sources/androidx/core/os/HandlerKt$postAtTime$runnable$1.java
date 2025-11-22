package androidx.core.os;

import kotlin.Metadata;
import l9.m;

@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Ll9/m;", "run", "()V", "<anonymous>"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class HandlerKt$postAtTime$runnable$1 implements Runnable {
    final /* synthetic */ x9.a<m> $action;

    public HandlerKt$postAtTime$runnable$1(x9.a<m> aVar) {
        this.$action = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.$action.invoke();
    }
}
