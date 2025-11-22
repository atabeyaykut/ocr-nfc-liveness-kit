package h8;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import e8.l;
import kotlin.jvm.internal.h;

/* loaded from: classes2.dex */
public abstract class a<VH extends RecyclerView.ViewHolder> extends b<VH> implements l<VH> {
    @Override // e8.l
    public final VH k(ViewGroup parent) {
        h.f(parent, "parent");
        Context context = parent.getContext();
        h.e(context, "parent.context");
        View viewInflate = LayoutInflater.from(context).inflate(m(), parent, false);
        h.e(viewInflate, "LayoutInflater.from(ctx)…layoutRes, parent, false)");
        return (VH) n(viewInflate);
    }

    @LayoutRes
    public abstract int m();

    public abstract VH n(View view);
}
