package e8;

import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.ArrayMap;
import androidx.recyclerview.widget.RecyclerView;
import c5.w;
import com.google.android.gms.internal.clearcut.d0;
import e8.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import tr.gov.turkiye.edevlet.kapisi.R;
import x9.r;

/* loaded from: classes2.dex */
public final class b<Item extends j<? extends RecyclerView.ViewHolder>> extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: o, reason: collision with root package name */
    public static final a f5142o = new a();

    /* renamed from: d, reason: collision with root package name */
    public int f5146d;

    /* renamed from: e, reason: collision with root package name */
    public LinkedList f5147e;

    /* renamed from: i, reason: collision with root package name */
    public r<? super View, ? super e8.c<Item>, ? super Item, ? super Integer, Boolean> f5150i;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList<e8.c<Item>> f5143a = new ArrayList<>();

    /* renamed from: b, reason: collision with root package name */
    public final k8.e f5144b = new k8.e();

    /* renamed from: c, reason: collision with root package name */
    public final SparseArray<e8.c<Item>> f5145c = new SparseArray<>();
    public final ArrayMap<Class<?>, e8.d<Item>> f = new ArrayMap<>();

    /* renamed from: g, reason: collision with root package name */
    public final boolean f5148g = true;

    /* renamed from: h, reason: collision with root package name */
    public final w f5149h = new w();

    /* renamed from: j, reason: collision with root package name */
    public final a6.a f5151j = new a6.a();

    /* renamed from: k, reason: collision with root package name */
    public final d0 f5152k = new d0();

    /* renamed from: l, reason: collision with root package name */
    public final d f5153l = new d();

    /* renamed from: m, reason: collision with root package name */
    public final e f5154m = new e();

    /* renamed from: n, reason: collision with root package name */
    public final f f5155n = new f();

    public static final class a {
        public static j a(RecyclerView.ViewHolder viewHolder) {
            View view;
            Object tag = (viewHolder == null || (view = viewHolder.itemView) == null) ? null : view.getTag(R.id.fastadapter_item);
            return (j) (tag instanceof j ? tag : null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static k8.i b(e8.c cVar, int r32, e8.f fVar, k8.a aVar) {
            if (!fVar.isExpanded()) {
                Iterator<T> it = fVar.b().iterator();
                while (it.hasNext()) {
                    n nVar = (n) it.next();
                    if (nVar == null) {
                        throw new NullPointerException("null cannot be cast to non-null type Item");
                    }
                    aVar.a(cVar, nVar, -1);
                    if (nVar instanceof e8.f) {
                        b.f5142o.getClass();
                        k8.i iVarB = b(cVar, r32, (e8.f) nVar, aVar);
                        if (((Boolean) iVarB.f8785a).booleanValue()) {
                            return iVarB;
                        }
                    }
                }
            }
            return new k8.i(Boolean.FALSE, null, null);
        }

        public static b c(f8.a aVar) {
            b<Item> bVar = new b<>();
            ArrayList<e8.c<Item>> arrayList = bVar.f5143a;
            int r22 = 0;
            arrayList.add(0, aVar);
            aVar.f(bVar);
            Iterator<e8.c<Item>> it = arrayList.iterator();
            while (it.hasNext()) {
                e8.c<Item> next = it.next();
                int r32 = r22 + 1;
                if (r22 < 0) {
                    b8.f.k0();
                    throw null;
                }
                next.b(r22);
                r22 = r32;
            }
            bVar.a();
            return bVar;
        }
    }

    /* renamed from: e8.b$b, reason: collision with other inner class name */
    public static final class C0077b<Item extends j<? extends RecyclerView.ViewHolder>> {

        /* renamed from: a, reason: collision with root package name */
        public e8.c<Item> f5156a;

        /* renamed from: b, reason: collision with root package name */
        public Item f5157b;
    }

    public static abstract class c<Item extends j<? extends RecyclerView.ViewHolder>> extends RecyclerView.ViewHolder {
        public c(View view) {
            super(view);
        }

        public abstract void a(Item r12, List<? extends Object> list);

        public abstract void b(Item r12);
    }

    public static final class d extends i8.a<Item> {
        @Override // i8.a
        public final void c(View v10, int r82, b<Item> bVar, Item r10) {
            e8.c<Item> cVarB;
            r<? super View, ? super e8.c<Item>, ? super Item, ? super Integer, Boolean> rVar;
            r<View, e8.c<Item>, Item, Integer, Boolean> rVarB;
            r<View, e8.c<Item>, Item, Integer, Boolean> rVarA;
            kotlin.jvm.internal.h.f(v10, "v");
            if (r10.isEnabled() && (cVarB = bVar.b(r82)) != null) {
                boolean z10 = r10 instanceof e8.e;
                e8.e eVar = (e8.e) (!z10 ? null : r10);
                if (eVar == null || (rVarA = eVar.a()) == null || !rVarA.invoke(v10, cVarB, r10, Integer.valueOf(r82)).booleanValue()) {
                    Iterator<e8.d<Item>> it = bVar.f.values().iterator();
                    while (it.hasNext()) {
                        it.next().d(v10, r82, bVar, r10);
                    }
                    e8.e eVar2 = (e8.e) (z10 ? r10 : null);
                    if ((eVar2 == null || (rVarB = eVar2.b()) == null || !rVarB.invoke(v10, cVarB, r10, Integer.valueOf(r82)).booleanValue()) && (rVar = bVar.f5150i) != null) {
                        rVar.invoke(v10, cVarB, r10, Integer.valueOf(r82)).booleanValue();
                    }
                }
            }
        }
    }

    public static final class e extends i8.e<Item> {
        @Override // i8.e
        public final boolean c(View v10, int r52, b<Item> bVar, Item r72) {
            kotlin.jvm.internal.h.f(v10, "v");
            if (r72.isEnabled() && bVar.b(r52) != null) {
                Iterator<e8.d<Item>> it = bVar.f.values().iterator();
                while (it.hasNext()) {
                    it.next().e(v10, r52, bVar, r72);
                }
            }
            return false;
        }
    }

    public static final class f extends i8.f<Item> {
        @Override // i8.f
        public final boolean c(View v10, MotionEvent event, int r42, b<Item> bVar, Item r6) {
            kotlin.jvm.internal.h.f(v10, "v");
            kotlin.jvm.internal.h.f(event, "event");
            Iterator<e8.d<Item>> it = bVar.f.values().iterator();
            while (it.hasNext()) {
                it.next().g(v10, event, bVar, r6);
            }
            return false;
        }
    }

    public b() {
        setHasStableIds(true);
    }

    public static void g(b bVar, int r32, int r42) {
        Iterator<e8.d<Item>> it = bVar.f.values().iterator();
        while (it.hasNext()) {
            it.next().c();
        }
        bVar.notifyItemRangeChanged(r32, r42);
    }

    public final void a() {
        SparseArray<e8.c<Item>> sparseArray = this.f5145c;
        sparseArray.clear();
        ArrayList<e8.c<Item>> arrayList = this.f5143a;
        Iterator<e8.c<Item>> it = arrayList.iterator();
        int r42 = 0;
        while (it.hasNext()) {
            e8.c<Item> next = it.next();
            if (next.c() > 0) {
                sparseArray.append(r42, next);
                r42 += next.c();
            }
        }
        if (r42 == 0 && arrayList.size() > 0) {
            sparseArray.append(0, arrayList.get(0));
        }
        this.f5146d = r42;
    }

    public final e8.c<Item> b(int r32) {
        if (r32 < 0 || r32 >= this.f5146d) {
            return null;
        }
        this.f5149h.getClass();
        SparseArray<e8.c<Item>> sparseArray = this.f5145c;
        f5142o.getClass();
        int r33 = sparseArray.indexOfKey(r32);
        if (r33 < 0) {
            r33 = (~r33) - 1;
        }
        return sparseArray.valueAt(r33);
    }

    public final Item c(int r42) {
        if (r42 < 0 || r42 >= this.f5146d) {
            return null;
        }
        SparseArray<e8.c<Item>> sparseArray = this.f5145c;
        f5142o.getClass();
        int r12 = sparseArray.indexOfKey(r42);
        if (r12 < 0) {
            r12 = (~r12) - 1;
        }
        return (Item) sparseArray.valueAt(r12).d(r42 - sparseArray.keyAt(r12));
    }

    public final int d(int r52) {
        if (this.f5146d == 0) {
            return 0;
        }
        ArrayList<e8.c<Item>> arrayList = this.f5143a;
        int r53 = Math.min(r52, arrayList.size());
        int r22 = 0;
        for (int r12 = 0; r12 < r53; r12++) {
            r22 += arrayList.get(r12).c();
        }
        return r22;
    }

    public final C0077b<Item> e(int r6) {
        Item r62;
        if (r6 < 0 || r6 >= this.f5146d) {
            return new C0077b<>();
        }
        C0077b<Item> c0077b = new C0077b<>();
        SparseArray<e8.c<Item>> sparseArray = this.f5145c;
        f5142o.getClass();
        int r22 = sparseArray.indexOfKey(r6);
        if (r22 < 0) {
            r22 = (~r22) - 1;
        }
        if (r22 != -1 && (r62 = (Item) sparseArray.valueAt(r22).a(r6 - sparseArray.keyAt(r22))) != null) {
            c0077b.f5157b = r62;
            c0077b.f5156a = sparseArray.valueAt(r22);
        }
        return c0077b;
    }

    public final void f() {
        Iterator<e8.d<Item>> it = this.f.values().iterator();
        while (it.hasNext()) {
            it.next().f();
        }
        a();
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f5146d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long getItemId(int r32) {
        j jVarC = c(r32);
        return jVarC != null ? jVarC.getIdentifier() : super.getItemId(r32);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int r52) {
        j jVarC = c(r52);
        if (jVarC == null) {
            return super.getItemViewType(r52);
        }
        jVarC.getType();
        k8.e eVar = this.f5144b;
        if (!(eVar.f8776a.indexOfKey(R.id.fastadapter_institution_city_item_id) >= 0)) {
            if (jVarC instanceof l) {
                jVarC.getType();
                l lVar = (l) jVarC;
                eVar.getClass();
                SparseArray<ItemVHFactory> sparseArray = eVar.f8776a;
                if (sparseArray.indexOfKey(R.id.fastadapter_institution_city_item_id) < 0) {
                    sparseArray.put(R.id.fastadapter_institution_city_item_id, lVar);
                }
            } else {
                jVarC.g();
            }
        }
        jVarC.getType();
        return R.id.fastadapter_institution_city_item_id;
    }

    public final void h(int r32, int r42) {
        Iterator<e8.d<Item>> it = this.f.values().iterator();
        while (it.hasNext()) {
            it.next().b();
        }
        a();
        notifyItemRangeInserted(r32, r42);
    }

    public final void i(int r32, int r42) {
        Iterator<e8.d<Item>> it = this.f.values().iterator();
        while (it.hasNext()) {
            it.next().i();
        }
        a();
        notifyItemRangeRemoved(r32, r42);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void j(k8.a aVar) {
        e8.c<Item> cVar;
        int r02 = this.f5146d;
        for (int r12 = 0; r12 < r02; r12++) {
            C0077b<Item> c0077bE = e(r12);
            Item r32 = c0077bE.f5157b;
            if (r32 != null && (cVar = c0077bE.f5156a) != null) {
                aVar.a(cVar, r32, r12);
                if (!(r32 instanceof e8.f)) {
                    r32 = null;
                }
                e8.f fVar = (e8.f) r32;
                if (fVar != null) {
                    f5142o.getClass();
                    ((Boolean) a.b(cVar, r12, fVar, aVar).f8785a).booleanValue();
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onAttachedToRecyclerView(RecyclerView recyclerView) {
        kotlin.jvm.internal.h.f(recyclerView, "recyclerView");
        this.f5149h.getClass();
        super.onAttachedToRecyclerView(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder holder, int r22) {
        kotlin.jvm.internal.h.f(holder, "holder");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder holder, int r52, List<? extends Object> payloads) {
        j jVarC;
        kotlin.jvm.internal.h.f(holder, "holder");
        kotlin.jvm.internal.h.f(payloads, "payloads");
        this.f5149h.getClass();
        holder.itemView.setTag(R.id.fastadapter_item_adapter, this);
        this.f5152k.getClass();
        f5142o.getClass();
        View view = holder.itemView;
        Object tag = view != null ? view.getTag(R.id.fastadapter_item_adapter) : null;
        if (!(tag instanceof b)) {
            tag = null;
        }
        b bVar = (b) tag;
        if (bVar != null && (jVarC = bVar.c(r52)) != null) {
            jVarC.j(holder, payloads);
            c cVar = (c) (holder instanceof c ? holder : null);
            if (cVar != 0) {
                cVar.a(jVarC, payloads);
            }
            holder.itemView.setTag(R.id.fastadapter_item, jVarC);
        }
        super.onBindViewHolder(holder, r52, payloads);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int r6) {
        List<i8.c<Item>> listA;
        kotlin.jvm.internal.h.f(parent, "parent");
        String message = "onCreateViewHolder: " + r6;
        this.f5149h.getClass();
        kotlin.jvm.internal.h.f(message, "message");
        Object obj = this.f5144b.f8776a.get(r6);
        kotlin.jvm.internal.h.e(obj, "typeInstances.get(type)");
        l lVar = (l) obj;
        a6.a aVar = this.f5151j;
        aVar.getClass();
        RecyclerView.ViewHolder viewHolderK = lVar.k(parent);
        viewHolderK.itemView.setTag(R.id.fastadapter_item_adapter, this);
        if (this.f5148g) {
            View view = viewHolderK.itemView;
            kotlin.jvm.internal.h.e(view, "holder.itemView");
            k8.f.a(this.f5153l, viewHolderK, view);
            View view2 = viewHolderK.itemView;
            kotlin.jvm.internal.h.e(view2, "holder.itemView");
            k8.f.a(this.f5154m, viewHolderK, view2);
            View view3 = viewHolderK.itemView;
            kotlin.jvm.internal.h.e(view3, "holder.itemView");
            k8.f.a(this.f5155n, viewHolderK, view3);
        }
        aVar.getClass();
        LinkedList linkedList = this.f5147e;
        if (linkedList == null) {
            linkedList = new LinkedList();
            this.f5147e = linkedList;
        }
        k8.f.b(viewHolderK, linkedList);
        if (!(lVar instanceof g)) {
            lVar = null;
        }
        g gVar = (g) lVar;
        if (gVar != null && (listA = gVar.a()) != null) {
            k8.f.b(viewHolderK, listA);
        }
        return viewHolderK;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        kotlin.jvm.internal.h.f(recyclerView, "recyclerView");
        this.f5149h.getClass();
        super.onDetachedFromRecyclerView(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final boolean onFailedToRecycleView(RecyclerView.ViewHolder holder) {
        kotlin.jvm.internal.h.f(holder, "holder");
        String message = "onFailedToRecycleView: " + holder.getItemViewType();
        this.f5149h.getClass();
        kotlin.jvm.internal.h.f(message, "message");
        holder.getAdapterPosition();
        this.f5152k.getClass();
        f5142o.getClass();
        j jVarA = a.a(holder);
        if (jVarA != null) {
            jVarA.d(holder);
            if (holder instanceof c) {
            }
        }
        return super.onFailedToRecycleView(holder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewAttachedToWindow(RecyclerView.ViewHolder holder) {
        kotlin.jvm.internal.h.f(holder, "holder");
        String message = "onViewAttachedToWindow: " + holder.getItemViewType();
        this.f5149h.getClass();
        kotlin.jvm.internal.h.f(message, "message");
        super.onViewAttachedToWindow(holder);
        int adapterPosition = holder.getAdapterPosition();
        this.f5152k.getClass();
        f5142o.getClass();
        View view = holder.itemView;
        Object tag = view != null ? view.getTag(R.id.fastadapter_item_adapter) : null;
        if (!(tag instanceof b)) {
            tag = null;
        }
        b bVar = (b) tag;
        j jVarC = bVar != null ? bVar.c(adapterPosition) : null;
        if (jVarC != null) {
            try {
                jVarC.c(holder);
                if (!(holder instanceof c)) {
                    holder = null;
                }
            } catch (AbstractMethodError e10) {
                Log.e("FastAdapter", e10.toString());
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewDetachedFromWindow(RecyclerView.ViewHolder holder) {
        kotlin.jvm.internal.h.f(holder, "holder");
        String message = "onViewDetachedFromWindow: " + holder.getItemViewType();
        this.f5149h.getClass();
        kotlin.jvm.internal.h.f(message, "message");
        super.onViewDetachedFromWindow(holder);
        holder.getAdapterPosition();
        this.f5152k.getClass();
        f5142o.getClass();
        j jVarA = a.a(holder);
        if (jVarA != null) {
            jVarA.l(holder);
            if (!(holder instanceof c)) {
                holder = null;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewRecycled(RecyclerView.ViewHolder holder) {
        kotlin.jvm.internal.h.f(holder, "holder");
        String message = "onViewRecycled: " + holder.getItemViewType();
        this.f5149h.getClass();
        kotlin.jvm.internal.h.f(message, "message");
        super.onViewRecycled(holder);
        holder.getAdapterPosition();
        this.f5152k.getClass();
        f5142o.getClass();
        j jVarA = a.a(holder);
        if (jVarA == null) {
            Log.e("FastAdapter", "The bindView method of this item should set the `Tag` on its itemView (https://github.com/mikepenz/FastAdapter/blob/develop/library-core/src/main/java/com/mikepenz/fastadapter/items/AbstractItem.kt#L22)");
            return;
        }
        jVarA.f(holder);
        c cVar = (c) (!(holder instanceof c) ? null : holder);
        if (cVar != 0) {
            cVar.b(jVarA);
        }
        holder.itemView.setTag(R.id.fastadapter_item, null);
        holder.itemView.setTag(R.id.fastadapter_item_adapter, null);
    }
}
