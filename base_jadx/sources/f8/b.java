package f8;

import android.widget.Filter;
import androidx.recyclerview.widget.RecyclerView;
import e8.j;
import e8.k;
import i8.d;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.h;
import x9.p;

/* loaded from: classes2.dex */
public final class b<Model, Item extends j<? extends RecyclerView.ViewHolder>> extends Filter {

    /* renamed from: a, reason: collision with root package name */
    public ArrayList f5540a;

    /* renamed from: b, reason: collision with root package name */
    public d<Item> f5541b;

    /* renamed from: c, reason: collision with root package name */
    public p<? super Item, ? super CharSequence, Boolean> f5542c;

    /* renamed from: d, reason: collision with root package name */
    public final c<Model, Item> f5543d;

    public b(c<Model, Item> itemAdapter) {
        h.f(itemAdapter, "itemAdapter");
        this.f5543d = itemAdapter;
    }

    @Override // android.widget.Filter
    public final Filter.FilterResults performFiltering(CharSequence charSequence) {
        List<Item> listC;
        Filter.FilterResults filterResults = new Filter.FilterResults();
        boolean z10 = true;
        if (this.f5540a == null) {
            if (charSequence == null || charSequence.length() == 0) {
                return filterResults;
            }
        }
        c<Model, Item> cVar = this.f5543d;
        e8.b<Item> bVar = cVar.f5140a;
        if (bVar != null) {
            Collection<e8.d<Item>> collectionValues = bVar.f.values();
            h.e(collectionValues, "extensionsCache.values");
            Iterator<T> it = collectionValues.iterator();
            while (it.hasNext()) {
                ((e8.d) it.next()).h();
            }
        }
        ArrayList arrayList = this.f5540a;
        k<Item> kVar = cVar.f5547g;
        if (arrayList == null) {
            arrayList = new ArrayList(kVar.c());
            this.f5540a = arrayList;
        }
        if (charSequence != null && charSequence.length() != 0) {
            z10 = false;
        }
        if (z10) {
            filterResults.values = arrayList;
            filterResults.count = arrayList.size();
            this.f5540a = null;
            d<Item> dVar = this.f5541b;
            if (dVar != null) {
                dVar.r();
            }
        } else {
            p<? super Item, ? super CharSequence, Boolean> pVar = this.f5542c;
            if (pVar != null) {
                listC = new ArrayList();
                for (Object obj : arrayList) {
                    if (pVar.mo7invoke((j) obj, charSequence).booleanValue()) {
                        listC.add(obj);
                    }
                }
            } else {
                listC = kVar.c();
            }
            filterResults.values = listC;
            filterResults.count = listC.size();
        }
        return filterResults;
    }

    @Override // android.widget.Filter
    public final void publishResults(CharSequence charSequence, Filter.FilterResults results) {
        d<Item> dVar;
        h.f(results, "results");
        Object obj = results.values;
        if (obj != null) {
            List<Object> list = (List) obj;
            c<Model, Item> cVar = this.f5543d;
            cVar.getClass();
            if (cVar.f5546e) {
                cVar.f5545d.a(list);
            }
            e8.b<Item> bVar = cVar.f5140a;
            if (bVar != null) {
                Collection<e8.d<Item>> collectionValues = bVar.f.values();
                h.e(collectionValues, "extensionsCache.values");
                Iterator<T> it = collectionValues.iterator();
                while (it.hasNext()) {
                    ((e8.d) it.next()).a(list);
                }
            }
            e8.b<Item> bVar2 = cVar.f5140a;
            cVar.f5547g.a(list, bVar2 != null ? bVar2.d(cVar.f5141b) : 0);
        }
        if (this.f5540a == null || (dVar = this.f5541b) == null) {
            return;
        }
        Object obj2 = results.values;
        if (obj2 == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.List<Item>");
        }
        dVar.y();
    }
}
