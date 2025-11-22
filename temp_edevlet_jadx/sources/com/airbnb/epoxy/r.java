package com.airbnb.epoxy;

import android.util.Log;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class r extends RecyclerView.AdapterDataObserver {

    /* renamed from: a, reason: collision with root package name */
    public final String f2615a;

    public r(String str) {
        this.f2615a = str;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
    public final void onItemRangeChanged(int r32, int r42) {
        Log.d(this.f2615a, "Item range changed. Start: " + r32 + " Count: " + r42);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
    public final void onItemRangeChanged(int r22, int r32, @Nullable Object obj) {
        if (obj == null) {
            onItemRangeChanged(r22, r32);
            return;
        }
        Log.d(this.f2615a, "Item range changed with payloads. Start: " + r22 + " Count: " + r32);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
    public final void onItemRangeInserted(int r32, int r42) {
        Log.d(this.f2615a, "Item range inserted. Start: " + r32 + " Count: " + r42);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
    public final void onItemRangeMoved(int r22, int r32, int r42) {
        Log.d(this.f2615a, "Item moved. From: " + r22 + " To: " + r32);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
    public final void onItemRangeRemoved(int r32, int r42) {
        Log.d(this.f2615a, "Item range removed. Start: " + r32 + " Count: " + r42);
    }
}
