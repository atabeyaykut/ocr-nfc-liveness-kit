package com.yalantis.ucrop.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import b8.f;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
import o8.d;
import s8.e;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes2.dex */
public class OverlayView extends View {
    public final int A;
    public final int B;
    public d C;
    public boolean D;

    /* renamed from: a, reason: collision with root package name */
    public final RectF f4471a;

    /* renamed from: b, reason: collision with root package name */
    public final RectF f4472b;

    /* renamed from: c, reason: collision with root package name */
    public int f4473c;

    /* renamed from: d, reason: collision with root package name */
    public int f4474d;

    /* renamed from: e, reason: collision with root package name */
    public float[] f4475e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f4476g;

    /* renamed from: h, reason: collision with root package name */
    public float f4477h;

    /* renamed from: j, reason: collision with root package name */
    public float[] f4478j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f4479k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f4480l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f4481m;

    /* renamed from: n, reason: collision with root package name */
    public int f4482n;

    /* renamed from: p, reason: collision with root package name */
    public final Path f4483p;

    /* renamed from: q, reason: collision with root package name */
    public final Paint f4484q;

    /* renamed from: r, reason: collision with root package name */
    public final Paint f4485r;

    /* renamed from: s, reason: collision with root package name */
    public final Paint f4486s;

    /* renamed from: t, reason: collision with root package name */
    public final Paint f4487t;

    /* renamed from: v, reason: collision with root package name */
    public int f4488v;
    public float w;

    /* renamed from: x, reason: collision with root package name */
    public float f4489x;

    /* renamed from: y, reason: collision with root package name */
    public int f4490y;

    /* renamed from: z, reason: collision with root package name */
    public final int f4491z;

