package com.google.android.gms.internal.clearcut;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class s2 extends r2 {
    public s2(int r12) {
        super(r12);
    }

    @Override // com.google.android.gms.internal.clearcut.r2
    public final void j() {
        if (!this.f3295d) {
            for (int r02 = 0; r02 < e(); r02++) {
                ((q0) c(r02).getKey()).j();
            }
            Iterator it = f().iterator();
            while (it.hasNext()) {
                ((q0) ((Map.Entry) it.next()).getKey()).j();
            }
        }
        super.j();
    }
}
