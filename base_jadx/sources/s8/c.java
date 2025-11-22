package s8;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.WindowManager;
import android.view.animation.AccelerateInterpolator;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import b8.f;
import com.yalantis.ucrop.UCropActivity;

/* loaded from: classes2.dex */
public class c extends AppCompatImageView {

    /* renamed from: a, reason: collision with root package name */
    public final float[] f15300a;

    /* renamed from: b, reason: collision with root package name */
    public final float[] f15301b;

    /* renamed from: c, reason: collision with root package name */
    public final float[] f15302c;

    /* renamed from: d, reason: collision with root package name */
    public final Matrix f15303d;

    /* renamed from: e, reason: collision with root package name */
    public int f15304e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public a f15305g;

    /* renamed from: h, reason: collision with root package name */
    public float[] f15306h;

    /* renamed from: j, reason: collision with root package name */
    public float[] f15307j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f15308k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f15309l;

    /* renamed from: m, reason: collision with root package name */
    public int f15310m;

    /* renamed from: n, reason: collision with root package name */
    public String f15311n;

    /* renamed from: p, reason: collision with root package name */
    public String f15312p;

    /* renamed from: q, reason: collision with root package name */
    public p8.c f15313q;

    public interface a {
    }

    public c(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public c(Context context, AttributeSet attributeSet, int r32) {
        super(context, attributeSet, 0);
        this.f15300a = new float[8];
        this.f15301b = new float[2];
        this.f15302c = new float[9];
        this.f15303d = new Matrix();
        this.f15308k = false;
        this.f15309l = false;
        this.f15310m = 0;
        c();
    }

    public final float a(@NonNull Matrix matrix) {
        float[] fArr = this.f15302c;
        matrix.getValues(fArr);
        double d10 = fArr[1];
        matrix.getValues(fArr);
        return (float) (-(Math.atan2(d10, fArr[0]) * 57.29577951308232d));
    }

    public final float b(@NonNull Matrix matrix) {
        float[] fArr = this.f15302c;
        matrix.getValues(fArr);
        double dPow = Math.pow(fArr[0], 2.0d);
        matrix.getValues(fArr);
        return (float) Math.sqrt(Math.pow(fArr[3], 2.0d) + dPow);
    }

    public void c() {
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    public void d() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        Log.d("TransformImageView", String.format("Image size: [%d:%d]", Integer.valueOf((int) intrinsicWidth), Integer.valueOf((int) intrinsicHeight)));
        RectF rectF = new RectF(0.0f, 0.0f, intrinsicWidth, intrinsicHeight);
        this.f15306h = f.I(rectF);
        this.f15307j = new float[]{rectF.centerX(), rectF.centerY()};
        this.f15309l = true;
        a aVar = this.f15305g;
        if (aVar != null) {
            UCropActivity uCropActivity = UCropActivity.this;
            uCropActivity.f4455m.animate().alpha(1.0f).setDuration(300L).setInterpolator(new AccelerateInterpolator());
            uCropActivity.A.setClickable(false);
            uCropActivity.f4454l = false;
            uCropActivity.supportInvalidateOptionsMenu();
        }
    }

    public void e(float f, float f10, float f11) {
        if (f != 0.0f) {
            Matrix matrix = this.f15303d;
            matrix.postScale(f, f, f10, f11);
            setImageMatrix(matrix);
            a aVar = this.f15305g;
            if (aVar != null) {
                ((UCropActivity.a) aVar).b(b(matrix));
            }
        }
    }

    public final void f(float f, float f10) {
        if (f == 0.0f && f10 == 0.0f) {
            return;
        }
        Matrix matrix = this.f15303d;
        matrix.postTranslate(f, f10);
        setImageMatrix(matrix);
    }

    public float getCurrentAngle() {
        return a(this.f15303d);
    }

    public float getCurrentScale() {
        return b(this.f15303d);
    }

    public p8.c getExifInfo() {
        return this.f15313q;
    }

    public String getImageInputPath() {
        return this.f15311n;
    }

    public String getImageOutputPath() {
        return this.f15312p;
    }

    public int getMaxBitmapSize() {
        int r12;
        if (this.f15310m <= 0) {
            WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
            Point point = new Point();
            if (windowManager != null) {
                windowManager.getDefaultDisplay().getSize(point);
            }
            int r02 = point.x;
            int r03 = (int) Math.sqrt(Math.pow(point.y, 2.0d) + Math.pow(r02, 2.0d));
            Canvas canvas = new Canvas();
            int r13 = Math.min(canvas.getMaximumBitmapWidth(), canvas.getMaximumBitmapHeight());
            if (r13 > 0) {
                r03 = Math.min(r03, r13);
            }
            try {
                r12 = r8.b.a();
            } catch (Exception e10) {
                Log.d("EglUtils", "getMaxTextureSize: ", e10);
                r12 = 0;
            }
            if (r12 > 0) {
                r03 = Math.min(r03, r12);
            }
            Log.d("BitmapLoadUtils", "maxBitmapSize: " + r03);
            this.f15310m = r03;
        }
        return this.f15310m;
    }

    @Nullable
    public Bitmap getViewBitmap() {
        if (getDrawable() == null || !(getDrawable() instanceof r8.c)) {
            return null;
        }
        return ((r8.c) getDrawable()).f14335b;
    }

    @Override // android.view.View
    public final void onLayout(boolean z10, int r22, int r32, int r42, int r52) {
        super.onLayout(z10, r22, r32, r42, r52);
        if (z10 || (this.f15308k && !this.f15309l)) {
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = getWidth() - getPaddingRight();
            int height = getHeight() - getPaddingBottom();
            this.f15304e = width - paddingLeft;
            this.f = height - paddingTop;
            d();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        setImageDrawable(new r8.c(bitmap));
    }

    @Override // android.widget.ImageView
    public void setImageMatrix(Matrix matrix) {
        super.setImageMatrix(matrix);
        Matrix matrix2 = this.f15303d;
        matrix2.set(matrix);
        matrix2.mapPoints(this.f15300a, this.f15306h);
        matrix2.mapPoints(this.f15301b, this.f15307j);
    }

    public void setMaxBitmapSize(int r12) {
        this.f15310m = r12;
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (scaleType == ImageView.ScaleType.MATRIX) {
            super.setScaleType(scaleType);
        } else {
            Log.w("TransformImageView", "Invalid ScaleType. Only ScaleType.MATRIX can be used");
        }
    }

    public void setTransformImageListener(a aVar) {
        this.f15305g = aVar;
    }
}
