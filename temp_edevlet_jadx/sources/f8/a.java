package f8;

import androidx.recyclerview.widget.RecyclerView;
import e8.j;
import k8.g;
import k8.h;
import kotlin.jvm.internal.z;

/* loaded from: classes2.dex */
public final class a<Item extends j<? extends RecyclerView.ViewHolder>> extends c<Item, Item> {
    /* JADX WARN: Illegal instructions before constructor call */
    public a() {
        g gVar = h.f8784a;
        if (gVar == null) {
            throw new NullPointerException("null cannot be cast to non-null type (element: Item) -> Item?");
        }
        z.c(1, gVar);
        super(gVar);
    }
}
