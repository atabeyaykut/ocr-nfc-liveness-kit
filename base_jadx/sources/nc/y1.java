package nc;

/* loaded from: classes2.dex */
public final class y1 extends y {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f10859a = 0;

    static {
        new y1();
    }

    @Override // nc.y
    public final void dispatch(p9.f fVar, Runnable runnable) {
        b2 b2Var = (b2) fVar.get(b2.f10785b);
        if (b2Var == null) {
            throw new UnsupportedOperationException("Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls.");
        }
        b2Var.f10786a = true;
    }

    @Override // nc.y
    public final boolean isDispatchNeeded(p9.f fVar) {
        return false;
    }

    @Override // nc.y
    public final y limitedParallelism(int r22) {
        throw new UnsupportedOperationException("limitedParallelism is not supported for Dispatchers.Unconfined");
    }

    @Override // nc.y
    public final String toString() {
        return "Dispatchers.Unconfined";
    }
}
