package ac;

import java.util.ArrayList;
import java.util.List;
import ma.r;
import pa.x;

/* loaded from: classes2.dex */
public final class e extends ob.m {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ List<Object> f204a;

    public e(ArrayList arrayList) {
        this.f204a = arrayList;
    }

    @Override // c6.a
    public final void k(ma.b fakeOverride) {
        kotlin.jvm.internal.h.f(fakeOverride, "fakeOverride");
        ob.n.r(fakeOverride, null);
        this.f204a.add(fakeOverride);
    }

    @Override // ob.m
    public final void t(ma.b fromSuper, ma.b fromCurrent) {
        kotlin.jvm.internal.h.f(fromSuper, "fromSuper");
        kotlin.jvm.internal.h.f(fromCurrent, "fromCurrent");
        if (fromCurrent instanceof x) {
            ((x) fromCurrent).P0(r.f10242a, fromSuper);
        }
    }
}
