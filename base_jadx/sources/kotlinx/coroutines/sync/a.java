package kotlinx.coroutines.sync;

import kotlinx.coroutines.internal.s;
import l9.m;

/* loaded from: classes2.dex */
public final class a extends nc.g {

    /* renamed from: a, reason: collision with root package name */
    public final i f9240a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9241b;

    public a(i iVar, int r22) {
        this.f9240a = iVar;
        this.f9241b = r22;
    }

    @Override // nc.h
    public final void a(Throwable th2) {
        i iVar = this.f9240a;
        iVar.getClass();
        iVar.f9265e.set(this.f9241b, h.f9264e);
        if (s.f9173d.incrementAndGet(iVar) != h.f || iVar.c()) {
            return;
        }
        iVar.d();
    }

    @Override // x9.l
    public final /* bridge */ /* synthetic */ m invoke(Throwable th2) {
        a(th2);
        return m.f9594a;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("CancelSemaphoreAcquisitionHandler[");
        sb2.append(this.f9240a);
        sb2.append(", ");
        return androidx.constraintlayout.core.a.d(sb2, this.f9241b, ']');
    }
}
