package n0;

import java.io.IOException;

/* loaded from: classes.dex */
public final class a0 implements h0<q0.d> {

    /* renamed from: a, reason: collision with root package name */
    public static final a0 f10479a = new a0();

    @Override // n0.h0
    public final q0.d a(o0.c cVar, float f) throws IOException {
        boolean z10 = cVar.k() == 1;
        if (z10) {
            cVar.a();
        }
        float fG = (float) cVar.g();
        float fG2 = (float) cVar.g();
        while (cVar.e()) {
            cVar.p();
        }
        if (z10) {
            cVar.c();
        }
        return new q0.d((fG / 100.0f) * f, (fG2 / 100.0f) * f);
    }
}
