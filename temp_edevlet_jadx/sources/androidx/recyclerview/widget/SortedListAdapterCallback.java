package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SortedList;

/* loaded from: classes.dex */
public abstract class SortedListAdapterCallback<T2> extends SortedList.Callback<T2> {
    final RecyclerView.Adapter<?> mAdapter;

    public SortedListAdapterCallback(@SuppressLint({"UnknownNullness", "MissingNullability"}) RecyclerView.Adapter<?> adapter) {
        this.mAdapter = adapter;
    }

    @Override // androidx.recyclerview.widget.SortedList.Callback
    public void onChanged(int r22, int r32) {
        this.mAdapter.notifyItemRangeChanged(r22, r32);
    }

    @Override // androidx.recyclerview.widget.SortedList.Callback, androidx.recyclerview.widget.ListUpdateCallback
    @SuppressLint({"UnknownNullness"})
    public void onChanged(int r22, int r32, Object obj) {
        this.mAdapter.notifyItemRangeChanged(r22, r32, obj);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onInserted(int r22, int r32) {
        this.mAdapter.notifyItemRangeInserted(r22, r32);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onMoved(int r22, int r32) {
        this.mAdapter.notifyItemMoved(r22, r32);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onRemoved(int r22, int r32) {
        this.mAdapter.notifyItemRangeRemoved(r22, r32);
    }
}
