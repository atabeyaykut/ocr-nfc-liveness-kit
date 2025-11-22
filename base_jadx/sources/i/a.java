package i;

import android.content.res.ColorStateList;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import c5.w;
import g.f;
import java.util.ArrayList;
import kotlin.jvm.internal.h;

/* loaded from: classes.dex */
public final class a extends Drawable implements Drawable.Callback, Animatable2Compat {

    /* renamed from: a, reason: collision with root package name */
    public final int f7193a;

    /* renamed from: b, reason: collision with root package name */
    public final int f7194b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f7195c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f7196d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f7197e = new ArrayList();
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final int f7198g;

    /* renamed from: h, reason: collision with root package name */
    public long f7199h;

    /* renamed from: j, reason: collision with root package name */
    public int f7200j;

    /* renamed from: k, reason: collision with root package name */
    public int f7201k;

    /* renamed from: l, reason: collision with root package name */
    public Drawable f7202l;

    /* renamed from: m, reason: collision with root package name */
    public final Drawable f7203m;

    public a(Drawable drawable, Drawable drawable2, int r32, int r42, boolean z10, boolean z11) {
        this.f7193a = r32;
        this.f7194b = r42;
        this.f7195c = z10;
        this.f7196d = z11;
        this.f = a(drawable == null ? null : Integer.valueOf(drawable.getIntrinsicWidth()), drawable2 == null ? null : Integer.valueOf(drawable2.getIntrinsicWidth()));
        this.f7198g = a(drawable == null ? null : Integer.valueOf(drawable.getIntrinsicHeight()), drawable2 == null ? null : Integer.valueOf(drawable2.getIntrinsicHeight()));
        this.f7200j = 255;
        this.f7202l = drawable == null ? null : drawable.mutate();
        Drawable drawableMutate = drawable2 != null ? drawable2.mutate() : null;
        this.f7203m = drawableMutate;
        if (!(r42 > 0)) {
            throw new IllegalArgumentException("durationMillis must be > 0.".toString());
        }
        Drawable drawable3 = this.f7202l;
        if (drawable3 != null) {
            drawable3.setCallback(this);
        }
        if (drawableMutate == null) {
            return;
        }
        drawableMutate.setCallback(this);
    }

    public final int a(Integer num, Integer num2) {
        if (this.f7196d || ((num == null || num.intValue() != -1) && (num2 == null || num2.intValue() != -1))) {
            return Math.max(num == null ? -1 : num.intValue(), num2 != null ? num2.intValue() : -1);
        }
        return -1;
    }

    public final void b() {
        this.f7201k = 2;
        this.f7202l = null;
        ArrayList arrayList = this.f7197e;
        int size = arrayList.size();
        for (int r22 = 0; r22 < size; r22++) {
            ((Animatable2Compat.AnimationCallback) arrayList.get(r22)).onAnimationEnd(this);
        }
    }

