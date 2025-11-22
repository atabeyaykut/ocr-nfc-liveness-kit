package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import com.google.android.material.color.MaterialColors;

/* loaded from: classes2.dex */
final class LinearDrawingDelegate extends DrawingDelegate<LinearProgressIndicatorSpec> {
    private float displayedCornerRadius;
    private float displayedTrackThickness;
    private float trackLength;

    public LinearDrawingDelegate(@NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(linearProgressIndicatorSpec);
        this.trackLength = 300.0f;
    }

    private static void drawRoundedEnd(Canvas canvas, Paint paint, float f, float f10, float f11, boolean z10, RectF rectF) {
        canvas.save();
        canvas.translate(f11, 0.0f);
        if (!z10) {
            canvas.rotate(180.0f);
        }
        float f12 = ((-f) / 2.0f) + f10;
        float f13 = (f / 2.0f) - f10;
        canvas.drawRect(-f10, f12, 0.0f, f13, paint);
        canvas.save();
        canvas.translate(0.0f, f12);
        canvas.drawArc(rectF, 180.0f, 90.0f, true, paint);
        canvas.restore();
        canvas.translate(0.0f, f13);
        canvas.drawArc(rectF, 180.0f, -90.0f, true, paint);
        canvas.restore();
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public void adjustCanvas(@NonNull Canvas canvas, @FloatRange(from = 0.0d, to = 1.0d) float f) {
        Rect clipBounds = canvas.getClipBounds();
        this.trackLength = clipBounds.width();
        float f10 = ((LinearProgressIndicatorSpec) this.spec).trackThickness;
        canvas.translate((clipBounds.width() / 2.0f) + clipBounds.left, Math.max(0.0f, (clipBounds.height() - ((LinearProgressIndicatorSpec) this.spec).trackThickness) / 2.0f) + (clipBounds.height() / 2.0f) + clipBounds.top);
        if (((LinearProgressIndicatorSpec) this.spec).drawHorizontallyInverse) {
            canvas.scale(-1.0f, 1.0f);
        }
        if ((this.drawable.isShowing() && ((LinearProgressIndicatorSpec) this.spec).showAnimationBehavior == 1) || (this.drawable.isHiding() && ((LinearProgressIndicatorSpec) this.spec).hideAnimationBehavior == 2)) {
            canvas.scale(1.0f, -1.0f);
        }
        if (this.drawable.isShowing() || this.drawable.isHiding()) {
            canvas.translate(0.0f, ((f - 1.0f) * ((LinearProgressIndicatorSpec) this.spec).trackThickness) / 2.0f);
        }
        float f11 = this.trackLength;
        canvas.clipRect((-f11) / 2.0f, (-f10) / 2.0f, f11 / 2.0f, f10 / 2.0f);
        S s7 = this.spec;
        this.displayedTrackThickness = ((LinearProgressIndicatorSpec) s7).trackThickness * f;
        this.displayedCornerRadius = ((LinearProgressIndicatorSpec) s7).trackCornerRadius * f;
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public void fillIndicator(@NonNull Canvas canvas, @NonNull Paint paint, @FloatRange(from = 0.0d, to = 1.0d) float f, @FloatRange(from = 0.0d, to = 1.0d) float f10, @ColorInt int r16) {
        if (f == f10) {
            return;
        }
        float f11 = this.trackLength;
        float f12 = this.displayedCornerRadius;
        float f13 = ((f11 - (f12 * 2.0f)) * f) + ((-f11) / 2.0f) + f12;
        float f14 = ((f11 - (f12 * 2.0f)) * f10) + ((-f11) / 2.0f) + f12;
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setColor(r16);
        float f15 = this.displayedTrackThickness;
        canvas.drawRect(f13, (-f15) / 2.0f, f14, f15 / 2.0f, paint);
        float f16 = this.displayedCornerRadius;
        RectF rectF = new RectF(-f16, -f16, f16, f16);
        drawRoundedEnd(canvas, paint, this.displayedTrackThickness, this.displayedCornerRadius, f13, true, rectF);
        drawRoundedEnd(canvas, paint, this.displayedTrackThickness, this.displayedCornerRadius, f14, false, rectF);
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public void fillTrack(@NonNull Canvas canvas, @NonNull Paint paint) {
        int r02 = MaterialColors.compositeARGBWithAlpha(((LinearProgressIndicatorSpec) this.spec).trackColor, this.drawable.getAlpha());
        float f = ((-this.trackLength) / 2.0f) + this.displayedCornerRadius;
        float f10 = -f;
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setColor(r02);
        float f11 = this.displayedTrackThickness;
        canvas.drawRect(f, (-f11) / 2.0f, f10, f11 / 2.0f, paint);
        float f12 = this.displayedCornerRadius;
        RectF rectF = new RectF(-f12, -f12, f12, f12);
        drawRoundedEnd(canvas, paint, this.displayedTrackThickness, this.displayedCornerRadius, f, true, rectF);
        drawRoundedEnd(canvas, paint, this.displayedTrackThickness, this.displayedCornerRadius, f10, false, rectF);
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public int getPreferredHeight() {
        return ((LinearProgressIndicatorSpec) this.spec).trackThickness;
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public int getPreferredWidth() {
        return -1;
    }
}
