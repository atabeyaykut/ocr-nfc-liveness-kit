package k2;

import android.graphics.Bitmap;
import android.graphics.RectF;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final int f8692a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8693b;

    /* renamed from: c, reason: collision with root package name */
    public final Bitmap f8694c;

    /* renamed from: d, reason: collision with root package name */
    public final RectF f8695d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f8696e;
    public int f;

    public a(int r12, int r22, Bitmap bitmap, RectF rectF, boolean z10, int r6) {
        this.f8692a = r12;
        this.f8693b = r22;
        this.f8694c = bitmap;
        this.f8695d = rectF;
        this.f8696e = z10;
        this.f = r6;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (aVar.f8693b != this.f8693b) {
            return false;
        }
        if (aVar.f8692a != this.f8692a) {
            return false;
        }
        RectF rectF = aVar.f8695d;
        float f = rectF.left;
        RectF rectF2 = this.f8695d;
        return f == rectF2.left && rectF.right == rectF2.right && rectF.top == rectF2.top && rectF.bottom == rectF2.bottom;
    }
}
