package o3;

import n3.a;

/* loaded from: classes.dex */
public final class y implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ z f11200a;

    public y(z zVar) {
        this.f11200a = zVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.e eVar = this.f11200a.f11203a.f11072b;
        eVar.d(eVar.getClass().getName().concat(" disconnecting because it was signed out."));
    }
}
