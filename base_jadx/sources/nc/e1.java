package nc;

/* loaded from: classes2.dex */
public class e1 extends g1 implements p {

    /* renamed from: b, reason: collision with root package name */
    public final boolean f10790b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e1(b1 b1Var) {
        super(true);
        boolean z10 = true;
        V(b1Var);
        m mVarR = R();
        n nVar = mVarR instanceof n ? (n) mVarR : null;
        g1 g1VarK = nVar == null ? null : nVar.K();
        if (g1VarK == null) {
            z10 = false;
            break;
        }
        while (!g1VarK.O()) {
            m mVarR2 = g1VarK.R();
            n nVar2 = mVarR2 instanceof n ? (n) mVarR2 : null;
            g1VarK = nVar2 == null ? null : nVar2.K();
            if (g1VarK == null) {
                z10 = false;
                break;
            }
        }
        this.f10790b = z10;
    }

    @Override // nc.g1
    public final boolean O() {
        return this.f10790b;
    }

    @Override // nc.g1
    public final boolean P() {
        return true;
    }
}
