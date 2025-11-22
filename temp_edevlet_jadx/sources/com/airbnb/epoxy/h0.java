package com.airbnb.epoxy;

import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class h0 extends RecyclerView.AdapterDataObserver {

    /* renamed from: a, reason: collision with root package name */
    public boolean f2589a;

    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
    public final void onChanged() {
        if (!this.f2589a) {
            throw new IllegalStateException("You cannot notify item changes directly. Call `requestModelBuild` instead.");
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
    public final void onItemRangeChanged(int r12, int r22) {
        onChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
    public final void onItemRangeChanged(int r12, int r22, Object obj) {
        onChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
    public final void onItemRangeInserted(int r12, int r22) {
        onChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
    public final void onItemRangeMoved(int r12, int r22, int r32) {
        onChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
    public final void onItemRangeRemoved(int r12, int r22) {
        onChanged();
    }
}
