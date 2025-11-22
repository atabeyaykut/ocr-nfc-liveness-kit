package com.google.mlkit.vision.text.internal;

import androidx.annotation.RecentlyNonNull;
import androidx.appcompat.widget.v;
import c5.d0;
import c5.w;
import c6.d;
import c6.i;
import c6.o;
import d8.f;
import d8.g;
import java.util.List;
import s4.b0;
import s4.r0;
import v7.h;

/* loaded from: classes2.dex */
public class TextRegistrar implements i {
    @Override // c6.i
    @RecentlyNonNull
    public final List<d<?>> getComponents() {
        d.a aVarA = d.a(g.class);
        aVarA.a(new o(1, 0, h.class));
        aVarA.f2197e = w.f2085d;
        d dVarB = aVarA.b();
        d.a aVarA2 = d.a(f.class);
        aVarA2.a(new o(1, 0, g.class));
        aVarA2.a(new o(1, 0, v7.d.class));
        aVarA2.f2197e = d0.f1470b;
        d dVarB2 = aVarA2.b();
        b0 b0Var = s4.d0.f14947b;
        Object[] objArr = {dVarB, dVarB2};
        for (int r52 = 0; r52 < 2; r52++) {
            if (objArr[r52] == null) {
                throw new NullPointerException(v.c(20, "at index ", r52));
            }
        }
        return new r0(objArr, 2);
    }
}
