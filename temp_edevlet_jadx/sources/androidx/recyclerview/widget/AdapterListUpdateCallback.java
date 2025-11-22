package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class AdapterListUpdateCallback implements ListUpdateCallback {

    @NonNull
    private final RecyclerView.Adapter mAdapter;

    public AdapterListUpdateCallback(@NonNull RecyclerView.Adapter adapter) {
        this.mAdapter = adapter;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
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
