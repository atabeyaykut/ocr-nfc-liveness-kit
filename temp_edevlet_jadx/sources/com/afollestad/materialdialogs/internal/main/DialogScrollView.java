package com.afollestad.materialdialogs.internal.main;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ScrollView;
import androidx.annotation.RestrictTo;
import b0.b;
import com.afollestad.materialdialogs.internal.button.DialogActionButtonLayout;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import x9.l;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000fR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0010"}, d2 = {"Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;", "Landroid/widget/ScrollView;", "Lcom/afollestad/materialdialogs/internal/main/DialogLayout;", "a", "Lcom/afollestad/materialdialogs/internal/main/DialogLayout;", "getRootView", "()Lcom/afollestad/materialdialogs/internal/main/DialogLayout;", "setRootView", "(Lcom/afollestad/materialdialogs/internal/main/DialogLayout;)V", "rootView", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "core"}, k = 1, mv = {1, 4, 0})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class DialogScrollView extends ScrollView {

    /* renamed from: a, reason: collision with root package name and from kotlin metadata */
    public DialogLayout rootView;

    public static final class a extends j implements l<DialogScrollView, m> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f2505a = new a();

        public a() {
            super(1);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x002e  */
        @Override // x9.l
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final l9.m invoke(com.afollestad.materialdialogs.internal.main.DialogScrollView r5) {
            /*
                r4 = this;
                com.afollestad.materialdialogs.internal.main.DialogScrollView r5 = (com.afollestad.materialdialogs.internal.main.DialogScrollView) r5
                java.lang.String r0 = "$receiver"
                kotlin.jvm.internal.h.g(r5, r0)
                r5.a()
                int r0 = r5.getChildCount()
                if (r0 == 0) goto L2e
                int r0 = r5.getMeasuredHeight()
                if (r0 == 0) goto L2e
                r0 = 0
                android.view.View r1 = r5.getChildAt(r0)
                java.lang.String r2 = "getChildAt(0)"
                kotlin.jvm.internal.h.b(r1, r2)
                int r1 = r1.getMeasuredHeight()
                int r2 = r5.getHeight()
                r3 = 1
                if (r1 <= r2) goto L2c
                r0 = 1
            L2c:
                if (r0 != 0) goto L2f
            L2e:
                r3 = 2
            L2f:
                r5.setOverScrollMode(r3)
                l9.m r5 = l9.m.f9594a
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.afollestad.materialdialogs.internal.main.DialogScrollView.a.invoke(java.lang.Object):java.lang.Object");
        }
    }

    public DialogScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public final void a() {
        if (getChildCount() != 0 && getMeasuredHeight() != 0) {
            View childAt = getChildAt(0);
            h.b(childAt, "getChildAt(0)");
            if (childAt.getMeasuredHeight() > getHeight()) {
                View view = getChildAt(getChildCount() - 1);
                h.b(view, "view");
                int bottom = view.getBottom() - (getScrollY() + getMeasuredHeight());
                DialogLayout dialogLayout = this.rootView;
                if (dialogLayout != null) {
                    boolean z10 = getScrollY() > 0;
                    boolean z11 = bottom > 0;
                    DialogTitleLayout dialogTitleLayout = dialogLayout.titleLayout;
                    if (dialogTitleLayout == null) {
                        h.n("titleLayout");
                        throw null;
                    }
                    dialogTitleLayout.setDrawDivider(z10);
                    DialogActionButtonLayout dialogActionButtonLayout = dialogLayout.buttonsLayout;
                    if (dialogActionButtonLayout != null) {
                        dialogActionButtonLayout.setDrawDivider(z11);
                        return;
                    }
                    return;
                }
                return;
            }
        }
        DialogLayout dialogLayout2 = this.rootView;
        if (dialogLayout2 != null) {
            DialogTitleLayout dialogTitleLayout2 = dialogLayout2.titleLayout;
            if (dialogTitleLayout2 == null) {
                h.n("titleLayout");
                throw null;
            }
            dialogTitleLayout2.setDrawDivider(false);
            DialogActionButtonLayout dialogActionButtonLayout2 = dialogLayout2.buttonsLayout;
            if (dialogActionButtonLayout2 != null) {
                dialogActionButtonLayout2.setDrawDivider(false);
            }
        }
    }

    @Override // android.view.View
    public final DialogLayout getRootView() {
        return this.rootView;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        a block = a.f2505a;
        h.g(block, "block");
        if (getMeasuredWidth() <= 0 || getMeasuredHeight() <= 0) {
            getViewTreeObserver().addOnGlobalLayoutListener(new b(this, block));
        } else {
            block.invoke(this);
        }
    }

    @Override // android.view.View
    public final void onScrollChanged(int r12, int r22, int r32, int r42) {
        super.onScrollChanged(r12, r22, r32, r42);
        a();
    }

    public final void setRootView(DialogLayout dialogLayout) {
        this.rootView = dialogLayout;
    }
}
