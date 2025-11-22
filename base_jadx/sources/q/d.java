package q;

import android.view.View;
import android.view.ViewTreeObserver;
import c5.w;
import nc.j;
import q.g;

/* loaded from: classes.dex */
public final class d<T extends View> implements g<T> {

    /* renamed from: a, reason: collision with root package name */
    public final T f13258a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f13259b;

    public d(T t10, boolean z10) {
        this.f13258a = t10;
        this.f13259b = z10;
    }

    @Override // q.g
    public final boolean a() {
        return this.f13259b;
    }

    @Override // q.f
    public final Object b(e.i iVar) {
        e eVarA = g.a.a(this);
        if (eVarA != null) {
            return eVarA;
        }
        j jVar = new j(1, w.x(iVar));
        jVar.n();
        ViewTreeObserver viewTreeObserver = this.f13258a.getViewTreeObserver();
        i iVar2 = new i(this, viewTreeObserver, jVar);
        viewTreeObserver.addOnPreDrawListener(iVar2);
        jVar.D(new h(this, viewTreeObserver, iVar2));
        return jVar.m();
    }

    @Override // q.g
    public final T c() {
        return this.f13258a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            if (kotlin.jvm.internal.h.a(this.f13258a, dVar.f13258a)) {
                if (this.f13259b == dVar.f13259b) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f13258a.hashCode() * 31) + (this.f13259b ? 1231 : 1237);
    }
}
