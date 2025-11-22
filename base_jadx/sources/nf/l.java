package nf;

import r0.p;
import s4.x1;

/* loaded from: classes3.dex */
public final class l implements cf.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10940a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f10941b;

    public /* synthetic */ l(int r12, Object obj) {
        this.f10940a = r12;
        this.f10941b = obj;
    }

    @Override // cf.a
    public final af.c a(p pVar) {
        int r02 = this.f10940a;
        Object obj = this.f10941b;
        switch (r02) {
            case 0:
                x1 x1Var = (x1) obj;
                return new e((d) pVar, (m) ((k9.a) x1Var.f15222b).get(), (rf.d) ((k9.a) x1Var.f15221a).get(), (rf.n) ((k9.a) x1Var.f15223c).get());
            case 1:
                return new tf.i((tf.h) pVar, (tf.l) ((of.g) obj).f11330a.get());
            default:
                return new jh.c((jh.b) pVar, (jh.f) ((of.g) obj).f11330a.get());
        }
    }
}
