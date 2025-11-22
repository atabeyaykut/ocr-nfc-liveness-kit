package la;

import java.util.List;
import ma.a0;
import ma.b;
import ma.o0;
import ma.r0;
import pa.p0;

/* loaded from: classes2.dex */
public final class a extends vb.e {

    /* renamed from: e, reason: collision with root package name */
    public static final lb.f f9597e = lb.f.t("clone");

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(bc.l storageManager, pa.n nVar) {
        super(storageManager, nVar);
        kotlin.jvm.internal.h.f(storageManager, "storageManager");
    }

    @Override // vb.e
    public final List<ma.u> h() {
        b.a aVar = b.a.DECLARATION;
        r0.a aVar2 = r0.f10243a;
        lb.f fVar = f9597e;
        ma.e eVar = this.f18441b;
        p0 p0VarU0 = p0.U0(eVar, fVar, aVar, aVar2);
        o0 o0VarJ0 = eVar.J0();
        m9.v vVar = m9.v.f10173a;
        p0VarU0.N0(null, o0VarJ0, vVar, vVar, vVar, sb.b.e(eVar).f(), a0.OPEN, ma.p.f10223c);
        return b8.f.S(p0VarU0);
    }
}
