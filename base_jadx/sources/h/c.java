package h;

import ed.h0;
import ed.k;
import ed.l;
import ed.t;
import ed.z;
import java.io.IOException;
import java.util.Iterator;
import kotlin.jvm.internal.h;
import m9.g;

/* loaded from: classes.dex */
public final class c extends l {
    public c(t tVar) {
        super(tVar);
    }

    @Override // ed.k
    public final h0 k(z zVar) throws IOException {
        z zVarO = zVar.o();
        k kVar = this.f5337b;
        if (zVarO != null) {
            g gVar = new g();
            while (zVarO != null && !f(zVarO)) {
                gVar.addFirst(zVarO);
                zVarO = zVarO.o();
            }
            Iterator<E> it = gVar.iterator();
            while (it.hasNext()) {
                z dir = (z) it.next();
                h.f(dir, "dir");
                kVar.c(dir);
            }
        }
        return kVar.k(zVar);
    }
}
