package k8;

import androidx.recyclerview.widget.RecyclerView;
import e8.j;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class d<Item extends j<? extends RecyclerView.ViewHolder>> extends c<Item> {

    /* renamed from: c, reason: collision with root package name */
    public final List<Item> f8775c = new ArrayList();

    public d(int r12) {
    }

    @Override // e8.k
    public final void a(List list, int r6) {
        int size = list.size();
        List<Item> list2 = this.f8775c;
        int size2 = list2.size();
        if (list != list2) {
            if (!list2.isEmpty()) {
                list2.clear();
            }
            list2.addAll(list);
        }
        e8.b<Item> bVar = this.f8774b ? this.f8773a : null;
        if (bVar != null) {
            if (size > size2) {
                if (size2 > 0) {
                    e8.b.g(bVar, r6, size2);
                }
                bVar.h(r6 + size2, size - size2);
                return;
            }
            if (size > 0) {
                e8.b.g(bVar, r6, size);
                if (size >= size2) {
                    return;
                }
                r6 += size;
                size2 -= size;
            } else if (size != 0) {
                bVar.f();
                return;
            }
            bVar.i(r6, size2);
        }
    }

    @Override // e8.k
    public final void b(int r32, ArrayList arrayList) {
        List<Item> list = this.f8775c;
        int size = list.size();
        list.addAll(arrayList);
        e8.b<Item> bVar = this.f8774b ? this.f8773a : null;
        if (bVar != null) {
            bVar.h(r32 + size, arrayList.size());
        }
    }

    @Override // e8.k
    public final List<Item> c() {
        return this.f8775c;
    }

    @Override // e8.k
    public final Item get(int r22) {
        return this.f8775c.get(r22);
    }

    @Override // e8.k
    public final int size() {
        return this.f8775c.size();
    }
}
