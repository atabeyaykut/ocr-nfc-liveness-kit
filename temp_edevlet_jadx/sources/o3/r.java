package o3;

import androidx.collection.ArraySet;
import java.util.Collection;

/* loaded from: classes.dex */
public final class r extends a1 {
    public final ArraySet f;

    /* renamed from: g, reason: collision with root package name */
    public final d f11186g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(g gVar, d dVar) {
        super(gVar);
        Object obj = m3.e.f9943c;
        this.f = new ArraySet();
        this.f11186g = dVar;
        gVar.g(this);
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void d() {
        if (this.f.isEmpty()) {
            return;
        }
        d dVar = this.f11186g;
        dVar.getClass();
        synchronized (d.f11099r) {
            if (dVar.f11110k != this) {
                dVar.f11110k = this;
                dVar.f11111l.clear();
            }
            dVar.f11111l.addAll((Collection) this.f);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void f() {
        this.f11083b = true;
        if (this.f.isEmpty()) {
            return;
        }
        d dVar = this.f11186g;
        dVar.getClass();
        synchronized (d.f11099r) {
            if (dVar.f11110k != this) {
                dVar.f11110k = this;
                dVar.f11111l.clear();
            }
            dVar.f11111l.addAll((Collection) this.f);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void g() {
        this.f11083b = false;
        d dVar = this.f11186g;
        dVar.getClass();
        synchronized (d.f11099r) {
            if (dVar.f11110k == this) {
                dVar.f11110k = null;
                dVar.f11111l.clear();
            }
        }
    }
}
