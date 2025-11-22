package i8;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import e8.j;

/* loaded from: classes2.dex */
public abstract class a<Item extends j<? extends RecyclerView.ViewHolder>> implements c<Item> {
    @Override // i8.c
    public View a(RecyclerView.ViewHolder viewHolder) {
        return null;
    }

    @Override // i8.c
    public final void b(RecyclerView.ViewHolder viewHolder) {
    }

    public abstract void c(View view, int r22, e8.b<Item> bVar, Item r42);
}
