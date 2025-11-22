package wc;

import ed.h;
import mc.j;
import rc.b0;

/* loaded from: classes2.dex */
public final class e {
    static {
        ed.h hVar = ed.h.f5315d;
        h.a.b("\"\\");
        h.a.b("\t ,=");
    }

    public static final boolean a(b0 b0Var) {
        if (kotlin.jvm.internal.h.a(b0Var.f14386b.f14599c, "HEAD")) {
            return false;
        }
        int r32 = b0Var.f14389e;
        return (((r32 >= 100 && r32 < 200) || r32 == 204 || r32 == 304) && sc.c.j(b0Var) == -1 && !j.x("chunked", b0.b(b0Var, "Transfer-Encoding"))) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void b(rc.k r36, rc.r r37, rc.q r38) {
        /*
            Method dump skipped, instructions count: 650
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: wc.e.b(rc.k, rc.r, rc.q):void");
    }
}
