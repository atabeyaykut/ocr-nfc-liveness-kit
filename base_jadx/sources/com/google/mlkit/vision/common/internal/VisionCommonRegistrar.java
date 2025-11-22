package com.google.mlkit.vision.common.internal;

import androidx.annotation.RecentlyNonNull;
import androidx.appcompat.widget.v;
import b8.f;
import c6.d;
import c6.i;
import c6.o;
import com.google.mlkit.vision.common.internal.a;
import java.util.List;
import r4.v6;
import r4.x6;
import r4.y6;

/* loaded from: classes2.dex */
public class VisionCommonRegistrar implements i {
    @Override // c6.i
    @RecentlyNonNull
    public final List<d<?>> getComponents() {
        d.a aVarA = d.a(a.class);
        aVarA.a(new o(2, 0, a.C0066a.class));
        aVarA.f2197e = f.f1178a;
        d dVarB = aVarA.b();
        v6 v6Var = x6.f14277b;
        Object[] objArr = {dVarB};
        for (int r42 = 0; r42 <= 0; r42++) {
            if (objArr[r42] == null) {
                throw new NullPointerException(v.c(20, "at index ", r42));
            }
        }
        return new y6(objArr, 1);
    }
}
