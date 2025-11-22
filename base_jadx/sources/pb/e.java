package pb;

import cc.e0;
import cc.i1;
import cc.l1;
import cc.r;
import ma.g;
import ma.w0;

/* loaded from: classes2.dex */
public final class e extends r {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f13067c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(l1 l1Var, boolean z10) {
        super(l1Var);
        this.f13067c = z10;
    }

    @Override // cc.l1
    public final boolean b() {
        return this.f13067c;
    }

    @Override // cc.l1
    public final i1 d(e0 e0Var) {
        i1 i1VarD = this.f2353b.d(e0Var);
        if (i1VarD == null) {
            return null;
        }
        g gVarN = e0Var.M0().n();
        return d.a(i1VarD, gVarN instanceof w0 ? (w0) gVarN : null);
    }
}
