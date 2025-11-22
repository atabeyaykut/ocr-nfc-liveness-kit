package s;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.annotation.Px;
import c5.w;
import g.f;
import kotlin.jvm.internal.h;
import q.e;
import u.c;

/* loaded from: classes.dex */
public final class a implements b {

    /* renamed from: a, reason: collision with root package name */
    public final float f14819a;

    /* renamed from: b, reason: collision with root package name */
    public final float f14820b;

    /* renamed from: c, reason: collision with root package name */
    public final float f14821c;

    /* renamed from: d, reason: collision with root package name */
    public final float f14822d;

    /* renamed from: e, reason: collision with root package name */
    public final String f14823e;

    public a() {
        this(0.0f, 0.0f, 0.0f, 0.0f);
    }

    public a(@Px float f, @Px float f10, @Px float f11, @Px float f12) {
        this.f14819a = f;
        this.f14820b = f10;
        this.f14821c = f11;
        this.f14822d = f12;
        if (!(f >= 0.0f && f10 >= 0.0f && f11 >= 0.0f && f12 >= 0.0f)) {
            throw new IllegalArgumentException("All radii must be >= 0.".toString());
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append((Object) a.class.getName());
        sb2.append('-');
        sb2.append(f);
        sb2.append(',');
        sb2.append(f10);
        sb2.append(',');
        sb2.append(f11);
        sb2.append(',');
        sb2.append(f12);
        this.f14823e = sb2.toString();
    }

    @Override // s.b
    public final Bitmap a(Bitmap bitmap, e eVar) {
        Paint paint = new Paint(3);
        int width = x5.a.m(eVar) ? bitmap.getWidth() : c.d(eVar.f13261a, 1);
        int height = x5.a.m(eVar) ? bitmap.getHeight() : c.d(eVar.f13262b, 1);
        double dA = f.a(bitmap.getWidth(), bitmap.getHeight(), width, height, 1);
        int r22 = w.D(width / dA);
        int r12 = w.D(height / dA);
        Bitmap.Config config = bitmap.getConfig();
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(r22, r12, config);
        h.e(bitmapCreateBitmap, "createBitmap(width, height, config)");
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.drawColor(0, PorterDuff.Mode.CLEAR);
        Matrix matrix = new Matrix();
        matrix.setTranslate((r22 - bitmap.getWidth()) / 2.0f, (r12 - bitmap.getHeight()) / 2.0f);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        float f = this.f14819a;
        float f10 = this.f14820b;
        float f11 = this.f14822d;
        float f12 = this.f14821c;
        float[] fArr = {f, f, f10, f10, f11, f11, f12, f12};
        RectF rectF = new RectF(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight());
        Path path = new Path();
        path.addRoundRect(rectF, fArr, Path.Direction.CW);
        canvas.drawPath(path, paint);
        return bitmapCreateBitmap;
    }

    @Override // s.b
    public final String b() {
        return this.f14823e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f14819a == aVar.f14819a) {
                if (this.f14820b == aVar.f14820b) {
                    if (this.f14821c == aVar.f14821c) {
                        if (this.f14822d == aVar.f14822d) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.f14822d) + ((Float.floatToIntBits(this.f14821c) + ((Float.floatToIntBits(this.f14820b) + (Float.floatToIntBits(this.f14819a) * 31)) * 31)) * 31);
    }
}
