package mf;

import r0.p;
import rf.n;
import s4.y1;

/* loaded from: classes3.dex */
public final class j implements cf.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10418a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f10419b;

    public /* synthetic */ j(int r12, Object obj) {
        this.f10418a = r12;
        this.f10419b = obj;
    }

    @Override // cf.a
    public final af.c a(p pVar) {
        int r02 = this.f10418a;
        Object obj = this.f10419b;
        switch (r02) {
            case 0:
                return new f((e) pVar, (k) ((i) obj).f10417a.get());
            case 1:
                qf.k kVar = (qf.k) obj;
                return new qf.d((qf.c) pVar, (qf.l) kVar.f13644a.get(), (rf.d) kVar.f13645b.get(), (n) kVar.f13646c.get());
            case 2:
                qf.k kVar2 = (qf.k) obj;
                return new vf.c((vf.b) pVar, (vf.j) kVar2.f13644a.get(), (rf.d) kVar2.f13645b.get(), (n) kVar2.f13646c.get());
            case 3:
                y1 y1Var = (y1) obj;
                return new ng.k((ng.i) pVar, (ng.a) ((k9.a) y1Var.f15242a).get(), (ng.l) ((k9.a) y1Var.f15243b).get());
            case 4:
                return new vg.d((vg.c) pVar, (vg.g) ((i) obj).f10417a.get());
            default:
                return new wg.d((wg.c) pVar, (wg.g) ((i) obj).f10417a.get());
        }
    }
}
