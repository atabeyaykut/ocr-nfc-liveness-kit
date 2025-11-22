package com.afollestad.materialdialogs.internal.message;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.LayoutRes;
import androidx.annotation.RestrictTo;
import b0.c;
import b0.d;
import c5.y;
import com.afollestad.materialdialogs.internal.list.DialogRecyclerView;
import com.afollestad.materialdialogs.internal.main.DialogLayout;
import com.afollestad.materialdialogs.internal.main.DialogScrollView;
import da.m;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.w;
import l9.j;
import l9.l;
import tr.gov.turkiye.edevlet.kapisi.R;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010%\u001a\u00020$\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010&¢\u0006\u0004\b(\u0010)R\u001b\u0010\u0007\u001a\u00020\u00028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R$\u0010\u000f\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u0017\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R$\u0010\u001f\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0016\u0010#\u001a\u0004\u0018\u00010 8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\"¨\u0006*"}, d2 = {"Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;", "Landroid/widget/FrameLayout;", "", "d", "Ll9/e;", "getFrameHorizontalMargin", "()I", "frameHorizontalMargin", "Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;", "e", "Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;", "getScrollView", "()Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;", "setScrollView", "(Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;)V", "scrollView", "Lcom/afollestad/materialdialogs/internal/list/DialogRecyclerView;", "f", "Lcom/afollestad/materialdialogs/internal/list/DialogRecyclerView;", "getRecyclerView", "()Lcom/afollestad/materialdialogs/internal/list/DialogRecyclerView;", "setRecyclerView", "(Lcom/afollestad/materialdialogs/internal/list/DialogRecyclerView;)V", "recyclerView", "Landroid/view/View;", "g", "Landroid/view/View;", "getCustomView", "()Landroid/view/View;", "setCustomView", "(Landroid/view/View;)V", "customView", "Lcom/afollestad/materialdialogs/internal/main/DialogLayout;", "getRootLayout", "()Lcom/afollestad/materialdialogs/internal/main/DialogLayout;", "rootLayout", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "core"}, k = 1, mv = {1, 4, 0})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class DialogContentLayout extends FrameLayout {

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ m[] f2512h = {w.c(new r(w.a(DialogContentLayout.class), "frameHorizontalMargin", "getFrameHorizontalMargin()I"))};

    /* renamed from: a, reason: collision with root package name */
    public ViewGroup f2513a;

    /* renamed from: b, reason: collision with root package name */
    public TextView f2514b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f2515c;

    /* renamed from: d, reason: collision with root package name */
    public final j f2516d;

    /* renamed from: e, reason: collision with root package name and from kotlin metadata */
    public DialogScrollView scrollView;

    /* renamed from: f, reason: from kotlin metadata */
    public DialogRecyclerView recyclerView;

    /* renamed from: g, reason: collision with root package name and from kotlin metadata */
    public View customView;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<Integer> {
        public a() {
            super(0);
        }

        @Override // x9.a
        public final Integer invoke() {
            return Integer.valueOf(DialogContentLayout.this.getResources().getDimensionPixelSize(R.dimen.md_dialog_frame_margin_horizontal));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        h.g(context, "context");
        this.f2516d = y.w(new a());
    }

    private final int getFrameHorizontalMargin() {
        m mVar = f2512h[0];
        return ((Number) this.f2516d.getValue()).intValue();
    }

    private final DialogLayout getRootLayout() {
        ViewParent parent = getParent();
        if (parent != null) {
            return (DialogLayout) parent;
        }
        throw new l("null cannot be cast to non-null type com.afollestad.materialdialogs.internal.main.DialogLayout");
    }

    public final void a(boolean z10) {
        if (this.scrollView == null) {
            DialogScrollView dialogScrollView = (DialogScrollView) d.a(this, R.layout.md_dialog_stub_scrollview, this);
            dialogScrollView.setRootView(getRootLayout());
            View childAt = dialogScrollView.getChildAt(0);
            if (childAt == null) {
                throw new l("null cannot be cast to non-null type android.view.ViewGroup");
            }
            this.f2513a = (ViewGroup) childAt;
            if (!z10) {
                c.e(dialogScrollView, 0, 0, 0, c.a(dialogScrollView, R.dimen.md_dialog_frame_margin_vertical), 7);
            }
            this.scrollView = dialogScrollView;
            addView(dialogScrollView);
        }
    }

    public final View b(@LayoutRes Integer num, View view, boolean z10, boolean z11, boolean z12) {
        if (!(this.customView == null)) {
            throw new IllegalStateException("Custom view already set.".toString());
        }
        if (view != null && view.getParent() != null) {
            ViewParent parent = view.getParent();
            if (!(parent instanceof ViewGroup)) {
                parent = null;
            }
            ViewGroup viewGroup = (ViewGroup) parent;
            if (viewGroup != null) {
                viewGroup.removeView(view);
            }
        }
        if (z10) {
            this.f2515c = false;
            a(z11);
            if (view == null) {
                if (num == null) {
                    h.l();
                    throw null;
                }
                view = d.a(this, num.intValue(), this.f2513a);
            }
            this.customView = view;
            ViewGroup viewGroup2 = this.f2513a;
            if (viewGroup2 == null) {
                h.l();
                throw null;
            }
            if (view == null) {
                view = null;
            } else if (z12) {
                c.e(view, getFrameHorizontalMargin(), 0, getFrameHorizontalMargin(), 0, 10);
            }
            viewGroup2.addView(view);
        } else {
            this.f2515c = z12;
            if (view == null) {
                if (num == null) {
                    h.l();
                    throw null;
                }
                view = d.a(this, num.intValue(), this);
            }
            this.customView = view;
            addView(view);
        }
        View view2 = this.customView;
        if (view2 != null) {
            return view2;
        }
        h.l();
        throw null;
    }

    public final void c(int r92, int r10) {
        if (r92 != -1) {
            c.e(getChildAt(0), 0, r92, 0, 0, 13);
        }
        if (r10 != -1) {
            c.e(getChildAt(getChildCount() - 1), 0, 0, 0, r10, 7);
        }
    }

    public final View getCustomView() {
        return this.customView;
    }

    public final DialogRecyclerView getRecyclerView() {
        return this.recyclerView;
    }

    public final DialogScrollView getScrollView() {
        return this.scrollView;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z10, int r6, int r72, int r82, int r92) {
        int measuredWidth;
        int frameHorizontalMargin;
        int childCount = getChildCount();
        int r73 = 0;
        int r83 = 0;
        while (r73 < childCount) {
            View currentChild = getChildAt(r73);
            h.b(currentChild, "currentChild");
            int measuredHeight = currentChild.getMeasuredHeight() + r83;
            if (h.a(currentChild, this.customView) && this.f2515c) {
                frameHorizontalMargin = getFrameHorizontalMargin();
                measuredWidth = getMeasuredWidth() - getFrameHorizontalMargin();
            } else {
                measuredWidth = getMeasuredWidth();
                frameHorizontalMargin = 0;
            }
            currentChild.layout(frameHorizontalMargin, r83, measuredWidth, measuredHeight);
            r73++;
            r83 = measuredHeight;
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int r92, int r10) {
        int size = View.MeasureSpec.getSize(r92);
        int size2 = View.MeasureSpec.getSize(r10);
        DialogScrollView dialogScrollView = this.scrollView;
        if (dialogScrollView != null) {
            dialogScrollView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE));
        }
        DialogScrollView dialogScrollView2 = this.scrollView;
        int measuredHeight = dialogScrollView2 != null ? dialogScrollView2.getMeasuredHeight() : 0;
        int r102 = size2 - measuredHeight;
        int childCount = this.scrollView != null ? getChildCount() - 1 : getChildCount();
        if (childCount == 0) {
            setMeasuredDimension(size, measuredHeight);
            return;
        }
        int r103 = r102 / childCount;
        int childCount2 = getChildCount();
        for (int r32 = 0; r32 < childCount2; r32++) {
            View currentChild = getChildAt(r32);
            h.b(currentChild, "currentChild");
            int id2 = currentChild.getId();
            DialogScrollView dialogScrollView3 = this.scrollView;
            if (dialogScrollView3 == null || id2 != dialogScrollView3.getId()) {
                currentChild.measure((h.a(currentChild, this.customView) && this.f2515c) ? View.MeasureSpec.makeMeasureSpec(size - (getFrameHorizontalMargin() * 2), 1073741824) : View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(r103, Integer.MIN_VALUE));
                measuredHeight = currentChild.getMeasuredHeight() + measuredHeight;
            }
        }
        setMeasuredDimension(size, measuredHeight);
    }

    public final void setCustomView(View view) {
        this.customView = view;
    }

    public final void setRecyclerView(DialogRecyclerView dialogRecyclerView) {
        this.recyclerView = dialogRecyclerView;
    }

    public final void setScrollView(DialogScrollView dialogScrollView) {
        this.scrollView = dialogScrollView;
    }
}
