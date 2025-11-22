package vb;

import java.util.Collection;
import vb.i;

/* loaded from: classes2.dex */
public interface l {

    public static final class a {
        public static Collection a(l lVar, d dVar, int r32) {
            i.a.C0290a c0290a;
            if ((r32 & 1) != 0) {
                dVar = d.f18429m;
            }
            if ((r32 & 2) != 0) {
                i.f18449a.getClass();
                c0290a = i.a.f18451b;
            } else {
                c0290a = null;
            }
            return lVar.f(dVar, c0290a);
        }
    }

    ma.g e(lb.f fVar, ua.c cVar);

    Collection<ma.j> f(d dVar, x9.l<? super lb.f, Boolean> lVar);
}
