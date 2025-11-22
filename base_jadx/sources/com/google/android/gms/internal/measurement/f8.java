package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class f8 extends l8 {
    public f8(int r12) {
        super(r12);
    }

    @Override // com.google.android.gms.internal.measurement.l8
    public final void a() {
        if (!this.f3615d) {
            for (int r02 = 0; r02 < this.f3613b.size(); r02++) {
                i8 i8Var = this.f3613b.get(r02);
                if (((h6) i8Var.getKey()).c()) {
                    i8Var.setValue(Collections.unmodifiableList((List) i8Var.getValue()));
                }
            }
            for (Map.Entry entry : this.f3614c.isEmpty() ? x5.a.f19153e : this.f3614c.entrySet()) {
                if (((h6) entry.getKey()).c()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.a();
    }
}
