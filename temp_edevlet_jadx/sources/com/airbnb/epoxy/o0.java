package com.airbnb.epoxy;

import android.util.SparseArray;
import androidx.recyclerview.widget.RecyclerView;
import java.util.LinkedList;
import java.util.Queue;

/* loaded from: classes.dex */
public final class o0 extends RecyclerView.RecycledViewPool {

    /* renamed from: a, reason: collision with root package name */
    public final SparseArray<Queue<RecyclerView.ViewHolder>> f2605a = new SparseArray<>();

    @Override // androidx.recyclerview.widget.RecyclerView.RecycledViewPool
    public final void clear() {
        this.f2605a.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.RecycledViewPool
    public final RecyclerView.ViewHolder getRecycledView(int r22) {
        Queue<RecyclerView.ViewHolder> queue = this.f2605a.get(r22);
        if (queue != null) {
            return queue.poll();
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.RecycledViewPool
    public final int getRecycledViewCount(int r22) {
        Queue<RecyclerView.ViewHolder> queue = this.f2605a.get(r22);
        if (queue != null) {
            return queue.size();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.RecycledViewPool
    public final void putRecycledView(RecyclerView.ViewHolder viewHolder) {
        kotlin.jvm.internal.h.f(viewHolder, "viewHolder");
        int itemViewType = viewHolder.getItemViewType();
        SparseArray<Queue<RecyclerView.ViewHolder>> sparseArray = this.f2605a;
        Queue<RecyclerView.ViewHolder> linkedList = sparseArray.get(itemViewType);
        if (linkedList == null) {
            linkedList = new LinkedList<>();
            sparseArray.put(itemViewType, linkedList);
        }
        linkedList.add(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.RecycledViewPool
    public final void setMaxRecycledViews(int r12, int r22) {
        throw new UnsupportedOperationException("UnboundedViewPool does not support setting a maximum number of recycled views");
    }
}
