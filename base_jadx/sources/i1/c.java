package i1;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import i1.g;
import java.util.ArrayList;
import q1.l;

/* loaded from: classes.dex */
public final class c extends Drawable implements g.b, Animatable, Animatable2Compat {

    /* renamed from: a, reason: collision with root package name */
    public final a f7243a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f7244b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f7245c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f7246d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f7247e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public final int f7248g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f7249h;

    /* renamed from: j, reason: collision with root package name */
    public Paint f7250j;

    /* renamed from: k, reason: collision with root package name */
    public Rect f7251k;

    /* renamed from: l, reason: collision with root package name */
    public ArrayList f7252l;

    public static final class a extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        @VisibleForTesting
        public final g f7253a;

        public a(g gVar) {
            this.f7253a = gVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public final Drawable newDrawable() {
            return new c(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public final Drawable newDrawable(Resources resources) {
            return new c(this);
        }
    }

    public c() {
        throw null;
    }

    public c(a aVar) {
        this.f7247e = true;
        this.f7248g = -1;
        l.b(aVar);
        this.f7243a = aVar;
    }

    @Override // i1.g.b
    public final void a() {
        Object callback = getCallback();
        while (callback instanceof Drawable) {
            callback = ((Drawable) callback).getCallback();
        }
        if (callback == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        g.a aVar = this.f7243a.f7253a.f7262i;
        if ((aVar != null ? aVar.f7272e : -1) == r0.f7255a.c() - 1) {
            this.f++;
        }
        int r02 = this.f7248g;
        if (r02 == -1 || this.f < r02) {
            return;
        }
        ArrayList arrayList = this.f7252l;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int r12 = 0; r12 < size; r12++) {
                ((Animatable2Compat.AnimationCallback) this.f7252l.get(r12)).onAnimationEnd(this);
            }
        }
        stop();
    }

    public final void b() {
        l.a("You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.", !this.f7246d);
        a aVar = this.f7243a;
        if (aVar.f7253a.f7255a.c() != 1) {
            if (this.f7244b) {
                return;
            }
            this.f7244b = true;
            g gVar = aVar.f7253a;
            if (gVar.f7263j) {
                throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
            }
            ArrayList arrayList = gVar.f7257c;
            if (arrayList.contains(this)) {
                throw new IllegalStateException("Cannot subscribe twice in a row");
            }
            boolean zIsEmpty = arrayList.isEmpty();
            arrayList.add(this);
            if (zIsEmpty && !gVar.f) {
                gVar.f = true;
                gVar.f7263j = false;
                gVar.a();
            }
        }
        invalidateSelf();
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public final void clearAnimationCallbacks() {
        ArrayList arrayList = this.f7252l;
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(@NonNull Canvas canvas) {
        if (this.f7246d) {
            return;
        }
        if (this.f7249h) {
            int intrinsicWidth = getIntrinsicWidth();
            int intrinsicHeight = getIntrinsicHeight();
            Rect bounds = getBounds();
            if (this.f7251k == null) {
                this.f7251k = new Rect();
            }
            Gravity.apply(119, intrinsicWidth, intrinsicHeight, bounds, this.f7251k);
            this.f7249h = false;
        }
        g gVar = this.f7243a.f7253a;
        g.a aVar = gVar.f7262i;
        Bitmap bitmap = aVar != null ? aVar.f7273g : gVar.f7265l;
        if (this.f7251k == null) {
            this.f7251k = new Rect();
        }
        Rect rect = this.f7251k;
        if (this.f7250j == null) {
            this.f7250j = new Paint(2);
        }
        canvas.drawBitmap(bitmap, (Rect) null, rect, this.f7250j);
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f7243a;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f7243a.f7253a.f7270q;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f7243a.f7253a.f7269p;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.f7244b;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f7249h = true;
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public final void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        if (animationCallback == null) {
            return;
        }
        if (this.f7252l == null) {
            this.f7252l = new ArrayList();
        }
        this.f7252l.add(animationCallback);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int r32) {
        if (this.f7250j == null) {
            this.f7250j = new Paint(2);
        }
        this.f7250j.setAlpha(r32);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.f7250j == null) {
            this.f7250j = new Paint(2);
        }
        this.f7250j.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z10, boolean z11) {
        l.a("Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.", !this.f7246d);
        this.f7247e = z10;
        if (!z10) {
            this.f7244b = false;
            g gVar = this.f7243a.f7253a;
            ArrayList arrayList = gVar.f7257c;
            arrayList.remove(this);
            if (arrayList.isEmpty()) {
                gVar.f = false;
            }
        } else if (this.f7245c) {
            b();
        }
        return super.setVisible(z10, z11);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        this.f7245c = true;
        this.f = 0;
        if (this.f7247e) {
            b();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.f7245c = false;
        this.f7244b = false;
        g gVar = this.f7243a.f7253a;
        ArrayList arrayList = gVar.f7257c;
        arrayList.remove(this);
        if (arrayList.isEmpty()) {
            gVar.f = false;
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public final boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        ArrayList arrayList = this.f7252l;
        if (arrayList == null || animationCallback == null) {
            return false;
        }
        return arrayList.remove(animationCallback);
    }
}
