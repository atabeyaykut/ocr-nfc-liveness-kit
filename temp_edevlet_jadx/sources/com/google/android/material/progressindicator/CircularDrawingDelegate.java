package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import com.google.android.material.color.MaterialColors;

/* loaded from: classes2.dex */
final class CircularDrawingDelegate extends DrawingDelegate<CircularProgressIndicatorSpec> {
    private float adjustedRadius;
    private int arcDirectionFactor;
    private float displayedCornerRadius;
    private float displayedTrackThickness;

    public CircularDrawingDelegate(@NonNull CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(circularProgressIndicatorSpec);
        this.arcDirectionFactor = 1;
    }

    private void drawRoundedEnd(Canvas canvas, Paint paint, float f, float f10, float f11, boolean z10, RectF rectF) {
        float f12 = z10 ? -1.0f : 1.0f;
        canvas.save();
        canvas.rotate(f11);
        float f13 = f / 2.0f;
        float f14 = f12 * f10;
        canvas.drawRect((this.adjustedRadius - f13) + f10, Math.min(0.0f, this.arcDirectionFactor * f14), (this.adjustedRadius + f13) - f10, Math.max(0.0f, f14 * this.arcDirectionFactor), paint);
        canvas.translate((this.adjustedRadius - f13) + f10, 0.0f);
        canvas.drawArc(rectF, 180.0f, (-f12) * 90.0f * this.arcDirectionFactor, true, paint);
        canvas.translate(f - (f10 * 2.0f), 0.0f);
        canvas.drawArc(rectF, 0.0f, f12 * 90.0f * this.arcDirectionFactor, true, paint);
        canvas.restore();
    }

    private int getSize() {
        S s7 = this.spec;
        return (((CircularProgressIndicatorSpec) s7).indicatorInset * 2) + ((CircularProgressIndicatorSpec) s7).indicatorSize;
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public void adjustCanvas(@NonNull Canvas canvas, @FloatRange(from = 0.0d, to = 1.0d) float f) {
        S s7 = this.spec;
        float f10 = (((CircularProgressIndicatorSpec) s7).indicatorSize / 2.0f) + ((CircularProgressIndicatorSpec) s7).indicatorInset;
        canvas.translate(f10, f10);
        canvas.rotate(-90.0f);
        float f11 = -f10;
        canvas.clipRect(f11, f11, f10, f10);
        this.arcDirectionFactor = ((CircularProgressIndicatorSpec) this.spec).indicatorDirection == 0 ? 1 : -1;
        this.displayedTrackThickness = ((CircularProgressIndicatorSpec) r5).trackThickness * f;
        this.displayedCornerRadius = ((CircularProgressIndicatorSpec) r5).trackCornerRadius * f;
        this.adjustedRadius = (((CircularProgressIndicatorSpec) r5).indicatorSize - ((CircularProgressIndicatorSpec) r5).trackThickness) / 2.0f;
        if ((this.drawable.isShowing() && ((CircularProgressIndicatorSpec) this.spec).showAnimationBehavior == 2) || (this.drawable.isHiding() && ((CircularProgressIndicatorSpec) this.spec).hideAnimationBehavior == 1)) {
            this.adjustedRadius = (((1.0f - f) * ((CircularProgressIndicatorSpec) this.spec).trackThickness) / 2.0f) + this.adjustedRadius;
        } else if ((this.drawable.isShowing() && ((CircularProgressIndicatorSpec) this.spec).showAnimationBehavior == 1) || (this.drawable.isHiding() && ((CircularProgressIndicatorSpec) this.spec).hideAnimationBehavior == 2)) {
            this.adjustedRadius -= ((1.0f - f) * ((CircularProgressIndicatorSpec) this.spec).trackThickness) / 2.0f;
        }
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public void fillIndicator(@NonNull Canvas canvas, @NonNull Paint paint, @FloatRange(from = 0.0d, to = 1.0d) float f, @FloatRange(from = 0.0d, to = 1.0d) float f10, @ColorInt int r18) {
        if (f == f10) {
            return;
        }
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        paint.setColor(r18);
        paint.setStrokeWidth(this.displayedTrackThickness);
        int r12 = this.arcDirectionFactor;
        float f11 = f * 360.0f * r12;
        float f12 = (f10 >= f ? f10 - f : (f10 + 1.0f) - f) * 360.0f * r12;
        float f13 = this.adjustedRadius;
        canvas.drawArc(new RectF(-f13, -f13, f13, f13), f11, f12, false, paint);
        if (this.displayedCornerRadius <= 0.0f || Math.abs(f12) >= 360.0f) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        float f14 = this.displayedCornerRadius;
        RectF rectF = new RectF(-f14, -f14, f14, f14);
        drawRoundedEnd(canvas, paint, this.displayedTrackThickness, this.displayedCornerRadius, f11, true, rectF);
        drawRoundedEnd(canvas, paint, this.displayedTrackThickness, this.displayedCornerRadius, f11 + f12, false, rectF);
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public void fillTrack(@NonNull Canvas canvas, @NonNull Paint paint) {
        int r02 = MaterialColors.compositeARGBWithAlpha(((CircularProgressIndicatorSpec) this.spec).trackColor, this.drawable.getAlpha());
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        paint.setColor(r02);
        paint.setStrokeWidth(this.displayedTrackThickness);
        float f = this.adjustedRadius;
        canvas.drawArc(new RectF(-f, -f, f, f), 0.0f, 360.0f, false, paint);
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public int getPreferredHeight() {
        return getSize();
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public int getPreferredWidth() {
        return getSize();
    }
}
