package ob;

import cc.e0;
import java.util.Iterator;
import java.util.LinkedHashSet;
import ma.v0;
import vb.l;

/* loaded from: classes2.dex */
public final class b extends c6.a {
    public static final void t(ac.d dVar, LinkedHashSet linkedHashSet, vb.i iVar, boolean z10) {
        boolean z11;
        for (ma.j jVar : l.a.a(iVar, vb.d.f18431o, 2)) {
            if (jVar instanceof ma.e) {
                ma.e eVarP = (ma.e) jVar;
                if (eVarP.G()) {
                    lb.f name = eVarP.getName();
                    kotlin.jvm.internal.h.e(name, "descriptor.name");
                    ma.g gVarE = iVar.e(name, ua.c.WHEN_GET_ALL_DESCRIPTORS);
                    eVarP = gVarE instanceof ma.e ? (ma.e) gVarE : gVarE instanceof v0 ? ((v0) gVarE).p() : null;
                }
                if (eVarP != null) {
                    int r22 = i.f11277a;
                    Iterator<e0> it = eVarP.i().l().iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (i.p(it.next(), dVar)) {
                                z11 = true;
                                break;
                            }
                        } else {
                            z11 = false;
                            break;
                        }
                    }
                    if (z11) {
                        linkedHashSet.add(eVarP);
                    }
                    if (z10) {
                        vb.i iVarX0 = eVarP.x0();
                        kotlin.jvm.internal.h.e(iVarX0, "refinedDescriptor.unsubstitutedInnerClassesScope");
                        t(dVar, linkedHashSet, iVarX0, z10);
                    }
                }
            }
        }
    }
}
