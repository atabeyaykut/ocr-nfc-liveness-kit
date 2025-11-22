package o3;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.util.Set;
import n3.a;
import r3.c;

/* loaded from: classes.dex */
public final class d0 implements c.InterfaceC0236c, o0 {

    /* renamed from: a, reason: collision with root package name */
    public final a.e f11115a;

    /* renamed from: b, reason: collision with root package name */
    public final a f11116b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public r3.k f11117c = null;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public Set f11118d = null;

    /* renamed from: e, reason: collision with root package name */
    public boolean f11119e = false;
    public final /* synthetic */ d f;

    public d0(d dVar, a.e eVar, a aVar) {
        this.f = dVar;
        this.f11115a = eVar;
        this.f11116b = aVar;
    }

    @Override // r3.c.InterfaceC0236c
    public final void a(@NonNull m3.b bVar) {
        this.f.f11113n.post(new c0(this, bVar));
    }

    @WorkerThread
    public final void b(m3.b bVar) {
        a0 a0Var = (a0) this.f.f11109j.get(this.f11116b);
        if (a0Var != null) {
            r3.r.d(a0Var.f11082m.f11113n);
            a.e eVar = a0Var.f11072b;
            eVar.d("onSignInFailed for " + eVar.getClass().getName() + " with " + String.valueOf(bVar));
            a0Var.m(bVar, null);
        }
    }
}
