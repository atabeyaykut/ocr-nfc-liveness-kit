package dc;

import cc.b1;
import dc.e;
import dc.f;

/* loaded from: classes2.dex */
public final class a {
    public static b1 a(boolean z10, boolean z11, p pVar, e eVar, f fVar, int r11) {
        boolean z12 = (r11 & 2) != 0 ? true : z11;
        if ((r11 & 4) != 0) {
            pVar = p.f4850a;
        }
        p typeSystemContext = pVar;
        if ((r11 & 8) != 0) {
            eVar = e.a.f4826a;
        }
        e kotlinTypePreparator = eVar;
        if ((r11 & 16) != 0) {
            fVar = f.a.f4827a;
        }
        f kotlinTypeRefiner = fVar;
        kotlin.jvm.internal.h.f(typeSystemContext, "typeSystemContext");
        kotlin.jvm.internal.h.f(kotlinTypePreparator, "kotlinTypePreparator");
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        return new b1(z10, z12, typeSystemContext, kotlinTypePreparator, kotlinTypeRefiner);
    }
}
