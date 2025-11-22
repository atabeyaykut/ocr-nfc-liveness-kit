package com.airbnb.epoxy.stickyheader;

import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import l9.m;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/airbnb/epoxy/stickyheader/StickyHeaderLinearLayoutManager;", "Landroidx/recyclerview/widget/LinearLayoutManager;", "a", "epoxy-adapter_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes.dex */
public final class StickyHeaderLinearLayoutManager extends LinearLayoutManager {

    /* renamed from: a, reason: collision with root package name */
    public com.airbnb.epoxy.e f2616a;

    /* renamed from: b, reason: collision with root package name */
    public int f2617b;

    /* renamed from: c, reason: collision with root package name */
    public int f2618c;

    public static final class a implements Parcelable {
        public static final Parcelable.Creator<a> CREATOR = new C0057a();

        /* renamed from: a, reason: collision with root package name */
        public final Parcelable f2619a;

        /* renamed from: b, reason: collision with root package name */
        public final int f2620b;

        /* renamed from: c, reason: collision with root package name */
        public final int f2621c;

        /* renamed from: com.airbnb.epoxy.stickyheader.StickyHeaderLinearLayoutManager$a$a, reason: collision with other inner class name */
        public static class C0057a implements Parcelable.Creator<a> {
            @Override // android.os.Parcelable.Creator
            public final a createFromParcel(Parcel in) {
                kotlin.jvm.internal.h.f(in, "in");
                return new a(in.readParcelable(a.class.getClassLoader()), in.readInt(), in.readInt());
            }

            @Override // android.os.Parcelable.Creator
            public final a[] newArray(int r12) {
                return new a[r12];
            }
        }

        public a(Parcelable parcelable, int r22, int r32) {
            this.f2619a = parcelable;
            this.f2620b = r22;
            this.f2621c = r32;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return kotlin.jvm.internal.h.a(this.f2619a, aVar.f2619a) && this.f2620b == aVar.f2620b && this.f2621c == aVar.f2621c;
        }

        public final int hashCode() {
            Parcelable parcelable = this.f2619a;
            return ((((parcelable != null ? parcelable.hashCode() : 0) * 31) + this.f2620b) * 31) + this.f2621c;
        }

        public final String toString() {
            StringBuilder sb2 = new StringBuilder("SavedState(superState=");
            sb2.append(this.f2619a);
            sb2.append(", scrollPosition=");
            sb2.append(this.f2620b);
            sb2.append(", scrollOffset=");
            return androidx.browser.browseractions.a.b(sb2, this.f2621c, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int r32) {
            kotlin.jvm.internal.h.f(parcel, "parcel");
            parcel.writeParcelable(this.f2619a, r32);
            parcel.writeInt(this.f2620b);
            parcel.writeInt(this.f2621c);
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.a<Integer> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ RecyclerView.State f2623b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(RecyclerView.State state) {
            super(0);
            this.f2623b = state;
        }

        @Override // x9.a
        public final Integer invoke() {
            return Integer.valueOf(StickyHeaderLinearLayoutManager.super.computeHorizontalScrollExtent(this.f2623b));
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.a<Integer> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ RecyclerView.State f2625b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(RecyclerView.State state) {
            super(0);
            this.f2625b = state;
        }

        @Override // x9.a
        public final Integer invoke() {
            return Integer.valueOf(StickyHeaderLinearLayoutManager.super.computeHorizontalScrollOffset(this.f2625b));
        }
    }

    public static final class d extends kotlin.jvm.internal.j implements x9.a<Integer> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ RecyclerView.State f2627b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(RecyclerView.State state) {
            super(0);
            this.f2627b = state;
        }

        @Override // x9.a
        public final Integer invoke() {
            return Integer.valueOf(StickyHeaderLinearLayoutManager.super.computeHorizontalScrollRange(this.f2627b));
        }
    }

    public static final class e extends kotlin.jvm.internal.j implements x9.a<PointF> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f2629b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(int r22) {
            super(0);
            this.f2629b = r22;
        }

        @Override // x9.a
        public final PointF invoke() {
            return StickyHeaderLinearLayoutManager.super.computeScrollVectorForPosition(this.f2629b);
        }
    }

