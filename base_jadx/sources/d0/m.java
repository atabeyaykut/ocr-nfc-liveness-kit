package d0;

import d0.l;

/* loaded from: classes.dex */
public final class m implements l.n {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4594a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4595b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ l f4596c;

    public m(l lVar, int r22, int r32) {
        this.f4596c = lVar;
        this.f4594a = r22;
        this.f4595b = r32;
    }

    @Override // d0.l.n
    public final void run() {
        l lVar = this.f4596c;
        f fVar = lVar.f4552b;
        int r22 = this.f4594a;
        int r32 = this.f4595b;
        if (fVar == null) {
            lVar.f4557h.add(new m(lVar, r22, r32));
        } else {
            lVar.f4553c.i(r22, r32 + 0.99f);
        }
    }
}
