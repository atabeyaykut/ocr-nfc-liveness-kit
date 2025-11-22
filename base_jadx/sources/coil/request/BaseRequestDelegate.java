package coil.request;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import kotlin.Metadata;
import nc.b1;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcoil/request/BaseRequestDelegate;", "Lcoil/request/RequestDelegate;", "coil-base_release"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes.dex */
public final class BaseRequestDelegate extends RequestDelegate {

    /* renamed from: a, reason: collision with root package name */
    public final Lifecycle f2460a;

    /* renamed from: b, reason: collision with root package name */
    public final b1 f2461b;

    public BaseRequestDelegate(Lifecycle lifecycle, b1 b1Var) {
        super(0);
        this.f2460a = lifecycle;
        this.f2461b = b1Var;
    }

    @Override // coil.request.RequestDelegate
    public final void b() {
        this.f2460a.removeObserver(this);
    }

    @Override // coil.request.RequestDelegate
    public final void c() {
        this.f2460a.addObserver(this);
    }

    @Override // coil.request.RequestDelegate, androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public final void onDestroy(LifecycleOwner lifecycleOwner) {
        this.f2461b.a(null);
    }
}
