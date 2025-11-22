package com.airbnb.epoxy;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes.dex */
public class g extends EpoxyRecyclerView {

    /* renamed from: m, reason: collision with root package name */
    public static c f2567m = new a();

    /* renamed from: n, reason: collision with root package name */
    @Dimension(unit = 0)
    public static int f2568n = 8;

    /* renamed from: l, reason: collision with root package name */
    public float f2569l;

    public class a extends c {
        @Override // com.airbnb.epoxy.g.c
        @NonNull
        public final LinearSnapHelper a() {
            return new LinearSnapHelper();
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final int f2570a = 0;

        /* renamed from: b, reason: collision with root package name */
        public final int f2571b = 0;

        /* renamed from: c, reason: collision with root package name */
        public final int f2572c = 0;

        /* renamed from: d, reason: collision with root package name */
        public final int f2573d = 0;

        /* renamed from: e, reason: collision with root package name */
        public final int f2574e = 0;
        public final int f = 2;

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            return this.f2570a == bVar.f2570a && this.f2571b == bVar.f2571b && this.f2572c == bVar.f2572c && this.f2573d == bVar.f2573d && this.f2574e == bVar.f2574e;
        }

        public final int hashCode() {
            return (((((((this.f2570a * 31) + this.f2571b) * 31) + this.f2572c) * 31) + this.f2573d) * 31) + this.f2574e;
        }
    }

    public static abstract class c {
        @NonNull
        public abstract LinearSnapHelper a();
    }

    public g(Context context) {
        super(context);
    }

    public static void setDefaultGlobalSnapHelperFactory(@Nullable c cVar) {
        f2567m = cVar;
    }

    public static void setDefaultItemSpacingDp(@Dimension(unit = 0) int r02) {
        f2568n = r02;
    }

    @Override // com.airbnb.epoxy.EpoxyRecyclerView
    public final void a() {
        super.a();
    }

    @Override // com.airbnb.epoxy.EpoxyRecyclerView
    public final void d() throws IllegalStateException {
        super.d();
        int defaultSpacingBetweenItemsDp = getDefaultSpacingBetweenItemsDp();
        if (defaultSpacingBetweenItemsDp >= 0) {
            setItemSpacingDp(defaultSpacingBetweenItemsDp);
            if (getPaddingLeft() == 0 && getPaddingRight() == 0 && getPaddingTop() == 0 && getPaddingBottom() == 0) {
                setPaddingDp(defaultSpacingBetweenItemsDp);
            }
        }
        c snapHelperFactory = getSnapHelperFactory();
        if (snapHelperFactory != null) {
            getContext();
            snapHelperFactory.a().attachToRecyclerView(this);
        }
        setRemoveAdapterWhenDetachedFromWindow(false);
    }

    @Dimension(unit = 0)
    public int getDefaultSpacingBetweenItemsDp() {
        return f2568n;
    }

    public float getNumViewsToShowOnScreen() {
        return this.f2569l;
    }

    @Nullable
    public c getSnapHelperFactory() {
        return f2567m;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void onChildAttachedToWindow(View view) {
        int height;
        if (this.f2569l > 0.0f) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            view.setTag(R.id.epoxy_recycler_view_child_initial_size_id, Integer.valueOf(layoutParams.width));
            int r6 = getSpacingDecorator().f2652a;
            int paddingBottom = 0;
            int r62 = r6 > 0 ? (int) (r6 * this.f2569l) : 0;
            boolean zCanScrollHorizontally = getLayoutManager().canScrollHorizontally();
            if (zCanScrollHorizontally) {
                height = (getWidth() > 0 ? getWidth() : getMeasuredWidth() > 0 ? getMeasuredWidth() : getContext().getResources().getDisplayMetrics().widthPixels) - getPaddingLeft();
                if (getClipToPadding()) {
                    paddingBottom = getPaddingRight();
                }
            } else {
                height = (getHeight() > 0 ? getHeight() : getMeasuredHeight() > 0 ? getMeasuredHeight() : getContext().getResources().getDisplayMetrics().heightPixels) - getPaddingTop();
                if (getClipToPadding()) {
                    paddingBottom = getPaddingBottom();
                }
            }
            int r63 = (int) (((height - paddingBottom) - r62) / this.f2569l);
            if (zCanScrollHorizontally) {
                layoutParams.width = r63;
            } else {
                layoutParams.height = r63;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void onChildDetachedFromWindow(View view) {
        Object tag = view.getTag(R.id.epoxy_recycler_view_child_initial_size_id);
        if (tag instanceof Integer) {
            view.getLayoutParams().width = ((Integer) tag).intValue();
            view.setTag(R.id.epoxy_recycler_view_child_initial_size_id, null);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setHasFixedSize(boolean z10) {
        super.setHasFixedSize(z10);
    }

    public void setInitialPrefetchItemCount(int r32) {
        if (r32 < 0) {
            throw new IllegalStateException("numItemsToPrefetch must be greater than 0");
        }
        if (r32 == 0) {
            r32 = 2;
        }
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            ((LinearLayoutManager) layoutManager).setInitialPrefetchItemCount(r32);
        }
    }

    @Override // com.airbnb.epoxy.EpoxyRecyclerView
    public void setModels(@NonNull List<? extends u<?>> list) {
        super.setModels(list);
    }

    public void setNumViewsToShowOnScreen(float f) {
        this.f2569l = f;
        setInitialPrefetchItemCount((int) Math.ceil(f));
    }

    public void setPadding(@Nullable b bVar) {
        int r72;
        if (bVar == null) {
            setPaddingDp(0);
            return;
        }
        int r12 = bVar.f2574e;
        int r22 = bVar.f2573d;
        int r32 = bVar.f2572c;
        int r42 = bVar.f2571b;
        int r52 = bVar.f2570a;
        int r73 = bVar.f;
        if (r73 == 1) {
            setPadding(r52, r42, r32, r22);
            setItemSpacingPx(r12);
            return;
        }
        if (r73 == 2) {
            setPadding(c(r52), c(r42), c(r32), c(r22));
            r72 = c(r12);
        } else {
            if (r73 != 3) {
                return;
            }
            setPadding(e(r52), e(r42), e(r32), e(r22));
            r72 = e(r12);
        }
        setItemSpacingPx(r72);
    }

    public void setPaddingDp(@Dimension(unit = 0) int r22) {
        if (r22 == -1) {
            r22 = getDefaultSpacingBetweenItemsDp();
        }
        int r23 = c(r22);
        setPadding(r23, r23, r23, r23);
        setItemSpacingPx(r23);
    }

    public void setPaddingRes(@DimenRes int r12) {
        int r13 = e(r12);
        setPadding(r13, r13, r13, r13);
        setItemSpacingPx(r13);
    }
}
