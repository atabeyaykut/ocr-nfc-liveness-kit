package n0;

import java.io.IOException;
import o0.c;

/* loaded from: classes.dex */
public final class h implements h0<i0.b> {

    /* renamed from: a, reason: collision with root package name */
    public static final h f10495a = new h();

    /* renamed from: b, reason: collision with root package name */
    public static final c.a f10496b = c.a.a("t", "f", "s", "j", "tr", "lh", "ls", "fc", "sc", "sw", "of");

    @Override // n0.h0
    public final i0.b a(o0.c cVar, float f) throws IOException {
        cVar.b();
        String strJ = null;
        String strJ2 = null;
        float fG = 0.0f;
        int r92 = 3;
        int i10 = 0;
        float fG2 = 0.0f;
        float fG3 = 0.0f;
        int r13 = 0;
        int r14 = 0;
        float fG4 = 0.0f;
        boolean zF = true;
        while (cVar.e()) {
            switch (cVar.n(f10496b)) {
                case 0:
                    strJ = cVar.j();
                    break;
                case 1:
                    strJ2 = cVar.j();
                    break;
                case 2:
                    fG = (float) cVar.g();
                    break;
                case 3:
                    int i11 = cVar.i();
                    if (i11 <= 2 && i11 >= 0) {
                        r92 = g.d.d(3)[i11];
                        break;
                    } else {
                        r92 = 3;
                        break;
                    }
                    break;
                case 4:
                    i10 = cVar.i();
                    break;
                case 5:
                    fG2 = (float) cVar.g();
                    break;
                case 6:
                    fG3 = (float) cVar.g();
                    break;
                case 7:
                    r13 = p.a(cVar);
                    break;
                case 8:
                    r14 = p.a(cVar);
                    break;
                case 9:
                    fG4 = (float) cVar.g();
                    break;
                case 10:
                    zF = cVar.f();
                    break;
                default:
                    cVar.o();
                    cVar.p();
                    break;
            }
        }
        cVar.d();
        return new i0.b(strJ, strJ2, fG, r92, i10, fG2, fG3, r13, r14, fG4, zF);
    }
}
