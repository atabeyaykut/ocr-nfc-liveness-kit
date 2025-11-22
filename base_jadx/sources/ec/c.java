package ec;

import ja.k;
import java.util.Collection;
import java.util.List;
import m9.v;
import ma.b0;
import ma.i0;
import na.h;
import x9.l;

/* loaded from: classes2.dex */
public final class c implements b0 {

    /* renamed from: a, reason: collision with root package name */
    public static final c f5241a = new c();

    /* renamed from: b, reason: collision with root package name */
    public static final lb.f f5242b = lb.f.v("<Error module>");

    /* renamed from: c, reason: collision with root package name */
    public static final v f5243c = v.f10173a;

    /* renamed from: d, reason: collision with root package name */
    public static final ja.d f5244d = ja.d.f;

    @Override // ma.b0
    public final <T> T G0(com.airbnb.epoxy.a capability) {
        kotlin.jvm.internal.h.f(capability, "capability");
        return null;
    }

    @Override // ma.b0
    public final i0 I0(lb.c fqName) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        throw new IllegalStateException("Should not be called!");
    }

    @Override // ma.b0
    public final boolean V(b0 targetModule) {
        kotlin.jvm.internal.h.f(targetModule, "targetModule");
        return false;
    }

    @Override // ma.j
    public final ma.j a() {
        return this;
    }

    @Override // ma.j
    public final ma.j b() {
        return null;
    }

    @Override // na.a
    public final na.h getAnnotations() {
        return h.a.f10653a;
    }

    @Override // ma.j
    public final lb.f getName() {
        return f5242b;
    }

    @Override // ma.b0
    public final k m() {
        return f5244d;
    }

    @Override // ma.b0
    public final Collection<lb.c> n(lb.c fqName, l<? super lb.f, Boolean> nameFilter) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        kotlin.jvm.internal.h.f(nameFilter, "nameFilter");
        return v.f10173a;
    }

    @Override // ma.j
    public final <R, D> R o0(ma.l<R, D> lVar, D d10) {
        return null;
    }

    @Override // ma.b0
    public final List<b0> s0() {
        return f5243c;
    }
}
