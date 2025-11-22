package com.yalantis.ucrop.view.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import c5.u;
import java.util.Locale;
import p8.a;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes2.dex */
public class AspectRatioTextView extends AppCompatTextView {

    /* renamed from: a, reason: collision with root package name */
    public final Rect f4494a;

    /* renamed from: b, reason: collision with root package name */
    public Paint f4495b;

    /* renamed from: c, reason: collision with root package name */
    public int f4496c;

    /* renamed from: d, reason: collision with root package name */
    public float f4497d;

    /* renamed from: e, reason: collision with root package name */
    public String f4498e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public float f4499g;

    public AspectRatioTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AspectRatioTextView(Context context, AttributeSet attributeSet, int r6) {
        super(context, attributeSet, 0);
        this.f4494a = new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, u.f2020j);
        setGravity(1);
        this.f4498e = typedArrayObtainStyledAttributes.getString(0);
        this.f = typedArrayObtainStyledAttributes.getFloat(1, 0.0f);
        float f = typedArrayObtainStyledAttributes.getFloat(2, 0.0f);
        this.f4499g = f;
        float f10 = this.f;
        if (f10 == 0.0f || f == 0.0f) {
            this.f4497d = 0.0f;
        } else {
            this.f4497d = f10 / f;
        }
        this.f4496c = getContext().getResources().getDimensionPixelSize(R.dimen.ucrop_size_dot_scale_text_view);
        Paint paint = new Paint(1);
        this.f4495b = paint;
        paint.setStyle(Paint.Style.FILL);
        b();
        a(getResources().getColor(R.color.ucrop_color_widget_active));
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void a(@ColorInt int r82) {
        Paint paint = this.f4495b;
        if (paint != null) {
            paint.setColor(r82);
        }
        setTextColor(new ColorStateList(new int[][]{new int[]{android.R.attr.state_selected}, new int[]{0}}, new int[]{r82, ContextCompat.getColor(getContext(), R.color.ucrop_color_widget)}));
    }

    public final void b() {
        setText(!TextUtils.isEmpty(this.f4498e) ? this.f4498e : String.format(Locale.US, "%d:%d", Integer.valueOf((int) this.f), Integer.valueOf((int) this.f4499g)));
    }

    @Override // android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isSelected()) {
            canvas.getClipBounds(this.f4494a);
            float f = (r0.right - r0.left) / 2.0f;
            float f10 = r0.bottom - (r0.top / 2.0f);
            int r02 = this.f4496c;
            canvas.drawCircle(f, f10 - (r02 * 1.5f), r02 / 2.0f, this.f4495b);
        }
    }

    public void setActiveColor(@ColorInt int r12) {
        a(r12);
        invalidate();
    }

    public void setAspectRatio(@NonNull a aVar) {
        this.f4498e = aVar.f12847a;
        float f = aVar.f12848b;
        this.f = f;
        float f10 = aVar.f12849c;
        this.f4499g = f10;
        if (f == 0.0f || f10 == 0.0f) {
            this.f4497d = 0.0f;
        } else {
            this.f4497d = f / f10;
        }
        b();
    }
}
