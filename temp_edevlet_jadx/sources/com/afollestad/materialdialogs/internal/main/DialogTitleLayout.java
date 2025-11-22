package com.afollestad.materialdialogs.internal.main;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.RestrictTo;
import b0.c;
import b0.d;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.R;
import z.a;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u0016\u0010\u0017R\"\u0010\t\u001a\u00020\u00028\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\u0011\u001a\u00020\n8\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0018"}, d2 = {"Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;", "Lz/a;", "Landroid/widget/ImageView;", "k", "Landroid/widget/ImageView;", "getIconView$core", "()Landroid/widget/ImageView;", "setIconView$core", "(Landroid/widget/ImageView;)V", "iconView", "Landroid/widget/TextView;", "l", "Landroid/widget/TextView;", "getTitleView$core", "()Landroid/widget/TextView;", "setTitleView$core", "(Landroid/widget/TextView;)V", "titleView", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "core"}, k = 1, mv = {1, 4, 0})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class DialogTitleLayout extends a {

    /* renamed from: e, reason: collision with root package name */
    public final int f2506e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final int f2507g;

    /* renamed from: h, reason: collision with root package name */
    public final int f2508h;

    /* renamed from: j, reason: collision with root package name */
    public final int f2509j;

    /* renamed from: k, reason: collision with root package name and from kotlin metadata */
    public ImageView iconView;

    /* renamed from: l, reason: collision with root package name and from kotlin metadata */
    public TextView titleView;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogTitleLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        h.g(context, "context");
        this.f2506e = c.a(this, R.dimen.md_dialog_frame_margin_vertical);
        this.f = c.a(this, R.dimen.md_dialog_title_layout_margin_bottom);
        this.f2507g = c.a(this, R.dimen.md_dialog_frame_margin_horizontal);
        this.f2508h = c.a(this, R.dimen.md_icon_margin);
        this.f2509j = c.a(this, R.dimen.md_icon_size);
    }

    public final boolean b() {
        if (this.iconView == null) {
            h.n("iconView");
            throw null;
        }
        if (!d.c(r0)) {
            if (this.titleView == null) {
                h.n("titleView");
                throw null;
            }
            if (!d.c(r0)) {
                return true;
            }
        }
        return false;
    }

    public final ImageView getIconView$core() {
        ImageView imageView = this.iconView;
        if (imageView != null) {
            return imageView;
        }
        h.n("iconView");
        throw null;
    }

    public final TextView getTitleView$core() {
        TextView textView = this.titleView;
        if (textView != null) {
            return textView;
        }
        h.n("titleView");
        throw null;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        h.g(canvas, "canvas");
        super.onDraw(canvas);
        if (getDrawDivider()) {
            canvas.drawLine(0.0f, getMeasuredHeight() - getDividerHeight(), getMeasuredWidth(), getMeasuredHeight(), a());
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        View viewFindViewById = findViewById(R.id.md_icon_title);
        h.b(viewFindViewById, "findViewById(R.id.md_icon_title)");
        this.iconView = (ImageView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.md_text_title);
        h.b(viewFindViewById2, "findViewById(R.id.md_text_title)");
        this.titleView = (TextView) viewFindViewById2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z10, int r92, int r10, int r11, int r12) {
        int measuredWidth;
        int measuredWidth2;
        int measuredWidth3;
        if (b()) {
            return;
        }
        int measuredHeight = getMeasuredHeight() - this.f;
        int r82 = measuredHeight - ((measuredHeight - this.f2506e) / 2);
        TextView textView = this.titleView;
        if (textView == null) {
            h.n("titleView");
            throw null;
        }
        int measuredHeight2 = textView.getMeasuredHeight() / 2;
        int r122 = r82 - measuredHeight2;
        int r93 = measuredHeight2 + r82;
        TextView additionalPaddingForFont = this.titleView;
        if (additionalPaddingForFont == null) {
            h.n("titleView");
            throw null;
        }
        h.g(additionalPaddingForFont, "$this$additionalPaddingForFont");
        TextPaint paint = additionalPaddingForFont.getPaint();
        h.b(paint, "paint");
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        float f = fontMetrics.descent - fontMetrics.ascent;
        int measuredHeight3 = r93 + (f > ((float) additionalPaddingForFont.getMeasuredHeight()) ? (int) (f - additionalPaddingForFont.getMeasuredHeight()) : 0);
        boolean zB = d.b(this);
        int measuredWidth4 = this.f2507g;
        if (zB) {
            measuredWidth = getMeasuredWidth() - measuredWidth4;
            TextView textView2 = this.titleView;
            if (textView2 == null) {
                h.n("titleView");
                throw null;
            }
            measuredWidth4 = measuredWidth - textView2.getMeasuredWidth();
        } else {
            TextView textView3 = this.titleView;
            if (textView3 == null) {
                h.n("titleView");
                throw null;
            }
            measuredWidth = textView3.getMeasuredWidth() + measuredWidth4;
        }
        ImageView imageView = this.iconView;
        if (imageView == null) {
            h.n("iconView");
            throw null;
        }
        if (d.c(imageView)) {
            ImageView imageView2 = this.iconView;
            if (imageView2 == null) {
                h.n("iconView");
                throw null;
            }
            int measuredHeight4 = imageView2.getMeasuredHeight() / 2;
            int r42 = r82 - measuredHeight4;
            int r83 = r82 + measuredHeight4;
            boolean zB2 = d.b(this);
            int r52 = this.f2508h;
            if (zB2) {
                ImageView imageView3 = this.iconView;
                if (imageView3 == null) {
                    h.n("iconView");
                    throw null;
                }
                measuredWidth4 = measuredWidth - imageView3.getMeasuredWidth();
                measuredWidth3 = measuredWidth4 - r52;
                TextView textView4 = this.titleView;
                if (textView4 == null) {
                    h.n("titleView");
                    throw null;
                }
                measuredWidth2 = measuredWidth3 - textView4.getMeasuredWidth();
            } else {
                ImageView imageView4 = this.iconView;
                if (imageView4 == null) {
                    h.n("iconView");
                    throw null;
                }
                measuredWidth = imageView4.getMeasuredWidth() + measuredWidth4;
                measuredWidth2 = r52 + measuredWidth;
                TextView textView5 = this.titleView;
                if (textView5 == null) {
                    h.n("titleView");
                    throw null;
                }
                measuredWidth3 = textView5.getMeasuredWidth() + measuredWidth2;
            }
            ImageView imageView5 = this.iconView;
            if (imageView5 == null) {
                h.n("iconView");
                throw null;
            }
            imageView5.layout(measuredWidth4, r42, measuredWidth, r83);
            measuredWidth = measuredWidth3;
            measuredWidth4 = measuredWidth2;
        }
        TextView textView6 = this.titleView;
        if (textView6 != null) {
            textView6.layout(measuredWidth4, r122, measuredWidth, measuredHeight3);
        } else {
            h.n("titleView");
            throw null;
        }
    }

    @Override // android.view.View
    public final void onMeasure(int r82, int r92) {
        int measuredHeight = 0;
        if (b()) {
            setMeasuredDimension(0, 0);
            return;
        }
        int size = View.MeasureSpec.getSize(r82);
        int measuredWidth = size - (this.f2507g * 2);
        ImageView imageView = this.iconView;
        if (imageView == null) {
            h.n("iconView");
            throw null;
        }
        if (d.c(imageView)) {
            ImageView imageView2 = this.iconView;
            if (imageView2 == null) {
                h.n("iconView");
                throw null;
            }
            int r42 = this.f2509j;
            imageView2.measure(View.MeasureSpec.makeMeasureSpec(r42, 1073741824), View.MeasureSpec.makeMeasureSpec(r42, 1073741824));
            ImageView imageView3 = this.iconView;
            if (imageView3 == null) {
                h.n("iconView");
                throw null;
            }
            measuredWidth -= imageView3.getMeasuredWidth() + this.f2508h;
        }
        TextView textView = this.titleView;
        if (textView == null) {
            h.n("titleView");
            throw null;
        }
        textView.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(0, 0));
        ImageView imageView4 = this.iconView;
        if (imageView4 == null) {
            h.n("iconView");
            throw null;
        }
        if (d.c(imageView4)) {
            ImageView imageView5 = this.iconView;
            if (imageView5 == null) {
                h.n("iconView");
                throw null;
            }
            measuredHeight = imageView5.getMeasuredHeight();
        }
        TextView textView2 = this.titleView;
        if (textView2 == null) {
            h.n("titleView");
            throw null;
        }
        int measuredHeight2 = textView2.getMeasuredHeight();
        if (measuredHeight < measuredHeight2) {
            measuredHeight = measuredHeight2;
        }
        setMeasuredDimension(size, measuredHeight + this.f2506e + this.f);
    }

    public final void setIconView$core(ImageView imageView) {
        h.g(imageView, "<set-?>");
        this.iconView = imageView;
    }

    public final void setTitleView$core(TextView textView) {
        h.g(textView, "<set-?>");
        this.titleView = textView;
    }
}
