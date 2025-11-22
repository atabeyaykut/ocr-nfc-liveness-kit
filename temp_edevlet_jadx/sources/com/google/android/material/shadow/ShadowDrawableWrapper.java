package com.google.android.material.shadow;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.appcompat.graphics.drawable.DrawableWrapper;
import androidx.core.content.ContextCompat;
import com.google.android.material.R;

@Deprecated
/* loaded from: classes2.dex */
public class ShadowDrawableWrapper extends DrawableWrapper {
    static final double COS_45 = Math.cos(Math.toRadians(45.0d));
    static final float SHADOW_BOTTOM_SCALE = 1.0f;
    static final float SHADOW_HORIZ_SCALE = 0.5f;
    static final float SHADOW_MULTIPLIER = 1.5f;
    static final float SHADOW_TOP_SCALE = 0.25f;
    private boolean addPaddingForCorners;

    @NonNull
    final RectF contentBounds;
    float cornerRadius;

    @NonNull
    final Paint cornerShadowPaint;
    Path cornerShadowPath;
    private boolean dirty;

    @NonNull
    final Paint edgeShadowPaint;
    float maxShadowSize;
    private boolean printedShadowClipWarning;
    float rawMaxShadowSize;
    float rawShadowSize;
    private float rotation;
    private final int shadowEndColor;
    private final int shadowMiddleColor;
    float shadowSize;
    private final int shadowStartColor;

    public ShadowDrawableWrapper(Context context, Drawable drawable, float f, float f10, float f11) {
        super(drawable);
        this.dirty = true;
        this.addPaddingForCorners = true;
        this.printedShadowClipWarning = false;
        this.shadowStartColor = ContextCompat.getColor(context, R.color.design_fab_shadow_start_color);
        this.shadowMiddleColor = ContextCompat.getColor(context, R.color.design_fab_shadow_mid_color);
        this.shadowEndColor = ContextCompat.getColor(context, R.color.design_fab_shadow_end_color);
        Paint paint = new Paint(5);
        this.cornerShadowPaint = paint;
        paint.setStyle(Paint.Style.FILL);
        this.cornerRadius = Math.round(f);
        this.contentBounds = new RectF();
        Paint paint2 = new Paint(paint);
        this.edgeShadowPaint = paint2;
        paint2.setAntiAlias(false);
        setShadowSize(f10, f11);
    }

    private void buildComponents(@NonNull Rect rect) {
        float f = this.rawMaxShadowSize;
        float f10 = SHADOW_MULTIPLIER * f;
        this.contentBounds.set(rect.left + f, rect.top + f10, rect.right - f, rect.bottom - f10);
        Drawable wrappedDrawable = getWrappedDrawable();
        RectF rectF = this.contentBounds;
        wrappedDrawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
        buildShadowCorners();
    }

