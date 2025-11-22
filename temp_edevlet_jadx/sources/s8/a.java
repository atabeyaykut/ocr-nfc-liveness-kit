package s8;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import b8.f;
import com.yalantis.ucrop.UCropActivity;
import com.yalantis.ucrop.view.GestureCropImageView;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import s8.c;

/* loaded from: classes2.dex */
public class a extends c {
    public float A;
    public int B;
    public int C;
    public long D;

    /* renamed from: r, reason: collision with root package name */
    public final RectF f15277r;

    /* renamed from: s, reason: collision with root package name */
    public final Matrix f15278s;

    /* renamed from: t, reason: collision with root package name */
    public float f15279t;

    /* renamed from: v, reason: collision with root package name */
    public float f15280v;
    public o8.c w;

    /* renamed from: x, reason: collision with root package name */
    public RunnableC0245a f15281x;

    /* renamed from: y, reason: collision with root package name */
    public b f15282y;

    /* renamed from: z, reason: collision with root package name */
    public float f15283z;

    /* renamed from: s8.a$a, reason: collision with other inner class name */
    public static class RunnableC0245a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference<a> f15284a;

        /* renamed from: b, reason: collision with root package name */
        public final long f15285b;

        /* renamed from: c, reason: collision with root package name */
        public final long f15286c = System.currentTimeMillis();

        /* renamed from: d, reason: collision with root package name */
        public final float f15287d;

        /* renamed from: e, reason: collision with root package name */
        public final float f15288e;
        public final float f;

        /* renamed from: g, reason: collision with root package name */
        public final float f15289g;

        /* renamed from: h, reason: collision with root package name */
        public final float f15290h;

        /* renamed from: j, reason: collision with root package name */
        public final float f15291j;

        /* renamed from: k, reason: collision with root package name */
        public final boolean f15292k;

        public RunnableC0245a(a aVar, long j10, float f, float f10, float f11, float f12, float f13, float f14, boolean z10) {
            this.f15284a = new WeakReference<>(aVar);
            this.f15285b = j10;
            this.f15287d = f;
            this.f15288e = f10;
            this.f = f11;
            this.f15289g = f12;
            this.f15290h = f13;
            this.f15291j = f14;
            this.f15292k = z10;
        }

