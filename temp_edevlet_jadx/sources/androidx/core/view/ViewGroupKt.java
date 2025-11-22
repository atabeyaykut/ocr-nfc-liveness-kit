package androidx.core.view;

import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.appcompat.widget.v;
import java.util.Iterator;
import kotlin.Metadata;
import x9.p;

@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010)\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u0015\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\u0002\u001a\u0015\u0010\u0007\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0003H\u0086\n\u001a\u0015\u0010\t\u001a\u00020\b*\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0003H\u0086\n\u001a\u0015\u0010\n\u001a\u00020\b*\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0003H\u0086\n\u001a\r\u0010\u000b\u001a\u00020\u0006*\u00020\u0000H\u0086\b\u001a\r\u0010\f\u001a\u00020\u0006*\u00020\u0000H\u0086\b\u001a$\u0010\u000f\u001a\u00020\b*\u00020\u00002\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b0\rH\u0086\bø\u0001\u0000\u001a*\u0010\u0011\u001a\u00020\b*\u00020\u00002\u0018\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b0\u0010H\u0086\bø\u0001\u0000\u001a\u0013\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00030\u0012*\u00020\u0000H\u0086\u0002\u001a\u0017\u0010\u0016\u001a\u00020\b*\u00020\u00142\b\b\u0001\u0010\u0015\u001a\u00020\u0001H\u0086\b\u001a5\u0010\u001b\u001a\u00020\b*\u00020\u00142\b\b\u0003\u0010\u0017\u001a\u00020\u00012\b\b\u0003\u0010\u0018\u001a\u00020\u00012\b\b\u0003\u0010\u0019\u001a\u00020\u00012\b\b\u0003\u0010\u001a\u001a\u00020\u0001H\u0086\b\u001a5\u0010\u001e\u001a\u00020\b*\u00020\u00142\b\b\u0003\u0010\u001c\u001a\u00020\u00012\b\b\u0003\u0010\u0018\u001a\u00020\u00012\b\b\u0003\u0010\u001d\u001a\u00020\u00012\b\b\u0003\u0010\u001a\u001a\u00020\u0001H\u0087\b\"\u0016\u0010\u0015\u001a\u00020\u0001*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b\u001f\u0010 \"\u0016\u0010$\u001a\u00020!*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b\"\u0010#\"\u001b\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00030%*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b&\u0010'\"\u001b\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00030%*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b)\u0010'\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006+"}, d2 = {"Landroid/view/ViewGroup;", "", "index", "Landroid/view/View;", "get", "view", "", "contains", "Ll9/m;", "plusAssign", "minusAssign", "isEmpty", "isNotEmpty", "Lkotlin/Function1;", "action", "forEach", "Lkotlin/Function2;", "forEachIndexed", "", "iterator", "Landroid/view/ViewGroup$MarginLayoutParams;", "size", "setMargins", "left", "top", "right", "bottom", "updateMargins", "start", "end", "updateMarginsRelative", "getSize", "(Landroid/view/ViewGroup;)I", "Lca/d;", "getIndices", "(Landroid/view/ViewGroup;)Lca/d;", "indices", "Llc/h;", "getChildren", "(Landroid/view/ViewGroup;)Llc/h;", "children", "getDescendants", "descendants", "core-ktx_release"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class ViewGroupKt {

    @Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0010)\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\t\u0010\u0004\u001a\u00020\u0003H\u0096\u0002J\t\u0010\u0005\u001a\u00020\u0002H\u0096\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0016R\u0016\u0010\t\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"androidx/core/view/ViewGroupKt$iterator$1", "", "Landroid/view/View;", "", "hasNext", "next", "Ll9/m;", "remove", "", "index", "I", "core-ktx_release"}, k = 1, mv = {1, 7, 1})
    /* renamed from: androidx.core.view.ViewGroupKt$iterator$1, reason: invalid class name */
    public static final class AnonymousClass1 implements Iterator<View>, y9.a {
        final /* synthetic */ ViewGroup $this_iterator;
        private int index;

        public AnonymousClass1(ViewGroup viewGroup) {
            this.$this_iterator = viewGroup;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.index < this.$this_iterator.getChildCount();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public View next() {
            ViewGroup viewGroup = this.$this_iterator;
            int r12 = this.index;
            this.index = r12 + 1;
            View childAt = viewGroup.getChildAt(r12);
            if (childAt != null) {
                return childAt;
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // java.util.Iterator
        public void remove() {
            ViewGroup viewGroup = this.$this_iterator;
            int r12 = this.index - 1;
            this.index = r12;
            viewGroup.removeViewAt(r12);
        }
    }

    public static final boolean contains(ViewGroup viewGroup, View view) {
        kotlin.jvm.internal.h.f(viewGroup, "<this>");
        kotlin.jvm.internal.h.f(view, "view");
        return viewGroup.indexOfChild(view) != -1;
    }

    public static final void forEach(ViewGroup viewGroup, x9.l<? super View, l9.m> action) {
        kotlin.jvm.internal.h.f(viewGroup, "<this>");
        kotlin.jvm.internal.h.f(action, "action");
        int childCount = viewGroup.getChildCount();
        for (int r12 = 0; r12 < childCount; r12++) {
            View childAt = viewGroup.getChildAt(r12);
            kotlin.jvm.internal.h.e(childAt, "getChildAt(index)");
            action.invoke(childAt);
        }
    }

    public static final void forEachIndexed(ViewGroup viewGroup, p<? super Integer, ? super View, l9.m> action) {
        kotlin.jvm.internal.h.f(viewGroup, "<this>");
        kotlin.jvm.internal.h.f(action, "action");
        int childCount = viewGroup.getChildCount();
        for (int r12 = 0; r12 < childCount; r12++) {
            Integer numValueOf = Integer.valueOf(r12);
            View childAt = viewGroup.getChildAt(r12);
            kotlin.jvm.internal.h.e(childAt, "getChildAt(index)");
            action.mo7invoke(numValueOf, childAt);
        }
    }

    public static final View get(ViewGroup viewGroup, int r42) {
        kotlin.jvm.internal.h.f(viewGroup, "<this>");
        View childAt = viewGroup.getChildAt(r42);
        if (childAt != null) {
            return childAt;
        }
        StringBuilder sbE = v.e("Index: ", r42, ", Size: ");
        sbE.append(viewGroup.getChildCount());
        throw new IndexOutOfBoundsException(sbE.toString());
    }

    public static final lc.h<View> getChildren(final ViewGroup viewGroup) {
        kotlin.jvm.internal.h.f(viewGroup, "<this>");
        return new lc.h<View>() { // from class: androidx.core.view.ViewGroupKt$children$1
            @Override // lc.h
            public Iterator<View> iterator() {
                return ViewGroupKt.iterator(viewGroup);
            }
        };
    }

    public static final lc.h<View> getDescendants(ViewGroup viewGroup) {
        kotlin.jvm.internal.h.f(viewGroup, "<this>");
        return new lc.k(new ViewGroupKt$descendants$1(viewGroup, null));
    }

    public static final ca.d getIndices(ViewGroup viewGroup) {
        kotlin.jvm.internal.h.f(viewGroup, "<this>");
        return b8.f.r0(0, viewGroup.getChildCount());
    }

    public static final int getSize(ViewGroup viewGroup) {
        kotlin.jvm.internal.h.f(viewGroup, "<this>");
        return viewGroup.getChildCount();
    }

    public static final boolean isEmpty(ViewGroup viewGroup) {
        kotlin.jvm.internal.h.f(viewGroup, "<this>");
        return viewGroup.getChildCount() == 0;
    }

    public static final boolean isNotEmpty(ViewGroup viewGroup) {
        kotlin.jvm.internal.h.f(viewGroup, "<this>");
        return viewGroup.getChildCount() != 0;
    }

    public static final Iterator<View> iterator(ViewGroup viewGroup) {
        kotlin.jvm.internal.h.f(viewGroup, "<this>");
        return new AnonymousClass1(viewGroup);
    }

    public static final void minusAssign(ViewGroup viewGroup, View view) {
        kotlin.jvm.internal.h.f(viewGroup, "<this>");
        kotlin.jvm.internal.h.f(view, "view");
        viewGroup.removeView(view);
    }

    public static final void plusAssign(ViewGroup viewGroup, View view) {
        kotlin.jvm.internal.h.f(viewGroup, "<this>");
        kotlin.jvm.internal.h.f(view, "view");
        viewGroup.addView(view);
    }

    public static final void setMargins(ViewGroup.MarginLayoutParams marginLayoutParams, @Px int r22) {
        kotlin.jvm.internal.h.f(marginLayoutParams, "<this>");
        marginLayoutParams.setMargins(r22, r22, r22, r22);
    }

    public static final void updateMargins(ViewGroup.MarginLayoutParams marginLayoutParams, @Px int r22, @Px int r32, @Px int r42, @Px int r52) {
        kotlin.jvm.internal.h.f(marginLayoutParams, "<this>");
        marginLayoutParams.setMargins(r22, r32, r42, r52);
    }

    public static /* synthetic */ void updateMargins$default(ViewGroup.MarginLayoutParams marginLayoutParams, int r12, int r22, int r32, int r42, int r52, Object obj) {
        if ((r52 & 1) != 0) {
            r12 = marginLayoutParams.leftMargin;
        }
        if ((r52 & 2) != 0) {
            r22 = marginLayoutParams.topMargin;
        }
        if ((r52 & 4) != 0) {
            r32 = marginLayoutParams.rightMargin;
        }
        if ((r52 & 8) != 0) {
            r42 = marginLayoutParams.bottomMargin;
        }
        kotlin.jvm.internal.h.f(marginLayoutParams, "<this>");
        marginLayoutParams.setMargins(r12, r22, r32, r42);
    }

    @RequiresApi(17)
    @SuppressLint({"ClassVerificationFailure"})
    public static final void updateMarginsRelative(ViewGroup.MarginLayoutParams marginLayoutParams, @Px int r22, @Px int r32, @Px int r42, @Px int r52) {
        kotlin.jvm.internal.h.f(marginLayoutParams, "<this>");
        marginLayoutParams.setMarginStart(r22);
        marginLayoutParams.topMargin = r32;
        marginLayoutParams.setMarginEnd(r42);
        marginLayoutParams.bottomMargin = r52;
    }

    public static /* synthetic */ void updateMarginsRelative$default(ViewGroup.MarginLayoutParams marginLayoutParams, int r12, int r22, int r32, int r42, int r52, Object obj) {
        if ((r52 & 1) != 0) {
            r12 = marginLayoutParams.getMarginStart();
        }
        if ((r52 & 2) != 0) {
            r22 = marginLayoutParams.topMargin;
        }
        if ((r52 & 4) != 0) {
            r32 = marginLayoutParams.getMarginEnd();
        }
        if ((r52 & 8) != 0) {
            r42 = marginLayoutParams.bottomMargin;
        }
        kotlin.jvm.internal.h.f(marginLayoutParams, "<this>");
        marginLayoutParams.setMarginStart(r12);
        marginLayoutParams.topMargin = r22;
        marginLayoutParams.setMarginEnd(r32);
        marginLayoutParams.bottomMargin = r42;
    }
}
