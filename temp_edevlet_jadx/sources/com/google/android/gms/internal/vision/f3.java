package com.google.android.gms.internal.vision;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class f3 extends g3 {
    public f3(int r12) {
        super(r12);
    }

    @Override // com.google.android.gms.internal.vision.g3
    public final void c() {
        if (!this.f3970d) {
            for (int r02 = 0; r02 < e(); r02++) {
                ((e1) d(r02).getKey()).d();
            }
            Iterator it = g().iterator();
            while (it.hasNext()) {
                ((e1) ((Map.Entry) it.next()).getKey()).d();
            }
        }
        super.c();
    }
}
