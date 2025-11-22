package n0;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.collection.SparseArrayCompat;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.animation.PathInterpolatorCompat;
import java.lang.ref.WeakReference;
import o0.c;
import p0.g;

/* loaded from: classes.dex */
public final class q {

    /* renamed from: b, reason: collision with root package name */
    public static SparseArrayCompat<WeakReference<Interpolator>> f10510b;

    /* renamed from: a, reason: collision with root package name */
    public static final LinearInterpolator f10509a = new LinearInterpolator();

    /* renamed from: c, reason: collision with root package name */
    public static final c.a f10511c = c.a.a("t", "s", "e", "o", "i", "h", TypedValues.TransitionType.S_TO, "ti");

    /* renamed from: d, reason: collision with root package name */
    public static final c.a f10512d = c.a.a("x", "y");

    public static Interpolator a(PointF pointF, PointF pointF2) {
        WeakReference<Interpolator> weakReference;
        Interpolator interpolatorCreate;
        pointF.x = p0.f.b(pointF.x, -1.0f, 1.0f);
        pointF.y = p0.f.b(pointF.y, -100.0f, 100.0f);
        pointF2.x = p0.f.b(pointF2.x, -1.0f, 1.0f);
        float fB = p0.f.b(pointF2.y, -100.0f, 100.0f);
        pointF2.y = fB;
        float f = pointF.x;
        float f10 = pointF.y;
        float f11 = pointF2.x;
        g.a aVar = p0.g.f12213a;
        int r12 = f != 0.0f ? (int) (527 * f) : 17;
        if (f10 != 0.0f) {
            r12 = (int) (r12 * 31 * f10);
        }
        if (f11 != 0.0f) {
            r12 = (int) (r12 * 31 * f11);
        }
        if (fB != 0.0f) {
            r12 = (int) (r12 * 31 * fB);
        }
        synchronized (q.class) {
            if (f10510b == null) {
                f10510b = new SparseArrayCompat<>();
            }
            weakReference = f10510b.get(r12);
        }
        Interpolator interpolator = weakReference != null ? weakReference.get() : null;
        if (weakReference == null || interpolator == null) {
            try {
                interpolatorCreate = PathInterpolatorCompat.create(pointF.x, pointF.y, pointF2.x, pointF2.y);
            } catch (IllegalArgumentException e10) {
                interpolatorCreate = "The Path cannot loop back on itself.".equals(e10.getMessage()) ? PathInterpolatorCompat.create(Math.min(pointF.x, 1.0f), pointF.y, Math.max(pointF2.x, 0.0f), pointF2.y) : new LinearInterpolator();
            }
            interpolator = interpolatorCreate;
            try {
                c(r12, new WeakReference(interpolator));
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
        }
        return interpolator;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x002b. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:95:0x020f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x021c  */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.view.animation.Interpolator] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> q0.a<T> b(o0.c r23, d0.f r24, float r25, n0.h0<T> r26, boolean r27, boolean r28) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 752
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: n0.q.b(o0.c, d0.f, float, n0.h0, boolean, boolean):q0.a");
    }

    public static void c(int r22, WeakReference<Interpolator> weakReference) {
        synchronized (q.class) {
            f10510b.put(r22, weakReference);
        }
    }
}
