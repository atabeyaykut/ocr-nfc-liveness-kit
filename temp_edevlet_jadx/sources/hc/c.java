package hc;

import cc.c1;
import cc.e1;
import cc.i1;
import cc.k1;
import cc.t1;
import kotlin.jvm.internal.h;

/* loaded from: classes2.dex */
public final class c extends e1 {
    @Override // cc.e1
    public final i1 g(c1 key) {
        h.f(key, "key");
        pb.b bVar = key instanceof pb.b ? (pb.b) key : null;
        if (bVar == null) {
            return null;
        }
        if (bVar.b().c()) {
            return new k1(bVar.b().getType(), t1.OUT_VARIANCE);
        }
        return bVar.b();
    }
}
