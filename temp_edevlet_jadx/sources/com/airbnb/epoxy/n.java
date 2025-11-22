package com.airbnb.epoxy;

import java.util.List;

/* loaded from: classes.dex */
public abstract class n extends e {
    public final a0 f = new a0();

    /* renamed from: g, reason: collision with root package name */
    public final g0 f2601g = new g0();

    @Override // com.airbnb.epoxy.e
    public final List<u<?>> a() {
        return this.f2601g;
    }

    @Override // com.airbnb.epoxy.e
    public final u<?> b(int r22) {
        u<?> uVar = this.f2601g.get(r22);
        return uVar.isShown() ? uVar : this.f;
    }
}
