package p0;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import android.os.Build;
import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public static final a f12213a = new a();

    /* renamed from: b, reason: collision with root package name */
    public static final b f12214b = new b();

    /* renamed from: c, reason: collision with root package name */
    public static final c f12215c = new c();

    /* renamed from: d, reason: collision with root package name */
    public static final d f12216d = new d();

    /* renamed from: e, reason: collision with root package name */
    public static final float f12217e = (float) (Math.sqrt(2.0d) / 2.0d);
    public static float f = -1.0f;

    public class a extends ThreadLocal<PathMeasure> {
        @Override // java.lang.ThreadLocal
        public final PathMeasure initialValue() {
            return new PathMeasure();
        }
    }

    public class b extends ThreadLocal<Path> {
        @Override // java.lang.ThreadLocal
        public final Path initialValue() {
            return new Path();
        }
    }

    public class c extends ThreadLocal<Path> {
        @Override // java.lang.ThreadLocal
        public final Path initialValue() {
            return new Path();
        }
    }

    public class d extends ThreadLocal<float[]> {
        @Override // java.lang.ThreadLocal
        public final float[] initialValue() {
            return new float[4];
        }
    }

    public static void a(Path path, float f10, float f11, float f12) {
        PathMeasure pathMeasure = f12213a.get();
        Path path2 = f12214b.get();
        Path path3 = f12215c.get();
        pathMeasure.setPath(path, false);
        float length = pathMeasure.getLength();
        if (f10 == 1.0f && f11 == 0.0f) {
            d0.c.a();
            return;
        }
        if (length < 1.0f || Math.abs((f11 - f10) - 1.0f) < 0.01d) {
            d0.c.a();
            return;
        }
        float f13 = f10 * length;
        float f14 = f11 * length;
        float f15 = f12 * length;
        float fMin = Math.min(f13, f14) + f15;
        float fMax = Math.max(f13, f14) + f15;
        if (fMin >= length && fMax >= length) {
            fMin = f.c(fMin, length);
            fMax = f.c(fMax, length);
        }
        if (fMin < 0.0f) {
            fMin = f.c(fMin, length);
        }
        if (fMax < 0.0f) {
            fMax = f.c(fMax, length);
        }
        if (fMin == fMax) {
            path.reset();
        } else {
            if (fMin >= fMax) {
                fMin -= length;
            }
            path2.reset();
            pathMeasure.getSegment(fMin, fMax, path2, true);
            if (fMax > length) {
                path3.reset();
                pathMeasure.getSegment(0.0f, fMax % length, path3, true);
            } else {
                if (fMin < 0.0f) {
                    path3.reset();
                    pathMeasure.getSegment(fMin + length, length, path3, true);
                }
                path.set(path2);
            }
            path2.addPath(path3);
            path.set(path2);
        }
        d0.c.a();
    }

    public static void b(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception unused) {
            }
        }
    }

    public static float c() {
        if (f == -1.0f) {
            f = Resources.getSystem().getDisplayMetrics().density;
        }
        return f;
    }

    public static float d(Matrix matrix) {
        float[] fArr = f12216d.get();
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        float f10 = f12217e;
        fArr[2] = f10;
        fArr[3] = f10;
        matrix.mapPoints(fArr);
        return (float) Math.hypot(fArr[2] - fArr[0], fArr[3] - fArr[1]);
    }

    public static void e(Canvas canvas, RectF rectF, Paint paint, int r52) {
        if (Build.VERSION.SDK_INT < 23) {
            canvas.saveLayer(rectF, paint, r52);
        } else {
            canvas.saveLayer(rectF, paint);
        }
        d0.c.a();
    }
}