    public static final class f extends kotlin.jvm.internal.j implements x9.a<Integer> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ RecyclerView.State f2631b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(RecyclerView.State state) {
            super(0);
            this.f2631b = state;
        }

        @Override // x9.a
        public final Integer invoke() {
            return Integer.valueOf(StickyHeaderLinearLayoutManager.super.computeVerticalScrollExtent(this.f2631b));
        }
    }

    public static final class g extends kotlin.jvm.internal.j implements x9.a<Integer> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ RecyclerView.State f2633b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(RecyclerView.State state) {
            super(0);
            this.f2633b = state;
        }

        @Override // x9.a
        public final Integer invoke() {
            return Integer.valueOf(StickyHeaderLinearLayoutManager.super.computeVerticalScrollOffset(this.f2633b));
        }
    }

    public static final class h extends kotlin.jvm.internal.j implements x9.a<Integer> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ RecyclerView.State f2635b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(RecyclerView.State state) {
            super(0);
            this.f2635b = state;
        }

        @Override // x9.a
        public final Integer invoke() {
            return Integer.valueOf(StickyHeaderLinearLayoutManager.super.computeVerticalScrollRange(this.f2635b));
        }
    }

    public static final class i extends kotlin.jvm.internal.j implements x9.a<View> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ View f2637b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f2638c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ RecyclerView.Recycler f2639d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ RecyclerView.State f2640e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(View view, int r32, RecyclerView.Recycler recycler, RecyclerView.State state) {
            super(0);
            this.f2637b = view;
            this.f2638c = r32;
            this.f2639d = recycler;
            this.f2640e = state;
        }

        @Override // x9.a
        public final View invoke() {
            return StickyHeaderLinearLayoutManager.super.onFocusSearchFailed(this.f2637b, this.f2638c, this.f2639d, this.f2640e);
        }
    }

    public static final class j extends kotlin.jvm.internal.j implements x9.a<m> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ RecyclerView.Recycler f2642b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ RecyclerView.State f2643c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(RecyclerView.Recycler recycler, RecyclerView.State state) {
            super(0);
            this.f2642b = recycler;
            this.f2643c = state;
        }

        @Override // x9.a
        public final m invoke() {
            StickyHeaderLinearLayoutManager.super.onLayoutChildren(this.f2642b, this.f2643c);
            return m.f9594a;
        }
    }

    public static final class k extends kotlin.jvm.internal.j implements x9.a<Integer> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f2645b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ RecyclerView.Recycler f2646c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ RecyclerView.State f2647d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(int r22, RecyclerView.Recycler recycler, RecyclerView.State state) {
            super(0);
            this.f2645b = r22;
            this.f2646c = recycler;
            this.f2647d = state;
        }

        @Override // x9.a
        public final Integer invoke() {
            return Integer.valueOf(StickyHeaderLinearLayoutManager.super.scrollHorizontallyBy(this.f2645b, this.f2646c, this.f2647d));
        }
    }

    public static final class l extends kotlin.jvm.internal.j implements x9.a<Integer> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f2649b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ RecyclerView.Recycler f2650c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ RecyclerView.State f2651d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(int r22, RecyclerView.Recycler recycler, RecyclerView.State state) {
            super(0);
            this.f2649b = r22;
            this.f2650c = recycler;
            this.f2651d = state;
        }

        @Override // x9.a
        public final Integer invoke() {
            return Integer.valueOf(StickyHeaderLinearLayoutManager.super.scrollVerticallyBy(this.f2649b, this.f2650c, this.f2651d));
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollExtent(RecyclerView.State state) {
        kotlin.jvm.internal.h.f(state, "state");
        return ((Number) l(new b(state))).intValue();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollOffset(RecyclerView.State state) {
        kotlin.jvm.internal.h.f(state, "state");
        return ((Number) l(new c(state))).intValue();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollRange(RecyclerView.State state) {
        kotlin.jvm.internal.h.f(state, "state");
        return ((Number) l(new d(state))).intValue();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public final PointF computeScrollVectorForPosition(int r22) {
        return (PointF) l(new e(r22));
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollExtent(RecyclerView.State state) {
        kotlin.jvm.internal.h.f(state, "state");
        return ((Number) l(new f(state))).intValue();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollOffset(RecyclerView.State state) {
        kotlin.jvm.internal.h.f(state, "state");
        return ((Number) l(new g(state))).intValue();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollRange(RecyclerView.State state) {
        kotlin.jvm.internal.h.f(state, "state");
        return ((Number) l(new h(state))).intValue();
    }

    public final <T> T l(x9.a<? extends T> aVar) {
        return aVar.invoke();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onAdapterChanged(RecyclerView.Adapter<?> adapter, RecyclerView.Adapter<?> adapter2) {
        super.onAdapterChanged(adapter, adapter2);
        com.airbnb.epoxy.e eVar = this.f2616a;
        if (eVar != null) {
            eVar.unregisterAdapterDataObserver(null);
        }
        if (!(adapter2 instanceof com.airbnb.epoxy.e)) {
            this.f2616a = null;
            throw null;
        }
        com.airbnb.epoxy.e eVar2 = (com.airbnb.epoxy.e) adapter2;
        this.f2616a = eVar2;
        if (eVar2 == null) {
            throw null;
        }
        eVar2.registerAdapterDataObserver(null);
        throw null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onAttachedToWindow(RecyclerView recyclerView) {
        kotlin.jvm.internal.h.f(recyclerView, "recyclerView");
        super.onAttachedToWindow(recyclerView);
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        com.airbnb.epoxy.e eVar = this.f2616a;
        if (eVar != null) {
            eVar.unregisterAdapterDataObserver(null);
        }
        if (!(adapter instanceof com.airbnb.epoxy.e)) {
            this.f2616a = null;
            throw null;
        }
        com.airbnb.epoxy.e eVar2 = (com.airbnb.epoxy.e) adapter;
        this.f2616a = eVar2;
        if (eVar2 == null) {
            throw null;
        }
        eVar2.registerAdapterDataObserver(null);
        throw null;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final View onFocusSearchFailed(View focused, int r92, RecyclerView.Recycler recycler, RecyclerView.State state) {
        kotlin.jvm.internal.h.f(focused, "focused");
        kotlin.jvm.internal.h.f(recycler, "recycler");
        kotlin.jvm.internal.h.f(state, "state");
        return (View) l(new i(focused, r92, recycler, state));
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        kotlin.jvm.internal.h.f(recycler, "recycler");
        kotlin.jvm.internal.h.f(state, "state");
        l(new j(recycler, state));
        if (!state.isPreLayout()) {
            throw null;
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof a)) {
            parcelable = null;
        }
        a aVar = (a) parcelable;
        if (aVar != null) {
            this.f2617b = aVar.f2620b;
            this.f2618c = aVar.f2621c;
            super.onRestoreInstanceState(aVar.f2619a);
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final Parcelable onSaveInstanceState() {
        return new a(super.onSaveInstanceState(), this.f2617b, this.f2618c);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int scrollHorizontallyBy(int r22, RecyclerView.Recycler recycler, RecyclerView.State state) {
        kotlin.jvm.internal.h.f(recycler, "recycler");
        int r23 = ((Number) l(new k(r22, recycler, state))).intValue();
        if (r23 == 0) {
            return r23;
        }
        throw null;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void scrollToPosition(int r22) {
        scrollToPositionWithOffset(r22, Integer.MIN_VALUE);
        throw null;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void scrollToPositionWithOffset(int r12, int r22) {
        this.f2617b = -1;
        this.f2618c = Integer.MIN_VALUE;
        throw null;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int scrollVerticallyBy(int r22, RecyclerView.Recycler recycler, RecyclerView.State state) {
        kotlin.jvm.internal.h.f(recycler, "recycler");
        int r23 = ((Number) l(new l(r22, recycler, state))).intValue();
        if (r23 == 0) {
            return r23;
        }
        throw null;
    }
}
