package com.google.mlkit.vision.barcode.internal;

import a0.b;
import androidx.annotation.RecentlyNonNull;
import androidx.appcompat.widget.v;
import c6.d;
import c6.i;
import c6.o;
import java.util.List;
import p4.d1;
import p4.r0;
import p4.u0;
import v7.h;
import z7.c;

/* loaded from: classes2.dex */
public class BarcodeRegistrar implements i {
    @Override // c6.i
    @RecentlyNonNull
    public final List<d<?>> getComponents() {
        d.a aVarA = d.a(c.class);
        aVarA.a(new o(1, 0, h.class));
        aVarA.f2197e = b.f23y;
        d dVarB = aVarA.b();
        d.a aVarA2 = d.a(z7.b.class);
        aVarA2.a(new o(1, 0, c.class));
        aVarA2.a(new o(1, 0, v7.d.class));
        aVarA2.f2197e = a2.b.f47m;
        d dVarB2 = aVarA2.b();
        r0 r0Var = u0.f12703b;
        Object[] objArr = {dVarB, dVarB2};
        for (int r52 = 0; r52 < 2; r52++) {
            if (objArr[r52] == null) {
                throw new NullPointerException(v.c(20, "at index ", r52));
            }
        }
        return new d1(objArr, 2);
    }
}
