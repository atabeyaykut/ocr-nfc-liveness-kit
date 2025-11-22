package n;

import c5.w;
import n.b;

/* loaded from: classes.dex */
public final class d implements b {

    /* renamed from: a, reason: collision with root package name */
    public final g f10464a;

    /* renamed from: b, reason: collision with root package name */
    public final h f10465b;

    public d(g gVar, h hVar) {
        this.f10464a = gVar;
        this.f10465b = hVar;
    }

    @Override // n.b
    public final void a(int r22) {
        this.f10464a.a(r22);
        this.f10465b.a(r22);
    }

    @Override // n.b
    public final b.C0194b b(b.a aVar) {
        b.C0194b c0194bB = this.f10464a.b(aVar);
        return c0194bB == null ? this.f10465b.b(aVar) : c0194bB;
    }

    @Override // n.b
    public final void c(b.a aVar, b.C0194b c0194b) {
        this.f10464a.c(new b.a(aVar.f10458a, w.H(aVar.f10459b)), c0194b.f10460a, w.H(c0194b.f10461b));
    }
}
