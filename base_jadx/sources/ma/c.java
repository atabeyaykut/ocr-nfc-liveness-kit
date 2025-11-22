package ma;

import cc.t1;
import java.util.List;

/* loaded from: classes2.dex */
public final class c implements w0 {

    /* renamed from: a, reason: collision with root package name */
    public final w0 f10189a;

    /* renamed from: b, reason: collision with root package name */
    public final j f10190b;

    /* renamed from: c, reason: collision with root package name */
    public final int f10191c;

    public c(w0 w0Var, j declarationDescriptor, int r42) {
        kotlin.jvm.internal.h.f(declarationDescriptor, "declarationDescriptor");
        this.f10189a = w0Var;
        this.f10190b = declarationDescriptor;
        this.f10191c = r42;
    }

    @Override // ma.w0
    public final boolean A() {
        return this.f10189a.A();
    }

    @Override // ma.w0
    public final t1 I() {
        return this.f10189a.I();
    }

    @Override // ma.j
    public final w0 a() {
        w0 w0VarA = this.f10189a.a();
        kotlin.jvm.internal.h.e(w0VarA, "originalDescriptor.original");
        return w0VarA;
    }

    @Override // ma.k, ma.j
    public final j b() {
        return this.f10190b;
    }

    @Override // ma.w0
    public final bc.l d0() {
        return this.f10189a.d0();
    }

    @Override // na.a
    public final na.h getAnnotations() {
        return this.f10189a.getAnnotations();
    }

    @Override // ma.w0
    public final int getIndex() {
        return this.f10189a.getIndex() + this.f10191c;
    }

    @Override // ma.j
    public final lb.f getName() {
        return this.f10189a.getName();
    }

    @Override // ma.m
    public final r0 getSource() {
        return this.f10189a.getSource();
    }

    @Override // ma.w0
    public final List<cc.e0> getUpperBounds() {
        return this.f10189a.getUpperBounds();
    }

    @Override // ma.w0, ma.g
    public final cc.c1 i() {
        return this.f10189a.i();
    }

    @Override // ma.w0
    public final boolean l0() {
        return true;
    }

    @Override // ma.j
    public final <R, D> R o0(l<R, D> lVar, D d10) {
        return (R) this.f10189a.o0(lVar, d10);
    }

    @Override // ma.g
    public final cc.m0 q() {
        return this.f10189a.q();
    }

    public final String toString() {
        return this.f10189a + "[inner-copy]";
    }
}
