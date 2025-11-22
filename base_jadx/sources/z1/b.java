package z1;

import android.content.Context;
import android.os.Parcelable;
import androidx.recyclerview.widget.AsyncListDiffer;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.h;
import s1.c;
import s1.g;
import t1.d;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final RecyclerView f19762a;

    /* renamed from: b, reason: collision with root package name */
    public final d f19763b;

    /* renamed from: c, reason: collision with root package name */
    public GridLayoutManager f19764c;

    /* renamed from: d, reason: collision with root package name */
    public e2.a f19765d;

    /* renamed from: e, reason: collision with root package name */
    public g f19766e;
    public c f;

    /* renamed from: g, reason: collision with root package name */
    public Parcelable f19767g;

    /* renamed from: h, reason: collision with root package name */
    public int f19768h;

    /* renamed from: i, reason: collision with root package name */
    public int f19769i;

    public b(RecyclerView recyclerView, d config, int r42) {
        h.f(config, "config");
        this.f19762a = recyclerView;
        this.f19763b = config;
        a(r42);
    }

    public final void a(int r42) {
        this.f19768h = r42 == 1 ? 3 : 5;
        this.f19769i = r42 == 1 ? 2 : 4;
        int r43 = this.f19763b.f15505h && d() ? this.f19769i : this.f19768h;
        GridLayoutManager gridLayoutManager = new GridLayoutManager(b(), r43);
        this.f19764c = gridLayoutManager;
        RecyclerView recyclerView = this.f19762a;
        recyclerView.setLayoutManager(gridLayoutManager);
        recyclerView.setHasFixedSize(true);
        g(r43);
    }

    public final Context b() {
        Context context = this.f19762a.getContext();
        h.e(context, "recyclerView.context");
        return context;
    }

    public final ArrayList c() {
        g gVar = this.f19766e;
        if (gVar == null) {
            throw new IllegalStateException("Must call setupAdapters first!".toString());
        }
        if (gVar != null) {
            return gVar.f14846e;
        }
        h.n("imageAdapter");
        throw null;
    }

    public final boolean d() {
        RecyclerView recyclerView = this.f19762a;
        return recyclerView.getAdapter() == null || (recyclerView.getAdapter() instanceof c);
    }

    public final void e(List<d2.a> list) {
        c cVar = this.f;
        if (cVar == null) {
            h.n("folderAdapter");
            throw null;
        }
        if (list != null) {
            ArrayList arrayList = cVar.f14830d;
            arrayList.clear();
            arrayList.addAll(list);
        }
        cVar.notifyDataSetChanged();
        g(this.f19769i);
        c cVar2 = this.f;
        if (cVar2 == null) {
            h.n("folderAdapter");
            throw null;
        }
        RecyclerView recyclerView = this.f19762a;
        recyclerView.setAdapter(cVar2);
        if (this.f19767g != null) {
            GridLayoutManager gridLayoutManager = this.f19764c;
            h.c(gridLayoutManager);
            gridLayoutManager.setSpanCount(this.f19769i);
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            h.c(layoutManager);
            layoutManager.onRestoreInstanceState(this.f19767g);
        }
    }

    public final void f(List<d2.b> images) {
        h.f(images, "images");
        g gVar = this.f19766e;
        if (gVar == null) {
            h.n("imageAdapter");
            throw null;
        }
        ((AsyncListDiffer) gVar.f14845d.getValue()).submitList(images);
        g(this.f19768h);
        g gVar2 = this.f19766e;
        if (gVar2 != null) {
            this.f19762a.setAdapter(gVar2);
        } else {
            h.n("imageAdapter");
            throw null;
        }
    }

    public final void g(int r52) {
        e2.a aVar = this.f19765d;
        RecyclerView recyclerView = this.f19762a;
        if (aVar != null) {
            recyclerView.removeItemDecoration(aVar);
        }
        e2.a aVar2 = new e2.a(r52, b().getResources().getDimensionPixelSize(R.dimen.ef_item_padding));
        this.f19765d = aVar2;
        recyclerView.addItemDecoration(aVar2);
        GridLayoutManager gridLayoutManager = this.f19764c;
        if (gridLayoutManager == null) {
            return;
        }
        gridLayoutManager.setSpanCount(r52);
    }
}
