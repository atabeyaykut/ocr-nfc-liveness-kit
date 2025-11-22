package kotlinx.coroutines.flow;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes2.dex */
public final class f0 extends qc.b<e0<?>> {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f9058a = AtomicReferenceFieldUpdater.newUpdater(f0.class, Object.class, "_state");
    volatile /* synthetic */ Object _state = null;

    @Override // qc.b
    public final boolean a(qc.a aVar) {
        if (this._state != null) {
            return false;
        }
        this._state = x5.a.f19156j;
        return true;
    }

    @Override // qc.b
    public final p9.d[] b(qc.a aVar) {
        this._state = null;
        return b8.f.f1183g;
    }
}
