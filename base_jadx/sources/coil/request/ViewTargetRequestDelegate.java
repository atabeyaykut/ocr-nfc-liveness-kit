package coil.request;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import c5.v;
import e.f;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlinx.coroutines.internal.m;
import nc.b1;
import nc.j0;
import nc.t0;
import nc.t1;
import p.g;
import p.p;
import p.q;
import r.b;
import u.c;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcoil/request/ViewTargetRequestDelegate;", "Lcoil/request/RequestDelegate;", "coil-base_release"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes.dex */
public final class ViewTargetRequestDelegate extends RequestDelegate {

    /* renamed from: a, reason: collision with root package name */
    public final f f2462a;

    /* renamed from: b, reason: collision with root package name */
    public final g f2463b;

    /* renamed from: c, reason: collision with root package name */
    public final b<?> f2464c;

    /* renamed from: d, reason: collision with root package name */
    public final Lifecycle f2465d;

    /* renamed from: e, reason: collision with root package name */
    public final b1 f2466e;

    public ViewTargetRequestDelegate(f fVar, g gVar, b<?> bVar, Lifecycle lifecycle, b1 b1Var) {
        super(0);
        this.f2462a = fVar;
        this.f2463b = gVar;
        this.f2464c = bVar;
        this.f2465d = lifecycle;
        this.f2466e = b1Var;
    }

    @Override // coil.request.RequestDelegate
    public final void a() {
        b<?> bVar = this.f2464c;
        if (bVar.getF2468b().isAttachedToWindow()) {
            return;
        }
        q qVarC = c.c(bVar.getF2468b());
        ViewTargetRequestDelegate viewTargetRequestDelegate = qVarC.f12197c;
        if (viewTargetRequestDelegate != null) {
            viewTargetRequestDelegate.f2466e.a(null);
            b<?> bVar2 = viewTargetRequestDelegate.f2464c;
            boolean z10 = bVar2 instanceof LifecycleObserver;
            Lifecycle lifecycle = viewTargetRequestDelegate.f2465d;
            if (z10) {
                lifecycle.removeObserver((LifecycleObserver) bVar2);
            }
            lifecycle.removeObserver(viewTargetRequestDelegate);
        }
        qVarC.f12197c = this;
        throw new CancellationException("'ViewTarget.view' must be attached to a window.");
    }

    @Override // coil.request.RequestDelegate
    public final void c() {
        Lifecycle lifecycle = this.f2465d;
        lifecycle.addObserver(this);
        b<?> bVar = this.f2464c;
        if (bVar instanceof LifecycleObserver) {
            LifecycleObserver lifecycleObserver = (LifecycleObserver) bVar;
            lifecycle.removeObserver(lifecycleObserver);
            lifecycle.addObserver(lifecycleObserver);
        }
        q qVarC = c.c(bVar.getF2468b());
        ViewTargetRequestDelegate viewTargetRequestDelegate = qVarC.f12197c;
        if (viewTargetRequestDelegate != null) {
            viewTargetRequestDelegate.f2466e.a(null);
            b<?> bVar2 = viewTargetRequestDelegate.f2464c;
            boolean z10 = bVar2 instanceof LifecycleObserver;
            Lifecycle lifecycle2 = viewTargetRequestDelegate.f2465d;
            if (z10) {
                lifecycle2.removeObserver((LifecycleObserver) bVar2);
            }
            lifecycle2.removeObserver(viewTargetRequestDelegate);
        }
        qVarC.f12197c = this;
    }

    @Override // coil.request.RequestDelegate, androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public final void onDestroy(LifecycleOwner lifecycleOwner) {
        q qVarC = c.c(this.f2464c.getF2468b());
        synchronized (qVarC) {
            t1 t1Var = qVarC.f12196b;
            if (t1Var != null) {
                t1Var.a(null);
            }
            t0 t0Var = t0.f10843a;
            kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
            qVarC.f12196b = v.C(t0Var, m.f9167a.d(), 0, new p(qVarC, null), 2);
            qVarC.f12195a = null;
        }
    }
}