        @Override // java.lang.Runnable
        public final void run() {
            a aVar = this.f15284a.get();
            if (aVar == null) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f15286c;
            long j10 = this.f15285b;
            float fMin = Math.min(j10, jCurrentTimeMillis);
            float f = j10;
            float f10 = (fMin / f) - 1.0f;
            float f11 = (f10 * f10 * f10) + 1.0f;
            float f12 = (this.f * f11) + 0.0f;
            float f13 = (f11 * this.f15289g) + 0.0f;
            float fA = f.A(fMin, this.f15291j, f);
            if (fMin < f) {
                float[] fArr = aVar.f15301b;
                aVar.f(f12 - (fArr[0] - this.f15287d), f13 - (fArr[1] - this.f15288e));
                if (!this.f15292k) {
                    float f14 = this.f15290h + fA;
                    RectF rectF = aVar.f15277r;
                    aVar.j(f14, rectF.centerX(), rectF.centerY());
                }
                if (aVar.i(aVar.f15300a)) {
                    return;
                }
                aVar.post(this);
            }
        }
    }

    public static class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference<a> f15293a;

        /* renamed from: d, reason: collision with root package name */
        public final float f15296d;

        /* renamed from: e, reason: collision with root package name */
        public final float f15297e;
        public final float f;

        /* renamed from: g, reason: collision with root package name */
        public final float f15298g;

        /* renamed from: c, reason: collision with root package name */
        public final long f15295c = System.currentTimeMillis();

        /* renamed from: b, reason: collision with root package name */
        public final long f15294b = 200;

        public b(GestureCropImageView gestureCropImageView, float f, float f10, float f11, float f12) {
            this.f15293a = new WeakReference<>(gestureCropImageView);
            this.f15296d = f;
            this.f15297e = f10;
            this.f = f11;
            this.f15298g = f12;
        }

        @Override // java.lang.Runnable
        public final void run() {
            a aVar = this.f15293a.get();
            if (aVar == null) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f15295c;
            long j10 = this.f15294b;
            float fMin = Math.min(j10, jCurrentTimeMillis);
            float f = j10;
            float fA = f.A(fMin, this.f15297e, f);
            if (fMin >= f) {
                aVar.setImageToWrapCropBounds(true);
            } else {
                aVar.j(this.f15296d + fA, this.f, this.f15298g);
                aVar.post(this);
            }
        }
    }

    public a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public a(Context context, AttributeSet attributeSet, int r32) {
        super(context, attributeSet, 0);
        this.f15277r = new RectF();
        this.f15278s = new Matrix();
        this.f15280v = 10.0f;
        this.f15282y = null;
        this.B = 0;
        this.C = 0;
        this.D = 500L;
    }

    @Override // s8.c
    public final void d() {
        super.d();
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        if (this.f15279t == 0.0f) {
            this.f15279t = intrinsicWidth / intrinsicHeight;
        }
        int r22 = this.f15304e;
        float f = r22;
        float f10 = this.f15279t;
        int r6 = (int) (f / f10);
        int r72 = this.f;
        RectF rectF = this.f15277r;
        if (r6 > r72) {
            float f11 = r72;
            rectF.set((r22 - ((int) (f10 * f11))) / 2, 0.0f, r5 + r2, f11);
        } else {
            rectF.set(0.0f, (r72 - r6) / 2, f, r6 + r7);
        }
        g(intrinsicWidth, intrinsicHeight);
        float fWidth = rectF.width();
        float fHeight = rectF.height();
        float fMax = Math.max(rectF.width() / intrinsicWidth, rectF.height() / intrinsicHeight);
        float f12 = ((fWidth - (intrinsicWidth * fMax)) / 2.0f) + rectF.left;
        float f13 = ((fHeight - (intrinsicHeight * fMax)) / 2.0f) + rectF.top;
        Matrix matrix = this.f15303d;
        matrix.reset();
        matrix.postScale(fMax, fMax);
        matrix.postTranslate(f12, f13);
        setImageMatrix(matrix);
        o8.c cVar = this.w;
        if (cVar != null) {
            ((d) cVar).f15314a.f4493b.setTargetAspectRatio(this.f15279t);
        }
        c.a aVar = this.f15305g;
        if (aVar != null) {
            ((UCropActivity.a) aVar).b(getCurrentScale());
            ((UCropActivity.a) this.f15305g).a(getCurrentAngle());
        }
    }

    @Override // s8.c
    public final void e(float f, float f10, float f11) {
        if ((f <= 1.0f || getCurrentScale() * f > getMaxScale()) && (f >= 1.0f || getCurrentScale() * f < getMinScale())) {
            return;
        }
        super.e(f, f10, f11);
    }

    public final void g(float f, float f10) {
        RectF rectF = this.f15277r;
        float fMin = Math.min(Math.min(rectF.width() / f, rectF.width() / f10), Math.min(rectF.height() / f10, rectF.height() / f));
        this.A = fMin;
        this.f15283z = fMin * this.f15280v;
    }

    @Nullable
    public o8.c getCropBoundsChangeListener() {
        return this.w;
    }

    public float getMaxScale() {
        return this.f15283z;
    }

    public float getMinScale() {
        return this.A;
    }

    public float getTargetAspectRatio() {
        return this.f15279t;
    }

    public final void h() {
        removeCallbacks(this.f15281x);
        removeCallbacks(this.f15282y);
    }

    public final boolean i(float[] fArr) {
        Matrix matrix = this.f15278s;
        matrix.reset();
        matrix.setRotate(-getCurrentAngle());
        float[] fArrCopyOf = Arrays.copyOf(fArr, fArr.length);
        matrix.mapPoints(fArrCopyOf);
        float[] fArrI = f.I(this.f15277r);
        matrix.mapPoints(fArrI);
        return f.p0(fArrCopyOf).contains(f.p0(fArrI));
    }

    public final void j(float f, float f10, float f11) {
        if (f <= getMaxScale()) {
            e(f / getCurrentScale(), f10, f11);
        }
    }

    public void setCropBoundsChangeListener(@Nullable o8.c cVar) {
        this.w = cVar;
    }

    public void setCropRect(RectF rectF) {
        this.f15279t = rectF.width() / rectF.height();
        this.f15277r.set(rectF.left - getPaddingLeft(), rectF.top - getPaddingTop(), rectF.right - getPaddingRight(), rectF.bottom - getPaddingBottom());
        if (getDrawable() != null) {
            g(r6.getIntrinsicWidth(), r6.getIntrinsicHeight());
        }
        setImageToWrapCropBounds(true);
    }

    public void setImageToWrapCropBounds(boolean z10) {
        boolean z11;
        float fMax;
        char c10;
        if (this.f15309l) {
            float[] fArr = this.f15300a;
            if (i(fArr)) {
                return;
            }
            float[] fArr2 = this.f15301b;
            float f = fArr2[0];
            float f10 = fArr2[1];
            float currentScale = getCurrentScale();
            RectF rectF = this.f15277r;
            float fCenterX = rectF.centerX() - f;
            float fCenterY = rectF.centerY() - f10;
            Matrix matrix = this.f15278s;
            matrix.reset();
            matrix.setTranslate(fCenterX, fCenterY);
            float[] fArrCopyOf = Arrays.copyOf(fArr, fArr.length);
            matrix.mapPoints(fArrCopyOf);
            boolean zI = i(fArrCopyOf);
            if (zI) {
                matrix.reset();
                matrix.setRotate(-getCurrentAngle());
                float[] fArrCopyOf2 = Arrays.copyOf(fArr, fArr.length);
                float[] fArrI = f.I(rectF);
                matrix.mapPoints(fArrCopyOf2);
                matrix.mapPoints(fArrI);
                RectF rectFP0 = f.p0(fArrCopyOf2);
                RectF rectFP02 = f.p0(fArrI);
                float f11 = rectFP0.left - rectFP02.left;
                float f12 = rectFP0.top - rectFP02.top;
                float f13 = rectFP0.right - rectFP02.right;
                float f14 = rectFP0.bottom - rectFP02.bottom;
                float[] fArr3 = new float[4];
                if (f11 <= 0.0f) {
                    f11 = 0.0f;
                }
                fArr3[0] = f11;
                if (f12 <= 0.0f) {
                    f12 = 0.0f;
                }
                fArr3[1] = f12;
                if (f13 < 0.0f) {
                    c10 = 2;
                } else {
                    c10 = 2;
                    f13 = 0.0f;
                }
                fArr3[c10] = f13;
                if (f14 >= 0.0f) {
                    f14 = 0.0f;
                }
                fArr3[3] = f14;
                matrix.reset();
                matrix.setRotate(getCurrentAngle());
                matrix.mapPoints(fArr3);
                float f15 = -(fArr3[0] + fArr3[c10]);
                float f16 = -(fArr3[1] + fArr3[3]);
                fCenterX = f15;
                fCenterY = f16;
                z11 = zI;
                fMax = 0.0f;
            } else {
                RectF rectF2 = new RectF(rectF);
                matrix.reset();
                matrix.setRotate(getCurrentAngle());
                matrix.mapRect(rectF2);
                z11 = zI;
                float[] fArr4 = {(float) Math.sqrt(Math.pow(fArr[1] - fArr[3], 2.0d) + Math.pow(fArr[0] - fArr[2], 2.0d)), (float) Math.sqrt(Math.pow(fArr[3] - fArr[5], 2.0d) + Math.pow(fArr[2] - fArr[4], 2.0d))};
                fMax = (Math.max(rectF2.width() / fArr4[0], rectF2.height() / fArr4[1]) * currentScale) - currentScale;
            }
            if (z10) {
                RunnableC0245a runnableC0245a = new RunnableC0245a(this, this.D, f, f10, fCenterX, fCenterY, currentScale, fMax, z11);
                this.f15281x = runnableC0245a;
                post(runnableC0245a);
            } else {
                f(fCenterX, fCenterY);
                if (z11) {
                    return;
                }
                j(currentScale + fMax, rectF.centerX(), rectF.centerY());
            }
        }
    }

    public void setImageToWrapCropBoundsAnimDuration(@IntRange(from = 100) long j10) {
        if (j10 <= 0) {
            throw new IllegalArgumentException("Animation duration cannot be negative value.");
        }
        this.D = j10;
    }

    public void setMaxResultImageSizeX(@IntRange(from = 10) int r12) {
        this.B = r12;
    }

    public void setMaxResultImageSizeY(@IntRange(from = 10) int r12) {
        this.C = r12;
    }

    public void setMaxScaleMultiplier(float f) {
        this.f15280v = f;
    }

    public void setTargetAspectRatio(float f) {
        if (getDrawable() == null) {
            this.f15279t = f;
            return;
        }
        if (f == 0.0f) {
            f = r0.getIntrinsicWidth() / r0.getIntrinsicHeight();
        }
        this.f15279t = f;
        o8.c cVar = this.w;
        if (cVar != null) {
            ((d) cVar).f15314a.f4493b.setTargetAspectRatio(f);
        }
    }
}
