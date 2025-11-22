package n5;

import java.nio.charset.Charset;
import u5.f0;
import u5.i0;
import u5.j0;
import u5.o0;

/* loaded from: classes2.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f10592a = 0;

    static {
        Charset.forName("UTF-8");
    }

    public static j0 a(i0 i0Var) {
        j0.a aVarW = j0.w();
        int r12 = i0Var.y();
        aVarW.k();
        j0.t((j0) aVarW.f4393b, r12);
        for (i0.b bVar : i0Var.x()) {
            j0.b.a aVarY = j0.b.y();
            String strY = bVar.x().y();
            aVarY.k();
            j0.b.t((j0.b) aVarY.f4393b, strY);
            f0 f0VarA = bVar.A();
            aVarY.k();
            j0.b.v((j0.b) aVarY.f4393b, f0VarA);
            o0 o0VarZ = bVar.z();
            aVarY.k();
            j0.b.u((j0.b) aVarY.f4393b, o0VarZ);
            int r13 = bVar.y();
            aVarY.k();
            j0.b.w((j0.b) aVarY.f4393b, r13);
            j0.b bVarI = aVarY.i();
            aVarW.k();
            j0.u((j0) aVarW.f4393b, bVarI);
        }
        return aVarW.i();
    }
}
