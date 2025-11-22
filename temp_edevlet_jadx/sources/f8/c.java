package f8;

import androidx.recyclerview.widget.RecyclerView;
import e8.h;
import e8.j;
import e8.k;
import java.util.ArrayList;
import java.util.Iterator;
import k8.d;
import x9.l;

/* loaded from: classes2.dex */
public class c<Model, Item extends j<? extends RecyclerView.ViewHolder>> extends e8.a<Item> {

    /* renamed from: d, reason: collision with root package name */
    public final k8.b f5545d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f5546e;
    public final b<Model, Item> f;

    /* renamed from: h, reason: collision with root package name */
    public final l<? super Model, ? extends Item> f5548h;

    /* renamed from: g, reason: collision with root package name */
    public final k<Item> f5547g = new d(0);

    /* renamed from: c, reason: collision with root package name */
    public final boolean f5544c = true;

    public c(l<? super Model, ? extends Item> lVar) {
        this.f5548h = lVar;
        k8.b bVar = h.f5158a;
        if (bVar == null) {
            throw new NullPointerException("null cannot be cast to non-null type com.mikepenz.fastadapter.IIdDistributor<Item>");
        }
        this.f5545d = bVar;
        this.f5546e = true;
        this.f = new b<>(this);
    }

    @Override // e8.c
    public final int c() {
        if (this.f5544c) {
            return this.f5547g.size();
        }
        return 0;
    }

    @Override // e8.c
    public final Item d(int r22) {
        Item r23 = (Item) this.f5547g.get(r22);
        if (r23 != null) {
            return r23;
        }
        throw new RuntimeException("A normal ModelAdapter does not allow null items.");
    }

    public final void e(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Item r12 = this.f5548h.invoke(it.next());
            if (r12 != null) {
                arrayList2.add(r12);
            }
        }
        if (this.f5546e) {
            this.f5545d.a(arrayList2);
        }
        e8.b<Item> bVar = this.f5140a;
        this.f5547g.b(bVar != null ? bVar.d(this.f5141b) : 0, arrayList2);
    }

    public final void f(e8.b<Item> bVar) {
        k<Item> kVar = this.f5547g;
        if (kVar instanceof k8.c) {
            if (kVar == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.mikepenz.fastadapter.utils.DefaultItemList<Item>");
            }
            ((k8.c) kVar).f8773a = bVar;
        }
        this.f5140a = bVar;
    }
}
