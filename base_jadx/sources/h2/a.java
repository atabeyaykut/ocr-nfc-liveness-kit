package h2;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.PointF;
import android.view.animation.DecelerateInterpolator;
import android.widget.OverScroller;
import com.github.barteksc.pdfviewer.PDFView;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final PDFView f6787a;

    /* renamed from: b, reason: collision with root package name */
    public ValueAnimator f6788b;

    /* renamed from: c, reason: collision with root package name */
    public final OverScroller f6789c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f6790d = false;

    /* renamed from: h2.a$a, reason: collision with other inner class name */
    public class C0118a implements ValueAnimator.AnimatorUpdateListener, Animator.AnimatorListener {

        /* renamed from: a, reason: collision with root package name */
        public final float f6791a;

        /* renamed from: b, reason: collision with root package name */
        public final float f6792b;

        public C0118a(float f, float f10) {
            this.f6791a = f;
            this.f6792b = f10;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            a aVar = a.this;
            aVar.f6787a.q();
            aVar.f6787a.getScrollHandle();
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            a.this.f6787a.u(new PointF(this.f6791a, this.f6792b), ((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public a(PDFView pDFView) {
        this.f6787a = pDFView;
        this.f6789c = new OverScroller(pDFView.getContext());
    }

    public final void a(float f, float f10, float f11, float f12) {
        b();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f11, f12);
        this.f6788b = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        C0118a c0118a = new C0118a(f, f10);
        this.f6788b.addUpdateListener(c0118a);
        this.f6788b.addListener(c0118a);
        this.f6788b.setDuration(400L);
        this.f6788b.start();
    }

    public final void b() {
        ValueAnimator valueAnimator = this.f6788b;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f6788b = null;
        }
        this.f6790d = false;
        this.f6789c.forceFinished(true);
    }
}
