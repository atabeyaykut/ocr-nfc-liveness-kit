package com.afollestad.materialdialogs.internal.main;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import b0.d;
import c5.w;
import com.afollestad.materialdialogs.internal.button.DialogActionButton;
import com.afollestad.materialdialogs.internal.button.DialogActionButtonLayout;
import com.afollestad.materialdialogs.internal.message.DialogContentLayout;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.g;
import l9.l;
import tr.gov.turkiye.edevlet.kapisi.R;
import v.b;
import v.e;
import x.a;

@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0014\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010J\u001a\u00020I\u0012\b\u0010L\u001a\u0004\u0018\u00010K¢\u0006\u0004\bM\u0010NR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR*\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R*\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\u00138\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001d\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u0004\u001a\u0004\b\u001c\u0010\u0006R\u001a\u0010 \u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u001e\u0010\u0004\u001a\u0004\b\u001f\u0010\u0006R\"\u0010(\u001a\u00020!8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\"\u00100\u001a\u00020)8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\"\u00108\u001a\u0002018\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R$\u0010@\u001a\u0004\u0018\u0001098\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\"\u0010H\u001a\u00020A8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bB\u0010C\u001a\u0004\bD\u0010E\"\u0004\bF\u0010G¨\u0006O"}, d2 = {"Lcom/afollestad/materialdialogs/internal/main/DialogLayout;", "Landroid/widget/FrameLayout;", "", "a", "I", "getMaxHeight", "()I", "setMaxHeight", "(I)V", "maxHeight", "", "value", "b", "Z", "getDebugMode", "()Z", "setDebugMode", "(Z)V", "debugMode", "", "c", "[F", "getCornerRadii", "()[F", "setCornerRadii", "([F)V", "cornerRadii", "e", "getFrameMarginVertical$core", "frameMarginVertical", "f", "getFrameMarginVerticalLess$core", "frameMarginVerticalLess", "Lv/e;", "g", "Lv/e;", "getDialog", "()Lv/e;", "setDialog", "(Lv/e;)V", "dialog", "Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;", "h", "Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;", "getTitleLayout", "()Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;", "setTitleLayout", "(Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;)V", "titleLayout", "Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;", "j", "Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;", "getContentLayout", "()Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;", "setContentLayout", "(Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;)V", "contentLayout", "Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;", "k", "Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;", "getButtonsLayout", "()Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;", "setButtonsLayout", "(Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;)V", "buttonsLayout", "Lv/b;", "l", "Lv/b;", "getLayoutMode", "()Lv/b;", "setLayoutMode", "(Lv/b;)V", "layoutMode", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "core"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class DialogLayout extends FrameLayout {

    /* renamed from: a, reason: collision with root package name and from kotlin metadata */
    public int maxHeight;

    /* renamed from: b, reason: collision with root package name and from kotlin metadata */
    public boolean debugMode;

    /* renamed from: c, reason: collision with root package name and from kotlin metadata */
    public float[] cornerRadii;

    /* renamed from: d, reason: collision with root package name */
    public Paint f2493d;

    /* renamed from: e, reason: collision with root package name and from kotlin metadata */
    public final int frameMarginVertical;

    /* renamed from: f, reason: from kotlin metadata */
    public final int frameMarginVerticalLess;

    /* renamed from: g, reason: collision with root package name and from kotlin metadata */
    public e dialog;

    /* renamed from: h, reason: collision with root package name and from kotlin metadata */
    public DialogTitleLayout titleLayout;

    /* renamed from: j, reason: collision with root package name and from kotlin metadata */
    public DialogContentLayout contentLayout;

    /* renamed from: k, reason: collision with root package name and from kotlin metadata */
    public DialogActionButtonLayout buttonsLayout;

    /* renamed from: l, reason: collision with root package name and from kotlin metadata */
    public b layoutMode;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f2500m;

    /* renamed from: n, reason: collision with root package name */
    public int f2501n;

    /* renamed from: p, reason: collision with root package name */
    public final Path f2502p;

    /* renamed from: q, reason: collision with root package name */
    public final RectF f2503q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        h.g(context, "context");
        this.cornerRadii = new float[0];
        Context context2 = getContext();
        h.b(context2, "context");
        this.frameMarginVertical = context2.getResources().getDimensionPixelSize(R.dimen.md_dialog_frame_margin_vertical);
        Context context3 = getContext();
        h.b(context3, "context");
        this.frameMarginVerticalLess = context3.getResources().getDimensionPixelSize(R.dimen.md_dialog_frame_margin_vertical_less);
        this.layoutMode = b.WRAP_CONTENT;
        this.f2500m = true;
        this.f2501n = -1;
        this.f2502p = new Path();
        this.f2503q = new RectF();
    }

    public static void a(DialogLayout dialogLayout, Canvas canvas, int r82, float f) {
        canvas.drawLine(0.0f, f, dialogLayout.getMeasuredWidth(), f, dialogLayout.b(1.0f, r82));
    }

    public static void c(DialogLayout dialogLayout, Canvas canvas, int r82, float f) {
        canvas.drawLine(f, 0.0f, f, dialogLayout.getMeasuredHeight(), dialogLayout.b(1.0f, r82));
    }

    public final Paint b(float f, int r52) {
        if (this.f2493d == null) {
            Paint paint = new Paint();
            paint.setStrokeWidth(w.n(this, 1));
            paint.setStyle(Paint.Style.FILL);
            paint.setAntiAlias(true);
            this.f2493d = paint;
        }
        Paint paint2 = this.f2493d;
        if (paint2 == null) {
            h.l();
            throw null;
        }
        paint2.setColor(r52);
        setAlpha(f);
        return paint2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        h.g(canvas, "canvas");
        if (!(this.cornerRadii.length == 0)) {
            canvas.clipPath(this.f2502p);
        }
        super.dispatchDraw(canvas);
    }

    public final DialogActionButtonLayout getButtonsLayout() {
        return this.buttonsLayout;
    }

    public final DialogContentLayout getContentLayout() {
        DialogContentLayout dialogContentLayout = this.contentLayout;
        if (dialogContentLayout != null) {
            return dialogContentLayout;
        }
        h.n("contentLayout");
        throw null;
    }

    public final float[] getCornerRadii() {
        return this.cornerRadii;
    }

    public final boolean getDebugMode() {
        return this.debugMode;
    }

    public final e getDialog() {
        e eVar = this.dialog;
        if (eVar != null) {
            return eVar;
        }
        h.n("dialog");
        throw null;
    }

    /* renamed from: getFrameMarginVertical$core, reason: from getter */
    public final int getFrameMarginVertical() {
        return this.frameMarginVertical;
    }

    /* renamed from: getFrameMarginVerticalLess$core, reason: from getter */
    public final int getFrameMarginVerticalLess() {
        return this.frameMarginVerticalLess;
    }

    @Override // android.view.ViewGroup
    public final b getLayoutMode() {
        return this.layoutMode;
    }

    public final int getMaxHeight() {
        return this.maxHeight;
    }

    public final DialogTitleLayout getTitleLayout() {
        DialogTitleLayout dialogTitleLayout = this.titleLayout;
        if (dialogTitleLayout != null) {
            return dialogTitleLayout;
        }
        h.n("titleLayout");
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Object systemService = getContext().getSystemService("window");
        if (systemService == null) {
            throw new l("null cannot be cast to non-null type android.view.WindowManager");
        }
        Point point = new Point();
        ((WindowManager) systemService).getDefaultDisplay().getSize(point);
        this.f2501n = ((Number) new g(Integer.valueOf(point.x), Integer.valueOf(point.y)).f9583b).intValue();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        float fN;
        h.g(canvas, "canvas");
        super.onDraw(canvas);
        if (this.debugMode) {
            int r82 = -16776961;
            c(this, canvas, -16776961, w.n(this, 24));
            a(this, canvas, -16776961, w.n(this, 24));
            c(this, canvas, -16776961, getMeasuredWidth() - w.n(this, 24));
            DialogTitleLayout dialogTitleLayout = this.titleLayout;
            if (dialogTitleLayout == null) {
                h.n("titleLayout");
                throw null;
            }
            if (d.c(dialogTitleLayout)) {
                if (this.titleLayout == null) {
                    h.n("titleLayout");
                    throw null;
                }
                a(this, canvas, SupportMenu.CATEGORY_MASK, r1.getBottom());
            }
            DialogContentLayout dialogContentLayout = this.contentLayout;
            if (dialogContentLayout == null) {
                h.n("contentLayout");
                throw null;
            }
            if (d.c(dialogContentLayout)) {
                if (this.contentLayout == null) {
                    h.n("contentLayout");
                    throw null;
                }
                a(this, canvas, InputDeviceCompat.SOURCE_ANY, r1.getTop());
            }
            if (a.a(this.buttonsLayout)) {
                c(this, canvas, -16711681, d.b(this) ? w.n(this, 8) : getMeasuredWidth() - w.n(this, 8));
                DialogActionButtonLayout dialogActionButtonLayout = this.buttonsLayout;
                if (dialogActionButtonLayout == null || !dialogActionButtonLayout.getStackButtons()) {
                    DialogActionButtonLayout dialogActionButtonLayout2 = this.buttonsLayout;
                    if (dialogActionButtonLayout2 == null) {
                        return;
                    }
                    for (DialogActionButton dialogActionButton : dialogActionButtonLayout2.getVisibleButtons()) {
                        if (this.buttonsLayout == null) {
                            h.l();
                            throw null;
                        }
                        float fN2 = w.n(this, 8) + r2.getTop() + dialogActionButton.getTop();
                        if (this.buttonsLayout == null) {
                            h.l();
                            throw null;
                        }
                        canvas.drawRect(w.n(this, 4) + dialogActionButton.getLeft(), fN2, dialogActionButton.getRight() - w.n(this, 4), r2.getBottom() - w.n(this, 8), b(0.4f, -16711681));
                    }
                    if (this.buttonsLayout == null) {
                        h.l();
                        throw null;
                    }
                    a(this, canvas, -65281, r1.getTop());
                    float measuredHeight = getMeasuredHeight() - (w.n(this, 52) - w.n(this, 8));
                    float measuredHeight2 = getMeasuredHeight() - w.n(this, 8);
                    a(this, canvas, SupportMenu.CATEGORY_MASK, measuredHeight);
                    a(this, canvas, SupportMenu.CATEGORY_MASK, measuredHeight2);
                    fN = measuredHeight - w.n(this, 8);
                } else {
                    if (this.buttonsLayout == null) {
                        h.l();
                        throw null;
                    }
                    float fN3 = w.n(this, 8) + r1.getTop();
                    DialogActionButtonLayout dialogActionButtonLayout3 = this.buttonsLayout;
                    if (dialogActionButtonLayout3 == null) {
                        h.l();
                        throw null;
                    }
                    for (DialogActionButton dialogActionButton2 : dialogActionButtonLayout3.getVisibleButtons()) {
                        float fN4 = w.n(this, 36) + fN3;
                        canvas.drawRect(dialogActionButton2.getLeft(), fN3, getMeasuredWidth() - w.n(this, 8), fN4, b(0.4f, -16711681));
                        fN3 = w.n(this, 16) + fN4;
                    }
                    if (this.buttonsLayout == null) {
                        h.l();
                        throw null;
                    }
                    a(this, canvas, -16776961, r1.getTop());
                    if (this.buttonsLayout == null) {
                        h.l();
                        throw null;
                    }
                    float fN5 = w.n(this, 8) + r1.getTop();
                    fN = getMeasuredHeight() - w.n(this, 8);
                    a(this, canvas, SupportMenu.CATEGORY_MASK, fN5);
                    r82 = SupportMenu.CATEGORY_MASK;
                }
                a(this, canvas, r82, fN);
            }
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        View viewFindViewById = findViewById(R.id.md_title_layout);
        h.b(viewFindViewById, "findViewById(R.id.md_title_layout)");
        this.titleLayout = (DialogTitleLayout) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.md_content_layout);
        h.b(viewFindViewById2, "findViewById(R.id.md_content_layout)");
        this.contentLayout = (DialogContentLayout) viewFindViewById2;
        this.buttonsLayout = (DialogActionButtonLayout) findViewById(R.id.md_button_layout);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z10, int r42, int r52, int r6, int r72) {
        int measuredHeight;
        int measuredWidth = getMeasuredWidth();
        DialogTitleLayout dialogTitleLayout = this.titleLayout;
        if (dialogTitleLayout == null) {
            h.n("titleLayout");
            throw null;
        }
        int measuredHeight2 = dialogTitleLayout.getMeasuredHeight();
        DialogTitleLayout dialogTitleLayout2 = this.titleLayout;
        if (dialogTitleLayout2 == null) {
            h.n("titleLayout");
            throw null;
        }
        dialogTitleLayout2.layout(0, 0, measuredWidth, measuredHeight2);
        if (this.f2500m) {
            int measuredHeight3 = getMeasuredHeight();
            DialogActionButtonLayout dialogActionButtonLayout = this.buttonsLayout;
            measuredHeight = measuredHeight3 - (dialogActionButtonLayout != null ? dialogActionButtonLayout.getMeasuredHeight() : 0);
            if (a.a(this.buttonsLayout)) {
                int measuredWidth2 = getMeasuredWidth();
                int measuredHeight4 = getMeasuredHeight();
                DialogActionButtonLayout dialogActionButtonLayout2 = this.buttonsLayout;
                if (dialogActionButtonLayout2 == null) {
                    h.l();
                    throw null;
                }
                dialogActionButtonLayout2.layout(0, measuredHeight, measuredWidth2, measuredHeight4);
            }
        } else {
            measuredHeight = getMeasuredHeight();
        }
        int measuredWidth3 = getMeasuredWidth();
        DialogContentLayout dialogContentLayout = this.contentLayout;
        if (dialogContentLayout != null) {
            dialogContentLayout.layout(0, measuredHeight2, measuredWidth3, measuredHeight);
        } else {
            h.n("contentLayout");
            throw null;
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int r92, int r10) {
        int size = View.MeasureSpec.getSize(r92);
        int size2 = View.MeasureSpec.getSize(r10);
        int r02 = this.maxHeight;
        if (1 <= r02 && size2 > r02) {
            size2 = r02;
        }
        DialogTitleLayout dialogTitleLayout = this.titleLayout;
        if (dialogTitleLayout == null) {
            h.n("titleLayout");
            throw null;
        }
        dialogTitleLayout.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        if (a.a(this.buttonsLayout)) {
            DialogActionButtonLayout dialogActionButtonLayout = this.buttonsLayout;
            if (dialogActionButtonLayout == null) {
                h.l();
                throw null;
            }
            dialogActionButtonLayout.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        }
        DialogTitleLayout dialogTitleLayout2 = this.titleLayout;
        if (dialogTitleLayout2 == null) {
            h.n("titleLayout");
            throw null;
        }
        int measuredHeight = dialogTitleLayout2.getMeasuredHeight();
        DialogActionButtonLayout dialogActionButtonLayout2 = this.buttonsLayout;
        int measuredHeight2 = size2 - (measuredHeight + (dialogActionButtonLayout2 != null ? dialogActionButtonLayout2.getMeasuredHeight() : 0));
        DialogContentLayout dialogContentLayout = this.contentLayout;
        if (dialogContentLayout == null) {
            h.n("contentLayout");
            throw null;
        }
        dialogContentLayout.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight2, Integer.MIN_VALUE));
        if (this.layoutMode == b.WRAP_CONTENT) {
            DialogTitleLayout dialogTitleLayout3 = this.titleLayout;
            if (dialogTitleLayout3 == null) {
                h.n("titleLayout");
                throw null;
            }
            int measuredHeight3 = dialogTitleLayout3.getMeasuredHeight();
            DialogContentLayout dialogContentLayout2 = this.contentLayout;
            if (dialogContentLayout2 == null) {
                h.n("contentLayout");
                throw null;
            }
            int measuredHeight4 = dialogContentLayout2.getMeasuredHeight() + measuredHeight3;
            DialogActionButtonLayout dialogActionButtonLayout3 = this.buttonsLayout;
            setMeasuredDimension(size, measuredHeight4 + (dialogActionButtonLayout3 != null ? dialogActionButtonLayout3.getMeasuredHeight() : 0));
        } else {
            setMeasuredDimension(size, this.f2501n);
        }
        if (!(this.cornerRadii.length == 0)) {
            RectF rectF = this.f2503q;
            rectF.left = 0.0f;
            rectF.top = 0.0f;
            rectF.right = getMeasuredWidth();
            rectF.bottom = getMeasuredHeight();
            this.f2502p.addRoundRect(rectF, this.cornerRadii, Path.Direction.CW);
        }
    }

    public final void setButtonsLayout(DialogActionButtonLayout dialogActionButtonLayout) {
        this.buttonsLayout = dialogActionButtonLayout;
    }

    public final void setContentLayout(DialogContentLayout dialogContentLayout) {
        h.g(dialogContentLayout, "<set-?>");
        this.contentLayout = dialogContentLayout;
    }

    public final void setCornerRadii(float[] value) {
        h.g(value, "value");
        this.cornerRadii = value;
        Path path = this.f2502p;
        if (!path.isEmpty()) {
            path.reset();
        }
        invalidate();
    }

    public final void setDebugMode(boolean z10) {
        this.debugMode = z10;
        setWillNotDraw(!z10);
    }

    public final void setDialog(e eVar) {
        h.g(eVar, "<set-?>");
        this.dialog = eVar;
    }

    public final void setLayoutMode(b bVar) {
        h.g(bVar, "<set-?>");
        this.layoutMode = bVar;
    }

    public final void setMaxHeight(int r12) {
        this.maxHeight = r12;
    }

    public final void setTitleLayout(DialogTitleLayout dialogTitleLayout) {
        h.g(dialogTitleLayout, "<set-?>");
        this.titleLayout = dialogTitleLayout;
    }
}
