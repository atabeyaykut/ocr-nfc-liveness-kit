package p;

import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class d extends h {

    /* renamed from: a, reason: collision with root package name */
    public final Drawable f12112a;

    /* renamed from: b, reason: collision with root package name */
    public final g f12113b;

    /* renamed from: c, reason: collision with root package name */
    public final Throwable f12114c;

    public d(Drawable drawable, g gVar, Throwable th2) {
        this.f12112a = drawable;
        this.f12113b = gVar;
        this.f12114c = th2;
    }

    @Override // p.h
    public final Drawable a() {
        return this.f12112a;
    }

    @Override // p.h
    public final g b() {
        return this.f12113b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            if (kotlin.jvm.internal.h.a(this.f12112a, dVar.f12112a)) {
                if (kotlin.jvm.internal.h.a(this.f12113b, dVar.f12113b) && kotlin.jvm.internal.h.a(this.f12114c, dVar.f12114c)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        Drawable drawable = this.f12112a;
        return this.f12114c.hashCode() + ((this.f12113b.hashCode() + ((drawable == null ? 0 : drawable.hashCode()) * 31)) * 31);
    }
}
