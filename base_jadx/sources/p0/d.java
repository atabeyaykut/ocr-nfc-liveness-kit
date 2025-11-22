package p0;

import android.animation.Animator;
import android.graphics.PointF;
import android.view.Choreographer;
import androidx.annotation.FloatRange;
import androidx.annotation.MainThread;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class d extends a implements Choreographer.FrameCallback {

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    public d0.f f12209k;

    /* renamed from: c, reason: collision with root package name */
    public float f12203c = 1.0f;

    /* renamed from: d, reason: collision with root package name */
    public boolean f12204d = false;

    /* renamed from: e, reason: collision with root package name */
    public long f12205e = 0;
    public float f = 0.0f;

    /* renamed from: g, reason: collision with root package name */
    public int f12206g = 0;

    /* renamed from: h, reason: collision with root package name */
    public float f12207h = -2.1474836E9f;

    /* renamed from: j, reason: collision with root package name */
    public float f12208j = 2.1474836E9f;

    /* renamed from: l, reason: collision with root package name */
    @VisibleForTesting
    public boolean f12210l = false;

    @Override // android.animation.ValueAnimator, android.animation.Animator
    @MainThread
    public final void cancel() {
        Iterator it = this.f12200b.iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorListener) it.next()).onAnimationCancel(this);
        }
        g(true);
    }

    public final float d() {
        d0.f fVar = this.f12209k;
        if (fVar == null) {
            return 0.0f;
        }
        float f = this.f12208j;
        return f == 2.1474836E9f ? fVar.f4530l : f;
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j10) {
        if (this.f12210l) {
            g(false);
            Choreographer.getInstance().postFrameCallback(this);
        }
        d0.f fVar = this.f12209k;
        if (fVar == null || !this.f12210l) {
            return;
        }
        float fAbs = (this.f12205e != 0 ? j10 - r2 : 0L) / ((1.0E9f / fVar.f4531m) / Math.abs(this.f12203c));
        float f = this.f;
        if (f()) {
            fAbs = -fAbs;
        }
        float f10 = f + fAbs;
        this.f = f10;
        float fE = e();
        float fD = d();
        PointF pointF = f.f12212a;
        boolean z10 = !(f10 >= fE && f10 <= fD);
        this.f = f.b(this.f, e(), d());
        this.f12205e = j10;
        c();
        if (z10) {
            if (getRepeatCount() == -1 || this.f12206g < getRepeatCount()) {
                Iterator it = this.f12200b.iterator();
                while (it.hasNext()) {
                    ((Animator.AnimatorListener) it.next()).onAnimationRepeat(this);
                }
                this.f12206g++;
                if (getRepeatMode() == 2) {
                    this.f12204d = !this.f12204d;
                    this.f12203c = -this.f12203c;
                } else {
                    this.f = f() ? d() : e();
                }
                this.f12205e = j10;
            } else {
                this.f = this.f12203c < 0.0f ? e() : d();
                g(true);
                b(f());
            }
        }
        if (this.f12209k != null) {
            float f11 = this.f;
            if (f11 < this.f12207h || f11 > this.f12208j) {
                throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(this.f12207h), Float.valueOf(this.f12208j), Float.valueOf(this.f)));
            }
        }
        d0.c.a();
    }

    public final float e() {
        d0.f fVar = this.f12209k;
        if (fVar == null) {
            return 0.0f;
        }
        float f = this.f12207h;
        return f == -2.1474836E9f ? fVar.f4529k : f;
    }

    public final boolean f() {
        return this.f12203c < 0.0f;
    }

    @MainThread
    public final void g(boolean z10) {
        Choreographer.getInstance().removeFrameCallback(this);
        if (z10) {
            this.f12210l = false;
        }
    }

    @Override // android.animation.ValueAnimator
    @FloatRange(from = 0.0d, to = 1.0d)
    public final float getAnimatedFraction() {
        float fD;
        float fE;
        if (this.f12209k == null) {
            return 0.0f;
        }
        if (f()) {
            fD = d();
            fE = this.f;
        } else {
            fD = this.f;
            fE = e();
        }
        return (fD - fE) / (d() - e());
    }

    @Override // android.animation.ValueAnimator
    public final Object getAnimatedValue() {
        float f;
        d0.f fVar = this.f12209k;
        if (fVar == null) {
            f = 0.0f;
        } else {
            float f10 = this.f;
            float f11 = fVar.f4529k;
            f = (f10 - f11) / (fVar.f4530l - f11);
        }
        return Float.valueOf(f);
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final long getDuration() {
        d0.f fVar = this.f12209k;
        if (fVar == null) {
            return 0L;
        }
        return (long) fVar.b();
    }

    public final void h(float f) {
        if (this.f == f) {
            return;
        }
        this.f = f.b(f, e(), d());
        this.f12205e = 0L;
        c();
    }

    public final void i(float f, float f10) {
        if (f > f10) {
            throw new IllegalArgumentException(String.format("minFrame (%s) must be <= maxFrame (%s)", Float.valueOf(f), Float.valueOf(f10)));
        }
        d0.f fVar = this.f12209k;
        float f11 = fVar == null ? -3.4028235E38f : fVar.f4529k;
        float f12 = fVar == null ? Float.MAX_VALUE : fVar.f4530l;
        float fB = f.b(f, f11, f12);
        float fB2 = f.b(f10, f11, f12);
        if (fB == this.f12207h && fB2 == this.f12208j) {
            return;
        }
        this.f12207h = fB;
        this.f12208j = fB2;
        h((int) f.b(this.f, fB, fB2));
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final boolean isRunning() {
        return this.f12210l;
    }

    @Override // android.animation.ValueAnimator
    public final void setRepeatMode(int r22) {
        super.setRepeatMode(r22);
        if (r22 == 2 || !this.f12204d) {
            return;
        }
        this.f12204d = false;
        this.f12203c = -this.f12203c;
    }
}
