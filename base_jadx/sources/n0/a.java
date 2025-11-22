package n0;

import java.io.IOException;
import java.util.ArrayList;
import o0.c;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final c.a f10478a = c.a.a("k", "x", "y");

    public static j0.e a(o0.d dVar, d0.f fVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (dVar.k() == 1) {
            dVar.a();
            while (dVar.e()) {
                arrayList.add(new g0.h(fVar, q.b(dVar, fVar, p0.g.c(), v.f10522a, dVar.k() == 3, false)));
            }
            dVar.c();
            r.b(arrayList);
        } else {
            arrayList.add(new q0.a(p.b(dVar, p0.g.c())));
        }
        return new j0.e(arrayList);
    }

    public static j0.m b(o0.d dVar, d0.f fVar) throws IOException {
        dVar.b();
        j0.e eVarA = null;
        j0.b bVarA = null;
        j0.b bVarA2 = null;
        boolean z10 = false;
        while (dVar.k() != 4) {
            int r42 = dVar.n(f10478a);
            if (r42 == 0) {
                eVarA = a(dVar, fVar);
            } else if (r42 != 1) {
                if (r42 != 2) {
                    dVar.o();
                    dVar.p();
                } else if (dVar.k() == 6) {
                    dVar.p();
                    z10 = true;
                } else {
                    bVarA2 = d.a(dVar, fVar, true);
                }
            } else if (dVar.k() == 6) {
                dVar.p();
                z10 = true;
            } else {
                bVarA = d.a(dVar, fVar, true);
            }
        }
        dVar.d();
        if (z10) {
            fVar.a("Lottie doesn't support expressions.");
        }
        return eVarA != null ? eVarA : new j0.i(bVarA, bVarA2);
    }
}
