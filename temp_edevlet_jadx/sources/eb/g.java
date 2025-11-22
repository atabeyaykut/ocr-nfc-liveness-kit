package eb;

import eb.h;
import eb.s;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class g implements s.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ s.a f5189a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s.a f5190b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ h.a f5191c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ lb.f f5192d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ArrayList<na.c> f5193e;

    public g(i iVar, h.a aVar, lb.f fVar, ArrayList arrayList) {
        this.f5190b = iVar;
        this.f5191c = aVar;
        this.f5192d = fVar;
        this.f5193e = arrayList;
        this.f5189a = iVar;
    }

    @Override // eb.s.a
    public final void a() {
        this.f5190b.a();
        this.f5191c.g(this.f5192d, new qb.a((na.c) m9.t.p1(this.f5193e)));
    }

    @Override // eb.s.a
    public final void b(lb.f fVar, lb.b bVar, lb.f fVar2) {
        this.f5189a.b(fVar, bVar, fVar2);
    }

    @Override // eb.s.a
    public final s.b c(lb.f fVar) {
        return this.f5189a.c(fVar);
    }

    @Override // eb.s.a
    public final s.a d(lb.b bVar, lb.f fVar) {
        return this.f5189a.d(bVar, fVar);
    }

    @Override // eb.s.a
    public final void e(Object obj, lb.f fVar) {
        this.f5189a.e(obj, fVar);
    }

    @Override // eb.s.a
    public final void f(lb.f fVar, qb.f fVar2) {
        this.f5189a.f(fVar, fVar2);
    }
}
