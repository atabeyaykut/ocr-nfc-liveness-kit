package o3;

import o3.b;

/* loaded from: classes.dex */
public final class v implements b.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f11193a;

    public v(d dVar) {
        this.f11193a = dVar;
    }

    @Override // o3.b.a
    public final void a(boolean z10) {
        h4.i iVar = this.f11193a.f11113n;
        iVar.sendMessage(iVar.obtainMessage(1, Boolean.valueOf(z10)));
    }
}
