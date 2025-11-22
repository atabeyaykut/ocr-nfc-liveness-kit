package i8;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import e8.j;

/* loaded from: classes2.dex */
public abstract class e<Item extends j<? extends RecyclerView.ViewHolder>> implements c<Item> {
    @Override // i8.c
    public final View a(RecyclerView.ViewHolder viewHolder) {
        return null;
    }

    @Override // i8.c
    public final void b(RecyclerView.ViewHolder viewHolder) {
    }

    public abstract boolean c(View view, int r22, e8.b<Item> bVar, Item r42);
}
