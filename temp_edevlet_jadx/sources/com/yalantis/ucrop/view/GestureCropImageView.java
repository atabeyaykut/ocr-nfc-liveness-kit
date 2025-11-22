package com.yalantis.ucrop.view;

import android.content.Context;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import com.yalantis.ucrop.UCropActivity;
import r8.e;
import s8.a;
import s8.c;

/* loaded from: classes2.dex */
public class GestureCropImageView extends s8.a {
    public ScaleGestureDetector E;
    public e F;
    public GestureDetector G;
    public float H;
    public float I;
    public boolean K;
    public boolean L;
    public int M;

    public class a extends GestureDetector.SimpleOnGestureListener {
        public a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public final boolean onDoubleTap(MotionEvent motionEvent) {
            GestureCropImageView gestureCropImageView = GestureCropImageView.this;
            float doubleTapTargetScale = gestureCropImageView.getDoubleTapTargetScale();
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            if (doubleTapTargetScale > gestureCropImageView.getMaxScale()) {
                doubleTapTargetScale = gestureCropImageView.getMaxScale();
            }
            float currentScale = gestureCropImageView.getCurrentScale();
            a.b bVar = new a.b(gestureCropImageView, currentScale, doubleTapTargetScale - currentScale, x10, y10);
            gestureCropImageView.f15282y = bVar;
            gestureCropImageView.post(bVar);
            return super.onDoubleTap(motionEvent);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f10) {
            GestureCropImageView.this.f(-f, -f10);
            return true;
        }
    }

    public class b extends e.b {
        public b() {
        }
    }

    public class c extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        public c() {
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public final boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            float scaleFactor = scaleGestureDetector.getScaleFactor();
            GestureCropImageView gestureCropImageView = GestureCropImageView.this;
            gestureCropImageView.e(scaleFactor, gestureCropImageView.H, gestureCropImageView.I);
            return true;
        }
    }

    public GestureCropImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public GestureCropImageView(Context context, AttributeSet attributeSet, int r32) {
        super(context, attributeSet, 0);
        this.K = true;
        this.L = true;
        this.M = 5;
    }

    @Override // s8.c
    public final void c() {
        super.c();
        this.G = new GestureDetector(getContext(), new a(), null, true);
        this.E = new ScaleGestureDetector(getContext(), new c());
        this.F = new e(new b());
    }

    public int getDoubleTapScaleSteps() {
        return this.M;
    }

    public float getDoubleTapTargetScale() {
        return getCurrentScale() * ((float) Math.pow(getMaxScale() / getMinScale(), 1.0f / this.M));
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        float f;
        if ((motionEvent.getAction() & 255) == 0) {
            h();
        }
        if (motionEvent.getPointerCount() > 1) {
            this.H = (motionEvent.getX(1) + motionEvent.getX(0)) / 2.0f;
            this.I = (motionEvent.getY(1) + motionEvent.getY(0)) / 2.0f;
        }
        this.G.onTouchEvent(motionEvent);
        if (this.L) {
            this.E.onTouchEvent(motionEvent);
        }
        if (this.K) {
            e eVar = this.F;
            eVar.getClass();
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                eVar.f14345c = motionEvent.getX();
                eVar.f14346d = motionEvent.getY();
                eVar.f14347e = motionEvent.findPointerIndex(motionEvent.getPointerId(0));
            } else if (actionMasked == 1) {
                eVar.f14347e = -1;
            } else if (actionMasked != 2) {
                if (actionMasked == 5) {
                    eVar.f14343a = motionEvent.getX();
                    eVar.f14344b = motionEvent.getY();
                    eVar.f = motionEvent.findPointerIndex(motionEvent.getPointerId(motionEvent.getActionIndex()));
                } else if (actionMasked == 6) {
                    eVar.f = -1;
                }
            } else if (eVar.f14347e != -1 && eVar.f != -1 && motionEvent.getPointerCount() > eVar.f) {
                float x10 = motionEvent.getX(eVar.f14347e);
                float y10 = motionEvent.getY(eVar.f14347e);
                float x11 = motionEvent.getX(eVar.f);
                float y11 = motionEvent.getY(eVar.f);
                if (eVar.f14349h) {
                    eVar.f14348g = 0.0f;
                    eVar.f14349h = false;
                } else {
                    float f10 = eVar.f14343a;
                    float degrees = (((float) Math.toDegrees((float) Math.atan2(y11 - y10, x11 - x10))) % 360.0f) - (((float) Math.toDegrees((float) Math.atan2(eVar.f14344b - eVar.f14346d, f10 - eVar.f14345c))) % 360.0f);
                    eVar.f14348g = degrees;
                    if (degrees < -180.0f) {
                        f = degrees + 360.0f;
                    } else if (degrees > 180.0f) {
                        f = degrees - 360.0f;
                    }
                    eVar.f14348g = f;
                }
                e.a aVar = eVar.f14350i;
                if (aVar != null) {
                    float f11 = eVar.f14348g;
                    GestureCropImageView gestureCropImageView = GestureCropImageView.this;
                    float f12 = gestureCropImageView.H;
                    float f13 = gestureCropImageView.I;
                    if (f11 != 0.0f) {
                        Matrix matrix = gestureCropImageView.f15303d;
                        matrix.postRotate(f11, f12, f13);
                        gestureCropImageView.setImageMatrix(matrix);
                        c.a aVar2 = gestureCropImageView.f15305g;
                        if (aVar2 != null) {
                            ((UCropActivity.a) aVar2).a(gestureCropImageView.a(matrix));
                        }
                    }
                }
                eVar.f14343a = x11;
                eVar.f14344b = y11;
                eVar.f14345c = x10;
                eVar.f14346d = y10;
            }
            eVar.f14348g = 0.0f;
            eVar.f14349h = true;
        }
        if ((motionEvent.getAction() & 255) == 1) {
            setImageToWrapCropBounds(true);
        }
        return true;
    }

    public void setDoubleTapScaleSteps(int r12) {
        this.M = r12;
    }

    public void setRotateEnabled(boolean z10) {
        this.K = z10;
    }

    public void setScaleEnabled(boolean z10) {
        this.L = z10;
    }
}
