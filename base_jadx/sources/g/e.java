package g;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final Drawable f5716a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f5717b;

    public e(BitmapDrawable bitmapDrawable, boolean z10) {
        this.f5716a = bitmapDrawable;
        this.f5717b = z10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof e) {
            e eVar = (e) obj;
            if (kotlin.jvm.internal.h.a(this.f5716a, eVar.f5716a) && this.f5717b == eVar.f5717b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f5716a.hashCode() * 31) + (this.f5717b ? 1231 : 1237);
    }
}
