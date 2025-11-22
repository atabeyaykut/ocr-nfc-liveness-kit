package j;

import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class f extends g {

    /* renamed from: a, reason: collision with root package name */
    public final Drawable f7924a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f7925b;

    /* renamed from: c, reason: collision with root package name */
    public final int f7926c;

    public f(Drawable drawable, boolean z10, int r32) {
        this.f7924a = drawable;
        this.f7925b = z10;
        this.f7926c = r32;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (kotlin.jvm.internal.h.a(this.f7924a, fVar.f7924a) && this.f7925b == fVar.f7925b && this.f7926c == fVar.f7926c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return g.d.c(this.f7926c) + (((this.f7924a.hashCode() * 31) + (this.f7925b ? 1231 : 1237)) * 31);
    }
}
