package r8;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* loaded from: classes2.dex */
public final class c extends Drawable {

    /* renamed from: b, reason: collision with root package name */
    public Bitmap f14335b;

    /* renamed from: d, reason: collision with root package name */
    public int f14337d;

    /* renamed from: e, reason: collision with root package name */
    public int f14338e;

    /* renamed from: a, reason: collision with root package name */
    public final Paint f14334a = new Paint(2);

    /* renamed from: c, reason: collision with root package name */
    public int f14336c = 255;

    public c(Bitmap bitmap) {
        this.f14335b = bitmap;
        if (bitmap != null) {
            this.f14337d = bitmap.getWidth();
            this.f14338e = this.f14335b.getHeight();
        } else {
            this.f14338e = 0;
            this.f14337d = 0;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Bitmap bitmap = this.f14335b;
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        canvas.drawBitmap(this.f14335b, (Rect) null, getBounds(), this.f14334a);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f14336c;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f14338e;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f14337d;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumHeight() {
        return this.f14338e;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumWidth() {
        return this.f14337d;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int r22) {
        this.f14336c = r22;
        this.f14334a.setAlpha(r22);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f14334a.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setFilterBitmap(boolean z10) {
        this.f14334a.setFilterBitmap(z10);
    }
}
