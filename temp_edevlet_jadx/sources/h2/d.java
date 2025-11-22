package h2;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import com.github.barteksc.pdfviewer.PDFView;

/* loaded from: classes.dex */
public final class d implements GestureDetector.OnGestureListener, GestureDetector.OnDoubleTapListener, ScaleGestureDetector.OnScaleGestureListener, View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public final PDFView f6806a;

    /* renamed from: b, reason: collision with root package name */
    public final a f6807b;

    /* renamed from: c, reason: collision with root package name */
    public final GestureDetector f6808c;

    /* renamed from: d, reason: collision with root package name */
    public final ScaleGestureDetector f6809d;
    public boolean f = false;

    /* renamed from: g, reason: collision with root package name */
    public boolean f6811g = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f6810e = false;

    public d(PDFView pDFView, a aVar) {
        this.f6806a = pDFView;
        this.f6807b = aVar;
        pDFView.getClass();
        this.f6808c = new GestureDetector(pDFView.getContext(), this);
        this.f6809d = new ScaleGestureDetector(pDFView.getContext(), this);
        pDFView.setOnTouchListener(this);
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public final boolean onDoubleTap(MotionEvent motionEvent) {
        float x10;
        float y10;
        float maxZoom;
        PDFView pDFView = this.f6806a;
        if (pDFView.getZoom() < pDFView.getMidZoom()) {
            x10 = motionEvent.getX();
            y10 = motionEvent.getY();
            maxZoom = pDFView.getMidZoom();
        } else {
            if (pDFView.getZoom() >= pDFView.getMaxZoom()) {
                pDFView.f.a(pDFView.getWidth() / 2, pDFView.getHeight() / 2, pDFView.f2896v, pDFView.f2879a);
                return true;
            }
            x10 = motionEvent.getX();
            y10 = motionEvent.getY();
            maxZoom = pDFView.getMaxZoom();
        }
        pDFView.v(x10, y10, maxZoom);
        return true;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public final boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onDown(MotionEvent motionEvent) {
        a aVar = this.f6807b;
        aVar.f6790d = false;
        aVar.f6789c.forceFinished(true);
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f10) {
        float f11;
        float optimalPageHeight;
        PDFView pDFView = this.f6806a;
        int currentXOffset = (int) pDFView.getCurrentXOffset();
        int currentYOffset = (int) pDFView.getCurrentYOffset();
        if (pDFView.F) {
            f11 = -((pDFView.getOptimalPageWidth() * pDFView.f2896v) - pDFView.getWidth());
            optimalPageHeight = pDFView.l();
        } else {
            f11 = -(pDFView.l() - pDFView.getWidth());
            optimalPageHeight = pDFView.getOptimalPageHeight() * pDFView.f2896v;
        }
        int r72 = (int) (-(optimalPageHeight - pDFView.getHeight()));
        a aVar = this.f6807b;
        aVar.b();
        aVar.f6790d = true;
        aVar.f6789c.fling(currentXOffset, currentYOffset, (int) f, (int) f10, (int) f11, 0, r72, 0);
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final void onLongPress(MotionEvent motionEvent) {
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0012 A[PHI: r3
      0x0012: PHI (r3v3 float) = (r3v0 float), (r3v1 float) binds: [B:3:0x0010, B:6:0x001d] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onScale(android.view.ScaleGestureDetector r6) {
        /*
            r5 = this;
            float r0 = r6.getScaleFactor()
            com.github.barteksc.pdfviewer.PDFView r1 = r5.f6806a
            float r2 = r1.getZoom()
            float r2 = r2 * r0
            r3 = 1065353216(0x3f800000, float:1.0)
            int r4 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r4 >= 0) goto L19
        L12:
            float r0 = r1.getZoom()
            float r0 = r3 / r0
            goto L20
        L19:
            r3 = 1092616192(0x41200000, float:10.0)
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r2 <= 0) goto L20
            goto L12
        L20:
            android.graphics.PointF r2 = new android.graphics.PointF
            float r3 = r6.getFocusX()
            float r6 = r6.getFocusY()
            r2.<init>(r3, r6)
            float r6 = r1.f2896v
            float r6 = r6 * r0
            r1.u(r2, r6)
            r6 = 1
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: h2.d.onScale(android.view.ScaleGestureDetector):boolean");
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public final boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        this.f6811g = true;
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public final void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        PDFView pDFView = this.f6806a;
        pDFView.q();
        pDFView.getScrollHandle();
        this.f6811g = false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f10) {
        this.f = true;
        PDFView pDFView = this.f6806a;
        if ((pDFView.f2896v != pDFView.f2879a) || this.f6810e) {
            pDFView.r(pDFView.f2894s + (-f), pDFView.f2895t + (-f10));
        }
        if (!this.f6811g) {
            pDFView.p();
        }
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final void onShowPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        PDFView pDFView = this.f6806a;
        pDFView.getOnTapListener();
        pDFView.getScrollHandle();
        pDFView.performClick();
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z10 = this.f6808c.onTouchEvent(motionEvent) || this.f6809d.onTouchEvent(motionEvent);
        if (motionEvent.getAction() == 1 && this.f) {
            this.f = false;
            PDFView pDFView = this.f6806a;
            pDFView.q();
            pDFView.getScrollHandle();
        }
        return z10;
    }
}
