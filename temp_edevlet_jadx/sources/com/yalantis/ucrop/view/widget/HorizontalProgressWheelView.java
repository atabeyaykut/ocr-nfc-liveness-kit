package com.yalantis.ucrop.view.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.core.content.ContextCompat;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes2.dex */
public class HorizontalProgressWheelView extends View {

    /* renamed from: a, reason: collision with root package name */
    public final Rect f4500a;

    /* renamed from: b, reason: collision with root package name */
    public a f4501b;

    /* renamed from: c, reason: collision with root package name */
    public float f4502c;

    /* renamed from: d, reason: collision with root package name */
    public Paint f4503d;

    /* renamed from: e, reason: collision with root package name */
    public Paint f4504e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f4505g;

    /* renamed from: h, reason: collision with root package name */
    public int f4506h;

    /* renamed from: j, reason: collision with root package name */
    public boolean f4507j;

    /* renamed from: k, reason: collision with root package name */
    public float f4508k;

    /* renamed from: l, reason: collision with root package name */
    public int f4509l;

    public interface a {
        void a();

        void b(float f);

        void c();
    }

    public HorizontalProgressWheelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f4500a = new Rect();
        this.f4509l = ContextCompat.getColor(getContext(), R.color.ucrop_color_widget_rotate_mid_line);
        this.f = getContext().getResources().getDimensionPixelSize(R.dimen.ucrop_width_horizontal_wheel_progress_line);
        this.f4505g = getContext().getResources().getDimensionPixelSize(R.dimen.ucrop_height_horizontal_wheel_progress_line);
        this.f4506h = getContext().getResources().getDimensionPixelSize(R.dimen.ucrop_margin_horizontal_wheel_progress_line);
        Paint paint = new Paint(1);
        this.f4503d = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f4503d.setStrokeWidth(this.f);
        this.f4503d.setColor(getResources().getColor(R.color.ucrop_color_progress_wheel_line));
        Paint paint2 = new Paint(this.f4503d);
        this.f4504e = paint2;
        paint2.setColor(this.f4509l);
        this.f4504e.setStrokeCap(Paint.Cap.ROUND);
        this.f4504e.setStrokeWidth(getContext().getResources().getDimensionPixelSize(R.dimen.ucrop_width_middle_wheel_progress_line));
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        Paint paint;
        float f;
        super.onDraw(canvas);
        Rect rect = this.f4500a;
        canvas.getClipBounds(rect);
        int r12 = rect.width() / (this.f + this.f4506h);
        float f10 = this.f4508k % (r3 + r2);
        for (int r22 = 0; r22 < r12; r22++) {
            int r32 = r12 / 4;
            if (r22 < r32) {
                paint = this.f4503d;
                f = r22;
            } else if (r22 > (r12 * 3) / 4) {
                paint = this.f4503d;
                f = r12 - r22;
            } else {
                this.f4503d.setAlpha(255);
                float f11 = -f10;
                canvas.drawLine(rect.left + f11 + ((this.f + this.f4506h) * r22), rect.centerY() - (this.f4505g / 4.0f), f11 + rect.left + ((this.f + this.f4506h) * r22), (this.f4505g / 4.0f) + rect.centerY(), this.f4503d);
            }
            paint.setAlpha((int) ((f / r32) * 255.0f));
            float f112 = -f10;
            canvas.drawLine(rect.left + f112 + ((this.f + this.f4506h) * r22), rect.centerY() - (this.f4505g / 4.0f), f112 + rect.left + ((this.f + this.f4506h) * r22), (this.f4505g / 4.0f) + rect.centerY(), this.f4503d);
        }
        canvas.drawLine(rect.centerX(), rect.centerY() - (this.f4505g / 2.0f), rect.centerX(), (this.f4505g / 2.0f) + rect.centerY(), this.f4504e);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f4502c = motionEvent.getX();
        } else if (action == 1) {
            a aVar = this.f4501b;
            if (aVar != null) {
                this.f4507j = false;
                aVar.a();
            }
        } else if (action == 2) {
            float x10 = motionEvent.getX() - this.f4502c;
            if (x10 != 0.0f) {
                if (!this.f4507j) {
                    this.f4507j = true;
                    a aVar2 = this.f4501b;
                    if (aVar2 != null) {
                        aVar2.c();
                    }
                }
                this.f4508k -= x10;
                postInvalidate();
                this.f4502c = motionEvent.getX();
                a aVar3 = this.f4501b;
                if (aVar3 != null) {
                    aVar3.b(-x10);
                }
            }
        }
        return true;
    }

    public void setMiddleLineColor(@ColorInt int r22) {
        this.f4509l = r22;
        this.f4504e.setColor(r22);
        invalidate();
    }

    public void setScrollingListener(a aVar) {
        this.f4501b = aVar;
    }
}
