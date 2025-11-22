package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.t;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public final class g1 extends h1<Object, Object> {
    public g1(int r12) {
        super(r12);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.h1
    public final void g() {
        if (!this.f4275d) {
            for (int r02 = 0; r02 < d(); r02++) {
                ((t.a) c(r02).getKey()).g();
            }
            Iterator<Map.Entry<Object, Object>> it = e().iterator();
            while (it.hasNext()) {
                ((t.a) it.next().getKey()).g();
            }
        }
        super.g();
    }
}
