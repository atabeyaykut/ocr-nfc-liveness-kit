package i0;

import androidx.annotation.ColorInt;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final String f7207a;

    /* renamed from: b, reason: collision with root package name */
    public final String f7208b;

    /* renamed from: c, reason: collision with root package name */
    public final float f7209c;

    /* renamed from: d, reason: collision with root package name */
    public final int f7210d;

    /* renamed from: e, reason: collision with root package name */
    public final int f7211e;
    public final float f;

    /* renamed from: g, reason: collision with root package name */
    public final float f7212g;

    /* renamed from: h, reason: collision with root package name */
    @ColorInt
    public final int f7213h;

    /* renamed from: i, reason: collision with root package name */
    @ColorInt
    public final int f7214i;

    /* renamed from: j, reason: collision with root package name */
    public final float f7215j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f7216k;

    public b(String str, String str2, float f, int r42, int r52, float f10, float f11, @ColorInt int r82, @ColorInt int r92, float f12, boolean z10) {
        this.f7207a = str;
        this.f7208b = str2;
        this.f7209c = f;
        this.f7210d = r42;
        this.f7211e = r52;
        this.f = f10;
        this.f7212g = f11;
        this.f7213h = r82;
        this.f7214i = r92;
        this.f7215j = f12;
        this.f7216k = z10;
    }

    public final int hashCode() {
        int r12 = ((g.d.c(this.f7210d) + (((int) (androidx.room.util.a.a(this.f7208b, this.f7207a.hashCode() * 31, 31) + this.f7209c)) * 31)) * 31) + this.f7211e;
        long jFloatToRawIntBits = Float.floatToRawIntBits(this.f);
        return (((r12 * 31) + ((int) (jFloatToRawIntBits ^ (jFloatToRawIntBits >>> 32)))) * 31) + this.f7213h;
    }
}