    private void buildShadowCorners() {
        float f = this.cornerRadius;
        RectF rectF = new RectF(-f, -f, f, f);
        RectF rectF2 = new RectF(rectF);
        float f10 = this.shadowSize;
        rectF2.inset(-f10, -f10);
        Path path = this.cornerShadowPath;
        if (path == null) {
            this.cornerShadowPath = new Path();
        } else {
            path.reset();
        }
        this.cornerShadowPath.setFillType(Path.FillType.EVEN_ODD);
        this.cornerShadowPath.moveTo(-this.cornerRadius, 0.0f);
        this.cornerShadowPath.rLineTo(-this.shadowSize, 0.0f);
        this.cornerShadowPath.arcTo(rectF2, 180.0f, 90.0f, false);
        this.cornerShadowPath.arcTo(rectF, 270.0f, -90.0f, false);
        this.cornerShadowPath.close();
        float f11 = -rectF2.top;
        if (f11 > 0.0f) {
            float f12 = this.cornerRadius / f11;
            this.cornerShadowPaint.setShader(new RadialGradient(0.0f, 0.0f, f11, new int[]{0, this.shadowStartColor, this.shadowMiddleColor, this.shadowEndColor}, new float[]{0.0f, f12, ((1.0f - f12) / 2.0f) + f12, 1.0f}, Shader.TileMode.CLAMP));
        }
        this.edgeShadowPaint.setShader(new LinearGradient(0.0f, rectF.top, 0.0f, rectF2.top, new int[]{this.shadowStartColor, this.shadowMiddleColor, this.shadowEndColor}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.edgeShadowPaint.setAntiAlias(false);
    }

    public static float calculateHorizontalPadding(float f, float f10, boolean z10) {
        if (!z10) {
            return f;
        }
        return (float) (((1.0d - COS_45) * f10) + f);
    }

    public static float calculateVerticalPadding(float f, float f10, boolean z10) {
        float f11 = f * SHADOW_MULTIPLIER;
        if (!z10) {
            return f11;
        }
        return (float) (((1.0d - COS_45) * f10) + f11);
    }

    private void drawShadow(@NonNull Canvas canvas) {
        int r14;
        float f;
        int r16;
        float f10;
        float f11;
        float f12;
        int r82 = canvas.save();
        canvas.rotate(this.rotation, this.contentBounds.centerX(), this.contentBounds.centerY());
        float f13 = this.cornerRadius;
        float f14 = (-f13) - this.shadowSize;
        float f15 = f13 * 2.0f;
        boolean z10 = this.contentBounds.width() - f15 > 0.0f;
        boolean z11 = this.contentBounds.height() - f15 > 0.0f;
        float f16 = this.rawShadowSize;
        float f17 = f13 / ((f16 - (0.5f * f16)) + f13);
        float f18 = f13 / ((f16 - (SHADOW_TOP_SCALE * f16)) + f13);
        float f19 = f13 / ((f16 - (f16 * 1.0f)) + f13);
        int r42 = canvas.save();
        RectF rectF = this.contentBounds;
        canvas.translate(rectF.left + f13, rectF.top + f13);
        canvas.scale(f17, f18);
        canvas.drawPath(this.cornerShadowPath, this.cornerShadowPaint);
        if (z10) {
            canvas.scale(1.0f / f17, 1.0f);
            r14 = r42;
            f = f19;
            r16 = r82;
            f10 = f18;
            canvas.drawRect(0.0f, f14, this.contentBounds.width() - f15, -this.cornerRadius, this.edgeShadowPaint);
        } else {
            r14 = r42;
            f = f19;
            r16 = r82;
            f10 = f18;
        }
        canvas.restoreToCount(r14);
        int r142 = canvas.save();
        RectF rectF2 = this.contentBounds;
        canvas.translate(rectF2.right - f13, rectF2.bottom - f13);
        float f20 = f;
        canvas.scale(f17, f20);
        canvas.rotate(180.0f);
        canvas.drawPath(this.cornerShadowPath, this.cornerShadowPaint);
        if (z10) {
            canvas.scale(1.0f / f17, 1.0f);
            f11 = f10;
            f12 = f20;
            canvas.drawRect(0.0f, f14, this.contentBounds.width() - f15, (-this.cornerRadius) + this.shadowSize, this.edgeShadowPaint);
        } else {
            f11 = f10;
            f12 = f20;
        }
        canvas.restoreToCount(r142);
        int r12 = canvas.save();
        RectF rectF3 = this.contentBounds;
        canvas.translate(rectF3.left + f13, rectF3.bottom - f13);
        canvas.scale(f17, f12);
        canvas.rotate(270.0f);
        canvas.drawPath(this.cornerShadowPath, this.cornerShadowPaint);
        if (z11) {
            canvas.scale(1.0f / f12, 1.0f);
            canvas.drawRect(0.0f, f14, this.contentBounds.height() - f15, -this.cornerRadius, this.edgeShadowPaint);
        }
        canvas.restoreToCount(r12);
        int r83 = canvas.save();
        RectF rectF4 = this.contentBounds;
        canvas.translate(rectF4.right - f13, rectF4.top + f13);
        float f21 = f11;
        canvas.scale(f17, f21);
        canvas.rotate(90.0f);
        canvas.drawPath(this.cornerShadowPath, this.cornerShadowPaint);
        if (z11) {
            canvas.scale(1.0f / f21, 1.0f);
            canvas.drawRect(0.0f, f14, this.contentBounds.height() - f15, -this.cornerRadius, this.edgeShadowPaint);
        }
        canvas.restoreToCount(r83);
        canvas.restoreToCount(r16);
    }

    private static int toEven(float f) {
        int r22 = Math.round(f);
        return r22 % 2 == 1 ? r22 - 1 : r22;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (this.dirty) {
            buildComponents(getBounds());
            this.dirty = false;
        }
        drawShadow(canvas);
        super.draw(canvas);
    }

    public float getCornerRadius() {
        return this.cornerRadius;
    }

    public float getMaxShadowSize() {
        return this.rawMaxShadowSize;
    }

    public float getMinHeight() {
        float f = this.rawMaxShadowSize;
        return (this.rawMaxShadowSize * SHADOW_MULTIPLIER * 2.0f) + (Math.max(f, ((f * SHADOW_MULTIPLIER) / 2.0f) + this.cornerRadius) * 2.0f);
    }

    public float getMinWidth() {
        float f = this.rawMaxShadowSize;
        return (this.rawMaxShadowSize * 2.0f) + (Math.max(f, (f / 2.0f) + this.cornerRadius) * 2.0f);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        int r02 = (int) Math.ceil(calculateVerticalPadding(this.rawMaxShadowSize, this.cornerRadius, this.addPaddingForCorners));
        int r12 = (int) Math.ceil(calculateHorizontalPadding(this.rawMaxShadowSize, this.cornerRadius, this.addPaddingForCorners));
        rect.set(r12, r02, r12, r02);
        return true;
    }

    public float getShadowSize() {
        return this.rawShadowSize;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.dirty = true;
    }

    public void setAddPaddingForCorners(boolean z10) {
        this.addPaddingForCorners = z10;
        invalidateSelf();
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void setAlpha(int r22) {
        super.setAlpha(r22);
        this.cornerShadowPaint.setAlpha(r22);
        this.edgeShadowPaint.setAlpha(r22);
    }

    public void setCornerRadius(float f) {
        float fRound = Math.round(f);
        if (this.cornerRadius == fRound) {
            return;
        }
        this.cornerRadius = fRound;
        this.dirty = true;
        invalidateSelf();
    }

    public void setMaxShadowSize(float f) {
        setShadowSize(this.rawShadowSize, f);
    }

    public final void setRotation(float f) {
        if (this.rotation != f) {
            this.rotation = f;
            invalidateSelf();
        }
    }

    public void setShadowSize(float f) {
        setShadowSize(f, this.rawMaxShadowSize);
    }

    public void setShadowSize(float f, float f10) {
        if (f < 0.0f || f10 < 0.0f) {
            throw new IllegalArgumentException("invalid shadow size");
        }
        float even = toEven(f);
        float even2 = toEven(f10);
        if (even > even2) {
            if (!this.printedShadowClipWarning) {
                this.printedShadowClipWarning = true;
            }
            even = even2;
        }
        if (this.rawShadowSize == even && this.rawMaxShadowSize == even2) {
            return;
        }
        this.rawShadowSize = even;
        this.rawMaxShadowSize = even2;
        this.shadowSize = Math.round(even * SHADOW_MULTIPLIER);
        this.maxShadowSize = even2;
        this.dirty = true;
        invalidateSelf();
    }
}
