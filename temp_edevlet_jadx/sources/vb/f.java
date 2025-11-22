package vb;

import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class f extends ob.m {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ArrayList<ma.j> f18444a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f18445b;

    public f(ArrayList<ma.j> arrayList, e eVar) {
        this.f18444a = arrayList;
        this.f18445b = eVar;
    }

    @Override // c6.a
    public final void k(ma.b fakeOverride) {
        kotlin.jvm.internal.h.f(fakeOverride, "fakeOverride");
        ob.n.r(fakeOverride, null);
        this.f18444a.add(fakeOverride);
    }

    @Override // ob.m
    public final void t(ma.b fromSuper, ma.b fromCurrent) {
        kotlin.jvm.internal.h.f(fromSuper, "fromSuper");
        kotlin.jvm.internal.h.f(fromCurrent, "fromCurrent");
        throw new IllegalStateException(("Conflict in scope of " + this.f18445b.f18441b + ": " + fromSuper + " vs " + fromCurrent).toString());
    }
}
