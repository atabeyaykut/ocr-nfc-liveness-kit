package q0;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import androidx.annotation.Nullable;
import d0.f;

/* loaded from: classes.dex */
public class a<T> {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final f f13270a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final T f13271b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public T f13272c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final Interpolator f13273d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public final Interpolator f13274e;

    @Nullable
    public final Interpolator f;

    /* renamed from: g, reason: collision with root package name */
    public final float f13275g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    public Float f13276h;

    /* renamed from: i, reason: collision with root package name */
    public float f13277i;

    /* renamed from: j, reason: collision with root package name */
    public float f13278j;

    /* renamed from: k, reason: collision with root package name */
    public int f13279k;

    /* renamed from: l, reason: collision with root package name */
    public int f13280l;

    /* renamed from: m, reason: collision with root package name */
    public float f13281m;

    /* renamed from: n, reason: collision with root package name */
    public float f13282n;

    /* renamed from: o, reason: collision with root package name */
    public PointF f13283o;

    /* renamed from: p, reason: collision with root package name */
    public PointF f13284p;

    public a(f fVar, @Nullable T t10, @Nullable T t11, @Nullable Interpolator interpolator, float f, @Nullable Float f10) {
        this.f13277i = -3987645.8f;
        this.f13278j = -3987645.8f;
        this.f13279k = 784923401;
        this.f13280l = 784923401;
        this.f13281m = Float.MIN_VALUE;
        this.f13282n = Float.MIN_VALUE;
        this.f13283o = null;
        this.f13284p = null;
        this.f13270a = fVar;
        this.f13271b = t10;
        this.f13272c = t11;
        this.f13273d = interpolator;
        this.f13274e = null;
        this.f = null;
        this.f13275g = f;
        this.f13276h = f10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a(f fVar, @Nullable Object obj, @Nullable Object obj2, @Nullable Interpolator interpolator, @Nullable Interpolator interpolator2, float f) {
        this.f13277i = -3987645.8f;
        this.f13278j = -3987645.8f;
        this.f13279k = 784923401;
        this.f13280l = 784923401;
        this.f13281m = Float.MIN_VALUE;
        this.f13282n = Float.MIN_VALUE;
        this.f13283o = null;
        this.f13284p = null;
        this.f13270a = fVar;
        this.f13271b = obj;
        this.f13272c = obj2;
        this.f13273d = null;
        this.f13274e = interpolator;
        this.f = interpolator2;
        this.f13275g = f;
        this.f13276h = null;
    }

    public a(f fVar, @Nullable T t10, @Nullable T t11, @Nullable Interpolator interpolator, @Nullable Interpolator interpolator2, @Nullable Interpolator interpolator3, float f, @Nullable Float f10) {
        this.f13277i = -3987645.8f;
        this.f13278j = -3987645.8f;
        this.f13279k = 784923401;
        this.f13280l = 784923401;
        this.f13281m = Float.MIN_VALUE;
        this.f13282n = Float.MIN_VALUE;
        this.f13283o = null;
        this.f13284p = null;
        this.f13270a = fVar;
        this.f13271b = t10;
        this.f13272c = t11;
        this.f13273d = interpolator;
        this.f13274e = interpolator2;
        this.f = interpolator3;
        this.f13275g = f;
        this.f13276h = f10;
    }

    public a(T t10) {
        this.f13277i = -3987645.8f;
        this.f13278j = -3987645.8f;
        this.f13279k = 784923401;
        this.f13280l = 784923401;
        this.f13281m = Float.MIN_VALUE;
        this.f13282n = Float.MIN_VALUE;
        this.f13283o = null;
        this.f13284p = null;
        this.f13270a = null;
        this.f13271b = t10;
        this.f13272c = t10;
        this.f13273d = null;
        this.f13274e = null;
        this.f = null;
        this.f13275g = Float.MIN_VALUE;
        this.f13276h = Float.valueOf(Float.MAX_VALUE);
    }

    public final float a() {
        f fVar = this.f13270a;
        if (fVar == null) {
            return 1.0f;
        }
        if (this.f13282n == Float.MIN_VALUE) {
            if (this.f13276h == null) {
                this.f13282n = 1.0f;
            } else {
                this.f13282n = ((this.f13276h.floatValue() - this.f13275g) / (fVar.f4530l - fVar.f4529k)) + b();
            }
        }
        return this.f13282n;
    }

    public final float b() {
        f fVar = this.f13270a;
        if (fVar == null) {
            return 0.0f;
        }
        if (this.f13281m == Float.MIN_VALUE) {
            float f = fVar.f4529k;
            this.f13281m = (this.f13275g - f) / (fVar.f4530l - f);
        }
        return this.f13281m;
    }

    public final boolean c() {
        return this.f13273d == null && this.f13274e == null && this.f == null;
    }

    public final String toString() {
        return "Keyframe{startValue=" + this.f13271b + ", endValue=" + this.f13272c + ", startFrame=" + this.f13275g + ", endFrame=" + this.f13276h + ", interpolator=" + this.f13273d + '}';
    }
}
