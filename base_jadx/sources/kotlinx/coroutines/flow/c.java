package kotlinx.coroutines.flow;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* loaded from: classes2.dex */
public final class c<T> extends qc.e<T> {
    public static final /* synthetic */ AtomicIntegerFieldUpdater f = AtomicIntegerFieldUpdater.newUpdater(c.class, "consumed");
    private volatile /* synthetic */ int consumed;

    /* renamed from: d, reason: collision with root package name */
    public final pc.u<T> f9036d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f9037e;

    /* JADX WARN: Multi-variable type inference failed */
    public c(pc.u<? extends T> uVar, boolean z10, p9.f fVar, int r42, pc.f fVar2) {
        super(fVar, r42, fVar2);
        this.f9036d = uVar;
        this.f9037e = z10;
        this.consumed = 0;
    }

    @Override // qc.e, kotlinx.coroutines.flow.f
    public final Object a(g<? super T> gVar, p9.d<? super l9.m> dVar) {
        int r02 = this.f13495b;
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        if (r02 != -3) {
            Object objA = super.a(gVar, dVar);
            return objA == aVar ? objA : l9.m.f9594a;
        }
        g();
        Object objA2 = i.a(gVar, this.f9036d, this.f9037e, dVar);
        return objA2 == aVar ? objA2 : l9.m.f9594a;
    }

    @Override // qc.e
    public final String b() {
        return kotlin.jvm.internal.h.k(this.f9036d, "channel=");
    }

    @Override // qc.e
    public final Object c(pc.r<? super T> rVar, p9.d<? super l9.m> dVar) {
        Object objA = i.a(new qc.p(rVar), this.f9036d, this.f9037e, dVar);
        return objA == q9.a.COROUTINE_SUSPENDED ? objA : l9.m.f9594a;
    }

    @Override // qc.e
    public final qc.e<T> d(p9.f fVar, int r92, pc.f fVar2) {
        return new c(this.f9036d, this.f9037e, fVar, r92, fVar2);
    }

    @Override // qc.e
    public final pc.u<T> f(nc.a0 a0Var) {
        g();
        return this.f13495b == -3 ? this.f9036d : super.f(a0Var);
    }

    public final void g() {
        if (this.f9037e) {
            if (!(f.getAndSet(this, 1) == 0)) {
                throw new IllegalStateException("ReceiveChannel.consumeAsFlow can be collected just once".toString());
            }
        }
    }
}
