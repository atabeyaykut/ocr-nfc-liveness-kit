package wd;

import ed.g;
import ed.h;
import java.io.IOException;
import l8.p;
import l8.r;
import l8.u;
import l8.v;
import rc.d0;
import ud.f;

/* loaded from: classes2.dex */
public final class c<T> implements f<d0, T> {

    /* renamed from: b, reason: collision with root package name */
    public static final h f18889b;

    /* renamed from: a, reason: collision with root package name */
    public final p<T> f18890a;

    static {
        h hVar = h.f5315d;
        f18889b = h.a.a("EFBBBF");
    }

    public c(p<T> pVar) {
        this.f18890a = pVar;
    }

    @Override // ud.f
    public final Object a(d0 d0Var) throws IOException {
        d0 d0Var2 = d0Var;
        g gVarC = d0Var2.c();
        try {
            if (gVarC.G(f18889b)) {
                gVarC.skip(r1.f5316a.length);
            }
            v vVar = new v(gVarC);
            T tA = this.f18890a.a(vVar);
            if (vVar.k() == u.b.END_DOCUMENT) {
                return tA;
            }
            throw new r("JSON document was not fully consumed.");
        } finally {
            d0Var2.close();
        }
    }
}