    public OverlayView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f4471a = new RectF();
        this.f4472b = new RectF();
        this.f4478j = null;
        this.f4483p = new Path();
        this.f4484q = new Paint(1);
        this.f4485r = new Paint(1);
        this.f4486s = new Paint(1);
        this.f4487t = new Paint(1);
        this.f4488v = 0;
        this.w = -1.0f;
        this.f4489x = -1.0f;
        this.f4490y = -1;
        this.f4491z = getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_rect_corner_touch_threshold);
        this.A = getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_rect_min_size);
        this.B = getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_rect_corner_touch_area_line_length);
    }

    public final void a() {
        RectF rectF = this.f4471a;
        this.f4475e = f.I(rectF);
        rectF.centerX();
        rectF.centerY();
        this.f4478j = null;
        Path path = this.f4483p;
        path.reset();
        path.addCircle(rectF.centerX(), rectF.centerY(), Math.min(rectF.width(), rectF.height()) / 2.0f, Path.Direction.CW);
    }

    @NonNull
    public RectF getCropViewRect() {
        return this.f4471a;
    }

    public int getFreestyleCropMode() {
        return this.f4488v;
    }

    public d getOverlayViewChangeListener() {
        return this.C;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.save();
        boolean z10 = this.f4481m;
        RectF rectF = this.f4471a;
        if (z10) {
            canvas.clipPath(this.f4483p, Region.Op.DIFFERENCE);
        } else {
            canvas.clipRect(rectF, Region.Op.DIFFERENCE);
        }
        canvas.drawColor(this.f4482n);
        canvas.restore();
        if (this.f4481m) {
            canvas.drawCircle(rectF.centerX(), rectF.centerY(), Math.min(rectF.width(), rectF.height()) / 2.0f, this.f4484q);
        }
        if (this.f4480l) {
            if (this.f4478j == null && !rectF.isEmpty()) {
                this.f4478j = new float[(this.f4476g * 4) + (this.f * 4)];
                int r32 = 0;
                for (int r22 = 0; r22 < this.f; r22++) {
                    float[] fArr = this.f4478j;
                    int r6 = r32 + 1;
                    fArr[r32] = rectF.left;
                    int r33 = r6 + 1;
                    float f = r22 + 1.0f;
                    fArr[r6] = ((f / (this.f + 1)) * rectF.height()) + rectF.top;
                    float[] fArr2 = this.f4478j;
                    int r52 = r33 + 1;
                    fArr2[r33] = rectF.right;
                    r32 = r52 + 1;
                    fArr2[r52] = ((f / (this.f + 1)) * rectF.height()) + rectF.top;
                }
                for (int r02 = 0; r02 < this.f4476g; r02++) {
                    int r42 = r32 + 1;
                    float f10 = r02 + 1.0f;
                    this.f4478j[r32] = ((f10 / (this.f4476g + 1)) * rectF.width()) + rectF.left;
                    float[] fArr3 = this.f4478j;
                    int r34 = r42 + 1;
                    fArr3[r42] = rectF.top;
                    int r43 = r34 + 1;
                    fArr3[r34] = ((f10 / (this.f4476g + 1)) * rectF.width()) + rectF.left;
                    r32 = r43 + 1;
                    this.f4478j[r43] = rectF.bottom;
                }
            }
            float[] fArr4 = this.f4478j;
            if (fArr4 != null) {
                canvas.drawLines(fArr4, this.f4485r);
            }
        }
        if (this.f4479k) {
            canvas.drawRect(rectF, this.f4486s);
        }
        if (this.f4488v != 0) {
            canvas.save();
            RectF rectF2 = this.f4472b;
            rectF2.set(rectF);
            int r23 = this.B;
            float f11 = r23;
            float f12 = -r23;
            rectF2.inset(f11, f12);
            canvas.clipRect(rectF2, Region.Op.DIFFERENCE);
            rectF2.set(rectF);
            rectF2.inset(f12, f11);
            canvas.clipRect(rectF2, Region.Op.DIFFERENCE);
            canvas.drawRect(rectF, this.f4487t);
            canvas.restore();
        }
    }

    @Override // android.view.View
    public final void onLayout(boolean z10, int r22, int r32, int r42, int r52) {
        super.onLayout(z10, r22, r32, r42, r52);
        if (z10) {
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = getWidth() - getPaddingRight();
            int height = getHeight() - getPaddingBottom();
            this.f4473c = width - paddingLeft;
            this.f4474d = height - paddingTop;
            if (this.D) {
                this.D = false;
                setTargetAspectRatio(this.f4477h);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007f  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r19) {
        /*
            Method dump skipped, instructions count: 421
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yalantis.ucrop.view.OverlayView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setCircleDimmedLayer(boolean z10) {
        this.f4481m = z10;
    }

    public void setCropFrameColor(@ColorInt int r22) {
        this.f4486s.setColor(r22);
    }

    public void setCropFrameStrokeWidth(@IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY) int r22) {
        this.f4486s.setStrokeWidth(r22);
    }

    public void setCropGridColor(@ColorInt int r22) {
        this.f4485r.setColor(r22);
    }

    public void setCropGridColumnCount(@IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY) int r12) {
        this.f4476g = r12;
        this.f4478j = null;
    }

    public void setCropGridRowCount(@IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY) int r12) {
        this.f = r12;
        this.f4478j = null;
    }

    public void setCropGridStrokeWidth(@IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY) int r22) {
        this.f4485r.setStrokeWidth(r22);
    }

    public void setDimmedColor(@ColorInt int r12) {
        this.f4482n = r12;
    }

    @Deprecated
    public void setFreestyleCropEnabled(boolean z10) {
        this.f4488v = z10 ? 1 : 0;
    }

    public void setFreestyleCropMode(int r12) {
        this.f4488v = r12;
        postInvalidate();
    }

    public void setOverlayViewChangeListener(d dVar) {
        this.C = dVar;
    }

    public void setShowCropFrame(boolean z10) {
        this.f4479k = z10;
    }

    public void setShowCropGrid(boolean z10) {
        this.f4480l = z10;
    }

    public void setTargetAspectRatio(float f) {
        this.f4477h = f;
        int r02 = this.f4473c;
        if (r02 <= 0) {
            this.D = true;
            return;
        }
        int r12 = (int) (r02 / f);
        int r22 = this.f4474d;
        RectF rectF = this.f4471a;
        if (r12 > r22) {
            int r03 = (r02 - ((int) (r22 * f))) / 2;
            rectF.set(getPaddingLeft() + r03, getPaddingTop(), getPaddingLeft() + r7 + r03, getPaddingTop() + this.f4474d);
        } else {
            int r23 = (r22 - r12) / 2;
            rectF.set(getPaddingLeft(), getPaddingTop() + r23, getPaddingLeft() + this.f4473c, getPaddingTop() + r12 + r23);
        }
        d dVar = this.C;
        if (dVar != null) {
            ((e) dVar).f15315a.f4492a.setCropRect(rectF);
        }
        a();
        postInvalidate();
    }
}
