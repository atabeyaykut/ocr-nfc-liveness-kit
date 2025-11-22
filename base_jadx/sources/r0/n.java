package r0;

import androidx.lifecycle.Lifecycle;
import com.airbnb.mvrx.MavericksLifecycleAwareFlowKt$startedChannel$observer$1;

/* loaded from: classes.dex */
public final class n extends kotlin.jvm.internal.j implements x9.l<Throwable, l9.m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Lifecycle f13835a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MavericksLifecycleAwareFlowKt$startedChannel$observer$1 f13836b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(Lifecycle lifecycle, MavericksLifecycleAwareFlowKt$startedChannel$observer$1 mavericksLifecycleAwareFlowKt$startedChannel$observer$1) {
        super(1);
        this.f13835a = lifecycle;
        this.f13836b = mavericksLifecycleAwareFlowKt$startedChannel$observer$1;
    }

    @Override // x9.l
    public final l9.m invoke(Throwable th2) {
        this.f13835a.removeObserver(this.f13836b);
        return l9.m.f9594a;
    }
}
