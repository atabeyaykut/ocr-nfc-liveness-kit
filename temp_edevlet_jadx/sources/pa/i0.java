package pa;

import na.h;

/* loaded from: classes2.dex */
public abstract class i0 extends q implements ma.e0 {

    /* renamed from: e, reason: collision with root package name */
    public final lb.c f12914e;
    public final String f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i0(ma.b0 module, lb.c fqName) {
        super(module, h.a.f10653a, fqName.g(), ma.r0.f10243a);
        kotlin.jvm.internal.h.f(module, "module");
        kotlin.jvm.internal.h.f(fqName, "fqName");
        this.f12914e = fqName;
        this.f = "package " + fqName + " of " + module;
    }

    @Override // pa.q, ma.j
    public final ma.b0 b() {
        ma.j jVarB = super.b();
        kotlin.jvm.internal.h.d(jVarB, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ModuleDescriptor");
        return (ma.b0) jVarB;
    }

    @Override // ma.e0
    public final lb.c d() {
        return this.f12914e;
    }

    @Override // pa.q, ma.m
    public ma.r0 getSource() {
        return ma.r0.f10243a;
    }

    @Override // ma.j
    public final <R, D> R o0(ma.l<R, D> lVar, D d10) {
        return lVar.e(this, d10);
    }

    @Override // pa.p
    public String toString() {
        return this.f;
    }
}
