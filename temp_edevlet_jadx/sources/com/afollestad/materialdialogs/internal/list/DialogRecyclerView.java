package com.afollestad.materialdialogs.internal.list;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.RestrictTo;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import x9.l;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/afollestad/materialdialogs/internal/list/DialogRecyclerView;", "Landroidx/recyclerview/widget/RecyclerView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "core"}, k = 1, mv = {1, 4, 0})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class DialogRecyclerView extends RecyclerView {

    /* renamed from: a, reason: collision with root package name */
    public final b f2487a;

    public static final class a extends j implements l<DialogRecyclerView, m> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f2488a = new a();

        public a() {
            super(1);
        }

        /* JADX WARN: Removed duplicated region for block: B:41:0x0077  */
        @Override // x9.l
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final l9.m invoke(com.afollestad.materialdialogs.internal.list.DialogRecyclerView r6) {
            /*
                r5 = this;
                com.afollestad.materialdialogs.internal.list.DialogRecyclerView r6 = (com.afollestad.materialdialogs.internal.list.DialogRecyclerView) r6
                java.lang.String r0 = "$receiver"
                kotlin.jvm.internal.h.g(r6, r0)
                int r0 = r6.getChildCount()
                if (r0 == 0) goto L10
                r6.getMeasuredHeight()
            L10:
                int r0 = r6.getChildCount()
                if (r0 == 0) goto L77
                int r0 = r6.getMeasuredHeight()
                if (r0 != 0) goto L1d
                goto L77
            L1d:
                androidx.recyclerview.widget.RecyclerView$Adapter r0 = r6.getAdapter()
                if (r0 == 0) goto L72
                int r0 = r0.getItemCount()
                r1 = 1
                int r0 = r0 - r1
                androidx.recyclerview.widget.RecyclerView$LayoutManager r2 = r6.getLayoutManager()
                boolean r3 = r2 instanceof androidx.recyclerview.widget.LinearLayoutManager
                r4 = 0
                if (r3 == 0) goto L3b
                androidx.recyclerview.widget.LinearLayoutManager r2 = (androidx.recyclerview.widget.LinearLayoutManager) r2
                int r2 = r2.findLastCompletelyVisibleItemPosition()
                if (r2 != r0) goto L49
                goto L47
            L3b:
                boolean r3 = r2 instanceof androidx.recyclerview.widget.GridLayoutManager
                if (r3 == 0) goto L49
                androidx.recyclerview.widget.GridLayoutManager r2 = (androidx.recyclerview.widget.GridLayoutManager) r2
                int r2 = r2.findLastCompletelyVisibleItemPosition()
                if (r2 != r0) goto L49
            L47:
                r0 = 1
                goto L4a
            L49:
                r0 = 0
            L4a:
                if (r0 == 0) goto L6f
                androidx.recyclerview.widget.RecyclerView$LayoutManager r0 = r6.getLayoutManager()
                boolean r2 = r0 instanceof androidx.recyclerview.widget.LinearLayoutManager
                if (r2 == 0) goto L5d
                androidx.recyclerview.widget.LinearLayoutManager r0 = (androidx.recyclerview.widget.LinearLayoutManager) r0
                int r0 = r0.findFirstCompletelyVisibleItemPosition()
                if (r0 != 0) goto L6b
                goto L69
            L5d:
                boolean r2 = r0 instanceof androidx.recyclerview.widget.GridLayoutManager
                if (r2 == 0) goto L6b
                androidx.recyclerview.widget.GridLayoutManager r0 = (androidx.recyclerview.widget.GridLayoutManager) r0
                int r0 = r0.findFirstCompletelyVisibleItemPosition()
                if (r0 != 0) goto L6b
            L69:
                r0 = 1
                goto L6c
            L6b:
                r0 = 0
            L6c:
                if (r0 == 0) goto L6f
                r4 = 1
            L6f:
                if (r4 == 0) goto L78
                goto L77
            L72:
                kotlin.jvm.internal.h.l()
                r6 = 0
                throw r6
            L77:
                r1 = 2
            L78:
                r6.setOverScrollMode(r1)
                l9.m r6 = l9.m.f9594a
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.afollestad.materialdialogs.internal.list.DialogRecyclerView.a.invoke(java.lang.Object):java.lang.Object");
        }
    }

    public static final class b extends RecyclerView.OnScrollListener {
        public b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public final void onScrolled(RecyclerView recyclerView, int r32, int r42) {
            h.g(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, r32, r42);
            DialogRecyclerView dialogRecyclerView = DialogRecyclerView.this;
            if (dialogRecyclerView.getChildCount() != 0) {
                dialogRecyclerView.getMeasuredHeight();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        h.g(context, "context");
        this.f2487a = new b();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        a block = a.f2488a;
        h.g(block, "block");
        if (getMeasuredWidth() <= 0 || getMeasuredHeight() <= 0) {
            getViewTreeObserver().addOnGlobalLayoutListener(new b0.b(this, block));
        } else {
            block.invoke(this);
        }
        addOnScrollListener(this.f2487a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        removeOnScrollListener(this.f2487a);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onScrollChanged(int r12, int r22, int r32, int r42) {
        super.onScrollChanged(r12, r22, r32, r42);
        if (getChildCount() != 0) {
            getMeasuredHeight();
        }
    }
}
