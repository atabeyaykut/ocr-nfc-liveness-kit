package cc;

import java.util.List;

/* loaded from: classes2.dex */
public final class g0 extends kotlin.jvm.internal.j implements x9.l<dc.f, m0> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c1 f2307a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ List<i1> f2308b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ vb.i f2309c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g0(List list, vb.i iVar, a1 a1Var, c1 c1Var, boolean z10) {
        super(1);
        this.f2307a = c1Var;
        this.f2308b = list;
        this.f2309c = iVar;
    }

    @Override // x9.l
    public final m0 invoke(dc.f fVar) {
        dc.f kotlinTypeRefiner = fVar;
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        int r02 = f0.f2296a;
        f0.a(this.f2307a, kotlinTypeRefiner, this.f2308b);
        return null;
    }
}
