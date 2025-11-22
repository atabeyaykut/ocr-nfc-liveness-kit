package p;

import android.graphics.drawable.Drawable;
import n.b;

/* loaded from: classes.dex */
public final class n extends h {

    /* renamed from: a, reason: collision with root package name */
    public final Drawable f12186a;

    /* renamed from: b, reason: collision with root package name */
    public final g f12187b;

    /* renamed from: c, reason: collision with root package name */
    public final int f12188c;

    /* renamed from: d, reason: collision with root package name */
    public final b.a f12189d;

    /* renamed from: e, reason: collision with root package name */
    public final String f12190e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f12191g;

    public n(Drawable drawable, g gVar, int r32, b.a aVar, String str, boolean z10, boolean z11) {
        this.f12186a = drawable;
        this.f12187b = gVar;
        this.f12188c = r32;
        this.f12189d = aVar;
        this.f12190e = str;
        this.f = z10;
        this.f12191g = z11;
    }

    @Override // p.h
    public final Drawable a() {
        return this.f12186a;
    }

    @Override // p.h
    public final g b() {
        return this.f12187b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof n) {
            n nVar = (n) obj;
            if (kotlin.jvm.internal.h.a(this.f12186a, nVar.f12186a)) {
                if (kotlin.jvm.internal.h.a(this.f12187b, nVar.f12187b) && this.f12188c == nVar.f12188c && kotlin.jvm.internal.h.a(this.f12189d, nVar.f12189d) && kotlin.jvm.internal.h.a(this.f12190e, nVar.f12190e) && this.f == nVar.f && this.f12191g == nVar.f12191g) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int r02 = (g.d.c(this.f12188c) + ((this.f12187b.hashCode() + (this.f12186a.hashCode() * 31)) * 31)) * 31;
        b.a aVar = this.f12189d;
        int r03 = (r02 + (aVar == null ? 0 : aVar.hashCode())) * 31;
        String str = this.f12190e;
        return ((((r03 + (str != null ? str.hashCode() : 0)) * 31) + (this.f ? 1231 : 1237)) * 31) + (this.f12191g ? 1231 : 1237);
    }
}
