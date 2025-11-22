package e8;

import androidx.recyclerview.widget.RecyclerView;
import e8.j;

/* loaded from: classes2.dex */
public abstract class a<Item extends j<? extends RecyclerView.ViewHolder>> implements c<Item> {

    /* renamed from: a, reason: collision with root package name */
    public b<Item> f5140a;

    /* renamed from: b, reason: collision with root package name */
    public int f5141b = -1;

    @Override // e8.c
    public final Item a(int r22) {
        return (Item) ((f8.c) this).d(r22);
    }

    @Override // e8.c
    public final void b(int r12) {
        this.f5141b = r12;
    }
}