    @VisibleForTesting
    public final void c(Drawable drawable, Rect rect) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            drawable.setBounds(rect);
            return;
        }
        int r22 = rect.width();
        int r32 = rect.height();
        double dA = f.a(intrinsicWidth, intrinsicHeight, r22, r32, this.f7193a);
        double d10 = 2;
        int r02 = w.D((r22 - (intrinsicWidth * dA)) / d10);
        int r12 = w.D((r32 - (dA * intrinsicHeight)) / d10);
        drawable.setBounds(rect.left + r02, rect.top + r12, rect.right - r02, rect.bottom - r12);
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public final void clearAnimationCallbacks() {
        this.f7197e.clear();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int r12;
        Drawable drawable;
        int r02 = this.f7201k;
        if (r02 == 0) {
            Drawable drawable2 = this.f7202l;
            if (drawable2 == null) {
                return;
            }
            drawable2.setAlpha(this.f7200j);
            r12 = canvas.save();
            try {
                drawable2.draw(canvas);
                return;
            } finally {
            }
        }
        Drawable drawable3 = this.f7203m;
        if (r02 == 2) {
            if (drawable3 == null) {
                return;
            }
            drawable3.setAlpha(this.f7200j);
            r12 = canvas.save();
            try {
                drawable3.draw(canvas);
                return;
            } finally {
            }
        }
        double dUptimeMillis = (SystemClock.uptimeMillis() - this.f7199h) / this.f7194b;
        double d10 = dUptimeMillis >= 0.0d ? dUptimeMillis > 1.0d ? 1.0d : dUptimeMillis : 0.0d;
        int r72 = this.f7200j;
        int r52 = (int) (d10 * r72);
        if (this.f7195c) {
            r72 -= r52;
        }
        boolean z10 = dUptimeMillis >= 1.0d;
        if (!z10 && (drawable = this.f7202l) != null) {
            drawable.setAlpha(r72);
            r12 = canvas.save();
            try {
                drawable.draw(canvas);
            } finally {
            }
        }
        if (drawable3 != null) {
            drawable3.setAlpha(r52);
            r12 = canvas.save();
            try {
                drawable3.draw(canvas);
            } finally {
            }
        }
        if (z10) {
            b();
        } else {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f7200j;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        Drawable drawable;
        int r02 = this.f7201k;
        if (r02 != 0) {
            Drawable drawable2 = this.f7203m;
            if (r02 != 1) {
                if (r02 == 2 && drawable2 != null) {
                    return drawable2.getColorFilter();
                }
                return null;
            }
            ColorFilter colorFilter = drawable2 == null ? null : drawable2.getColorFilter();
            if (colorFilter != null) {
                return colorFilter;
            }
            drawable = this.f7202l;
            if (drawable == null) {
                return null;
            }
        } else {
            drawable = this.f7202l;
            if (drawable == null) {
                return null;
            }
        }
        return drawable.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f7198g;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.f7202l;
        int r12 = this.f7201k;
        if (r12 == 0) {
            if (drawable == null) {
                return -2;
            }
            return drawable.getOpacity();
        }
        Drawable drawable2 = this.f7203m;
        if (r12 == 2) {
            if (drawable2 == null) {
                return -2;
            }
            return drawable2.getOpacity();
        }
        if (drawable != null && drawable2 != null) {
            return Drawable.resolveOpacity(drawable.getOpacity(), drawable2.getOpacity());
        }
        if (drawable != null) {
            return drawable.getOpacity();
        }
        if (drawable2 != null) {
            return drawable2.getOpacity();
        }
        return -2;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.f7201k == 1;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f7202l;
        if (drawable != null) {
            c(drawable, rect);
        }
        Drawable drawable2 = this.f7203m;
        if (drawable2 == null) {
            return;
        }
        c(drawable2, rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int r42) {
        Drawable drawable = this.f7202l;
        boolean level = drawable == null ? false : drawable.setLevel(r42);
        Drawable drawable2 = this.f7203m;
        return level || (drawable2 == null ? false : drawable2.setLevel(r42));
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] r42) {
        Drawable drawable = this.f7202l;
        boolean state = drawable == null ? false : drawable.setState(r42);
        Drawable drawable2 = this.f7203m;
        return state || (drawable2 == null ? false : drawable2.setState(r42));
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public final void registerAnimationCallback(Animatable2Compat.AnimationCallback animationCallback) {
        this.f7197e.add(animationCallback);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        scheduleSelf(runnable, j10);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int r32) {
        boolean z10 = false;
        if (r32 >= 0 && r32 < 256) {
            z10 = true;
        }
        if (!z10) {
            throw new IllegalArgumentException(h.k(Integer.valueOf(r32), "Invalid alpha: ").toString());
        }
        this.f7200j = r32;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f7202l;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
        Drawable drawable2 = this.f7203m;
        if (drawable2 == null) {
            return;
        }
        drawable2.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int r22) {
        Drawable drawable = this.f7202l;
        if (drawable != null) {
            drawable.setTint(r22);
        }
        Drawable drawable2 = this.f7203m;
        if (drawable2 == null) {
            return;
        }
        drawable2.setTint(r22);
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(29)
    public final void setTintBlendMode(BlendMode blendMode) {
        Drawable drawable = this.f7202l;
        if (drawable != null) {
            drawable.setTintBlendMode(blendMode);
        }
        Drawable drawable2 = this.f7203m;
        if (drawable2 == null) {
            return;
        }
        drawable2.setTintBlendMode(blendMode);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f7202l;
        if (drawable != null) {
            drawable.setTintList(colorStateList);
        }
        Drawable drawable2 = this.f7203m;
        if (drawable2 == null) {
            return;
        }
        drawable2.setTintList(colorStateList);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f7202l;
        if (drawable != null) {
            drawable.setTintMode(mode);
        }
        Drawable drawable2 = this.f7203m;
        if (drawable2 == null) {
            return;
        }
        drawable2.setTintMode(mode);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        Object obj = this.f7202l;
        Animatable animatable = obj instanceof Animatable ? (Animatable) obj : null;
        if (animatable != null) {
            animatable.start();
        }
        Object obj2 = this.f7203m;
        Animatable animatable2 = obj2 instanceof Animatable ? (Animatable) obj2 : null;
        if (animatable2 != null) {
            animatable2.start();
        }
        if (this.f7201k != 0) {
            return;
        }
        this.f7201k = 1;
        this.f7199h = SystemClock.uptimeMillis();
        ArrayList arrayList = this.f7197e;
        int size = arrayList.size();
        for (int r22 = 0; r22 < size; r22++) {
            ((Animatable2Compat.AnimationCallback) arrayList.get(r22)).onAnimationStart(this);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        Object obj = this.f7202l;
        Animatable animatable = obj instanceof Animatable ? (Animatable) obj : null;
        if (animatable != null) {
            animatable.stop();
        }
        Object obj2 = this.f7203m;
        Animatable animatable2 = obj2 instanceof Animatable ? (Animatable) obj2 : null;
        if (animatable2 != null) {
            animatable2.stop();
        }
        if (this.f7201k != 2) {
            b();
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public final boolean unregisterAnimationCallback(Animatable2Compat.AnimationCallback animationCallback) {
        return this.f7197e.remove(animationCallback);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
