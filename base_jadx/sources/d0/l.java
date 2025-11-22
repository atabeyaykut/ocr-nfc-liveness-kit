package d0;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.Choreographer;
import android.view.View;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import o0.c;

/* loaded from: classes.dex */
public final class l extends Drawable implements Drawable.Callback, Animatable {

    /* renamed from: a, reason: collision with root package name */
    public final Matrix f4551a = new Matrix();

    /* renamed from: b, reason: collision with root package name */
    public d0.f f4552b;

    /* renamed from: c, reason: collision with root package name */
    public final p0.d f4553c;

    /* renamed from: d, reason: collision with root package name */
    public float f4554d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f4555e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f4556g;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList<n> f4557h;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    public h0.b f4558j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    public String f4559k;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    public h0.a f4560l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f4561m;

    /* renamed from: n, reason: collision with root package name */
    @Nullable
    public l0.c f4562n;

    /* renamed from: p, reason: collision with root package name */
    public int f4563p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f4564q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f4565r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f4566s;

    /* renamed from: t, reason: collision with root package name */
    public final boolean f4567t;

    /* renamed from: v, reason: collision with root package name */
    public boolean f4568v;

    public class a implements n {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f4569a;

        public a(String str) {
            this.f4569a = str;
        }

        @Override // d0.l.n
        public final void run() {
            l.this.l(this.f4569a);
        }
    }

    public class b implements n {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f4571a;

        public b(int r22) {
            this.f4571a = r22;
        }

        @Override // d0.l.n
        public final void run() {
            l.this.h(this.f4571a);
        }
    }

    public class c implements n {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ float f4573a;

        public c(float f) {
            this.f4573a = f;
        }

        @Override // d0.l.n
        public final void run() {
            l.this.p(this.f4573a);
        }
    }

    public class d implements n {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ i0.e f4575a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Object f4576b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ q0.c f4577c;

        public d(i0.e eVar, Object obj, q0.c cVar) {
            this.f4575a = eVar;
            this.f4576b = obj;
            this.f4577c = cVar;
        }

        @Override // d0.l.n
        public final void run() {
            l.this.a(this.f4575a, this.f4576b, this.f4577c);
        }
    }

    public class e implements ValueAnimator.AnimatorUpdateListener {
        public e() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            float f;
            l lVar = l.this;
            l0.c cVar = lVar.f4562n;
            if (cVar != null) {
                p0.d dVar = lVar.f4553c;
                d0.f fVar = dVar.f12209k;
                if (fVar == null) {
                    f = 0.0f;
                } else {
                    float f10 = dVar.f;
                    float f11 = fVar.f4529k;
                    f = (f10 - f11) / (fVar.f4530l - f11);
                }
                cVar.p(f);
            }
        }
    }

    public class f implements n {
        public f() {
        }

        @Override // d0.l.n
        public final void run() {
            l.this.f();
        }
    }

    public class g implements n {
        public g() {
        }

        @Override // d0.l.n
        public final void run() {
            l.this.g();
        }
    }

    public class h implements n {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f4582a;

        public h(int r22) {
            this.f4582a = r22;
        }

        @Override // d0.l.n
        public final void run() {
            l.this.m(this.f4582a);
        }
    }

    public class i implements n {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ float f4584a;

        public i(float f) {
            this.f4584a = f;
        }

        @Override // d0.l.n
        public final void run() {
            l.this.o(this.f4584a);
        }
    }

    public class j implements n {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f4586a;

        public j(int r22) {
            this.f4586a = r22;
        }

        @Override // d0.l.n
        public final void run() {
            l.this.i(this.f4586a);
        }
    }

    public class k implements n {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ float f4588a;

        public k(float f) {
            this.f4588a = f;
        }

        @Override // d0.l.n
        public final void run() {
            l.this.k(this.f4588a);
        }
    }

    /* renamed from: d0.l$l, reason: collision with other inner class name */
    public class C0067l implements n {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f4590a;

        public C0067l(String str) {
            this.f4590a = str;
        }

        @Override // d0.l.n
        public final void run() {
            l.this.n(this.f4590a);
        }
    }

    public class m implements n {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f4592a;

        public m(String str) {
            this.f4592a = str;
        }

        @Override // d0.l.n
        public final void run() {
            l.this.j(this.f4592a);
        }
    }

    public interface n {
        void run();
    }

    public l() {
        p0.d dVar = new p0.d();
        this.f4553c = dVar;
        this.f4554d = 1.0f;
        this.f4555e = true;
        this.f = false;
        this.f4556g = false;
        this.f4557h = new ArrayList<>();
        e eVar = new e();
        this.f4563p = 255;
        this.f4567t = true;
        this.f4568v = false;
        dVar.addUpdateListener(eVar);
    }

    public final <T> void a(i0.e eVar, T t10, @Nullable q0.c<T> cVar) {
        float f10;
        l0.c cVar2 = this.f4562n;
        if (cVar2 == null) {
            this.f4557h.add(new d(eVar, t10, cVar));
            return;
        }
        boolean zIsEmpty = true;
        if (eVar == i0.e.f7224c) {
            cVar2.f(cVar, t10);
        } else {
            i0.f fVar = eVar.f7226b;
            if (fVar != null) {
                fVar.f(cVar, t10);
            } else {
                ArrayList arrayList = new ArrayList();
                this.f4562n.c(eVar, 0, arrayList, new i0.e(new String[0]));
                for (int r42 = 0; r42 < arrayList.size(); r42++) {
                    ((i0.e) arrayList.get(r42)).f7226b.f(cVar, t10);
                }
                zIsEmpty = true ^ arrayList.isEmpty();
            }
        }
        if (zIsEmpty) {
            invalidateSelf();
            if (t10 == q.C) {
                p0.d dVar = this.f4553c;
                d0.f fVar2 = dVar.f12209k;
                if (fVar2 == null) {
                    f10 = 0.0f;
                } else {
                    float f11 = dVar.f;
                    float f12 = fVar2.f4529k;
                    f10 = (f11 - f12) / (fVar2.f4530l - f12);
                }
                p(f10);
            }
        }
    }

    public final boolean b() {
        return this.f4555e || this.f;
    }

    public final void c() {
        d0.f fVar = this.f4552b;
        c.a aVar = n0.s.f10514a;
        Rect rect = fVar.f4528j;
        l0.e eVar = new l0.e(Collections.emptyList(), fVar, "__container", -1L, 1, -1L, null, Collections.emptyList(), new j0.l(), 0, 0, 0, 0.0f, 0.0f, rect.width(), rect.height(), null, null, Collections.emptyList(), 1, null, false);
        d0.f fVar2 = this.f4552b;
        l0.c cVar = new l0.c(this, eVar, fVar2.f4527i, fVar2);
        this.f4562n = cVar;
        if (this.f4565r) {
            cVar.o(true);
        }
    }

    public final void d() {
        p0.d dVar = this.f4553c;
        if (dVar.f12210l) {
            dVar.cancel();
        }
        this.f4552b = null;
        this.f4562n = null;
        this.f4558j = null;
        dVar.f12209k = null;
        dVar.f12207h = -2.1474836E9f;
        dVar.f12208j = 2.1474836E9f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(@NonNull Canvas canvas) {
        this.f4568v = false;
        if (this.f4556g) {
            try {
                e(canvas);
            } catch (Throwable unused) {
                p0.c.f12202a.getClass();
            }
        } else {
            e(canvas);
        }
        d0.c.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(@androidx.annotation.NonNull android.graphics.Canvas r10) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d0.l.e(android.graphics.Canvas):void");
    }

    @MainThread
    public final void f() {
        if (this.f4562n == null) {
            this.f4557h.add(new f());
            return;
        }
        boolean zB = b();
        p0.d dVar = this.f4553c;
        if (zB || dVar.getRepeatCount() == 0) {
            dVar.f12210l = true;
            boolean zF = dVar.f();
            Iterator it = dVar.f12200b.iterator();
            while (it.hasNext()) {
                Animator.AnimatorListener animatorListener = (Animator.AnimatorListener) it.next();
                if (Build.VERSION.SDK_INT >= 26) {
                    animatorListener.onAnimationStart(dVar, zF);
                } else {
                    animatorListener.onAnimationStart(dVar);
                }
            }
            dVar.h((int) (dVar.f() ? dVar.d() : dVar.e()));
            dVar.f12205e = 0L;
            dVar.f12206g = 0;
            if (dVar.f12210l) {
                dVar.g(false);
                Choreographer.getInstance().postFrameCallback(dVar);
            }
        }
        if (b()) {
            return;
        }
        h((int) (dVar.f12203c < 0.0f ? dVar.e() : dVar.d()));
        dVar.g(true);
        dVar.b(dVar.f());
    }

    @MainThread
    public final void g() {
        float fE;
        if (this.f4562n == null) {
            this.f4557h.add(new g());
            return;
        }
        boolean zB = b();
        p0.d dVar = this.f4553c;
        if (zB || dVar.getRepeatCount() == 0) {
            dVar.f12210l = true;
            dVar.g(false);
            Choreographer.getInstance().postFrameCallback(dVar);
            dVar.f12205e = 0L;
            if (dVar.f() && dVar.f == dVar.e()) {
                fE = dVar.d();
            } else if (!dVar.f() && dVar.f == dVar.d()) {
                fE = dVar.e();
            }
            dVar.f = fE;
        }
        if (b()) {
            return;
        }
        h((int) (dVar.f12203c < 0.0f ? dVar.e() : dVar.d()));
        dVar.g(true);
        dVar.b(dVar.f());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f4563p;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        if (this.f4552b == null) {
            return -1;
        }
        return (int) (r0.f4528j.height() * this.f4554d);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        if (this.f4552b == null) {
            return -1;
        }
        return (int) (r0.f4528j.width() * this.f4554d);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    public final void h(int r32) {
        if (this.f4552b == null) {
            this.f4557h.add(new b(r32));
        } else {
            this.f4553c.h(r32);
        }
    }

    public final void i(int r32) {
        if (this.f4552b == null) {
            this.f4557h.add(new j(r32));
            return;
        }
        p0.d dVar = this.f4553c;
        dVar.i(dVar.f12207h, r32 + 0.99f);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        if (this.f4568v) {
            return;
        }
        this.f4568v = true;
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        p0.d dVar = this.f4553c;
        if (dVar == null) {
            return false;
        }
        return dVar.f12210l;
    }

    public final void j(String str) {
        d0.f fVar = this.f4552b;
        if (fVar == null) {
            this.f4557h.add(new m(str));
            return;
        }
        i0.h hVarC = fVar.c(str);
        if (hVarC == null) {
            throw new IllegalArgumentException(androidx.browser.browseractions.a.a("Cannot find marker with name ", str, "."));
        }
        i((int) (hVarC.f7230b + hVarC.f7231c));
    }

    public final void k(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        d0.f fVar = this.f4552b;
        if (fVar == null) {
            this.f4557h.add(new k(f10));
            return;
        }
        float f11 = fVar.f4529k;
        float f12 = fVar.f4530l;
        PointF pointF = p0.f.f12212a;
        i((int) androidx.appcompat.graphics.drawable.a.d(f12, f11, f10, f11));
    }

    public final void l(String str) {
        d0.f fVar = this.f4552b;
        ArrayList<n> arrayList = this.f4557h;
        if (fVar == null) {
            arrayList.add(new a(str));
            return;
        }
        i0.h hVarC = fVar.c(str);
        if (hVarC == null) {
            throw new IllegalArgumentException(androidx.browser.browseractions.a.a("Cannot find marker with name ", str, "."));
        }
        int r42 = (int) hVarC.f7230b;
        int r02 = ((int) hVarC.f7231c) + r42;
        if (this.f4552b == null) {
            arrayList.add(new d0.m(this, r42, r02));
        } else {
            this.f4553c.i(r42, r02 + 0.99f);
        }
    }

    public final void m(int r32) {
        if (this.f4552b == null) {
            this.f4557h.add(new h(r32));
        } else {
            this.f4553c.i(r32, (int) r0.f12208j);
        }
    }

    public final void n(String str) {
        d0.f fVar = this.f4552b;
        if (fVar == null) {
            this.f4557h.add(new C0067l(str));
            return;
        }
        i0.h hVarC = fVar.c(str);
        if (hVarC == null) {
            throw new IllegalArgumentException(androidx.browser.browseractions.a.a("Cannot find marker with name ", str, "."));
        }
        m((int) hVarC.f7230b);
    }

    public final void o(float f10) {
        d0.f fVar = this.f4552b;
        if (fVar == null) {
            this.f4557h.add(new i(f10));
            return;
        }
        float f11 = fVar.f4529k;
        float f12 = fVar.f4530l;
        PointF pointF = p0.f.f12212a;
        m((int) androidx.appcompat.graphics.drawable.a.d(f12, f11, f10, f11));
    }

    public final void p(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        d0.f fVar = this.f4552b;
        if (fVar == null) {
            this.f4557h.add(new c(f10));
            return;
        }
        float f11 = fVar.f4529k;
        float f12 = fVar.f4530l;
        PointF pointF = p0.f.f12212a;
        this.f4553c.h(androidx.appcompat.graphics.drawable.a.d(f12, f11, f10, f11));
        d0.c.a();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j10) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j10);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(@IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY, to = 255) int r12) {
        this.f4563p = r12;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(@Nullable ColorFilter colorFilter) {
        p0.c.b("Use addColorFilter instead.");
    }

    @Override // android.graphics.drawable.Animatable
    @MainThread
    public final void start() {
        Drawable.Callback callback = getCallback();
        if (!(callback instanceof View) || ((View) callback).isInEditMode()) {
            return;
        }
        f();
    }

    @Override // android.graphics.drawable.Animatable
    @MainThread
    public final void stop() {
        this.f4557h.clear();
        p0.d dVar = this.f4553c;
        dVar.g(true);
        dVar.b(dVar.f());
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }
}
