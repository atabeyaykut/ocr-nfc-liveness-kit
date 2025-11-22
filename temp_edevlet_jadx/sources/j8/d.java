package j8;

import android.view.MotionEvent;
import android.view.View;
import androidx.collection.ArraySet;
import androidx.recyclerview.widget.RecyclerView;
import e8.b;
import e8.j;
import e8.m;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.h;

/* loaded from: classes2.dex */
public final class d<Item extends j<? extends RecyclerView.ViewHolder>> implements e8.d<Item> {

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ int f8309g = 0;

    /* renamed from: a, reason: collision with root package name */
    public boolean f8310a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f8311b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f8312c = true;

    /* renamed from: d, reason: collision with root package name */
    public boolean f8313d;

    /* renamed from: e, reason: collision with root package name */
    public m<Item> f8314e;
    public final e8.b<Item> f;

    static {
        g8.b.f5953a.put(d.class, new e());
    }

    public d(e8.b<Item> bVar) {
        this.f = bVar;
    }

    public static void l(d dVar, int r42) {
        e8.b<Item> bVar = dVar.f;
        b.C0077b<Item> c0077bE = bVar.e(r42);
        Item r22 = c0077bE.f5157b;
        if (r22 == null || c0077bE.f5156a == null) {
            return;
        }
        r22.e(true);
        bVar.notifyItemChanged(r42);
        m<Item> mVar = dVar.f8314e;
        if (mVar != null) {
            mVar.a(r22, true);
        }
    }

    @Override // e8.d
    public final void a(List list) {
    }

    @Override // e8.d
    public final void b() {
    }

    @Override // e8.d
    public final void c() {
    }

    @Override // e8.d
    public final void d(View v10, int r22, e8.b bVar, j jVar) {
        h.f(v10, "v");
        if (this.f8311b || !this.f8313d) {
            return;
        }
        k(v10, jVar, r22);
    }

    @Override // e8.d
    public final void e(View v10, int r22, e8.b bVar, j jVar) {
        h.f(v10, "v");
        if (this.f8311b && this.f8313d) {
            k(v10, jVar, r22);
        }
    }

    @Override // e8.d
    public final void f() {
    }

    @Override // e8.d
    public final void g(View v10, MotionEvent event, e8.b bVar, j jVar) {
        h.f(v10, "v");
        h.f(event, "event");
    }

    @Override // e8.d
    public final void h() {
    }

    @Override // e8.d
    public final void i() {
    }

    public final void j(Item r22, int r32, Iterator<Integer> it) {
        r22.e(false);
        if (it != null) {
            it.remove();
        }
        if (r32 >= 0) {
            this.f.notifyItemChanged(r32);
        }
        m<Item> mVar = this.f8314e;
        if (mVar != null) {
            mVar.a(r22, false);
        }
    }

    public final void k(View view, Item r52, int r6) {
        if (r52.h()) {
            if (!r52.a() || this.f8312c) {
                boolean zA = r52.a();
                e8.b<Item> bVar = this.f;
                if (view == null) {
                    if (!this.f8310a) {
                        bVar.j(new a(this));
                        bVar.notifyDataSetChanged();
                    }
                    if (!zA) {
                        l(this, r6);
                        return;
                    }
                    j jVarC = bVar.c(r6);
                    if (jVarC != null) {
                        j(jVarC, r6, null);
                        return;
                    }
                    return;
                }
                if (!this.f8310a) {
                    ArraySet arraySet = new ArraySet();
                    bVar.j(new c(arraySet));
                    arraySet.remove(r52);
                    bVar.j(new b(this, arraySet));
                }
                boolean z10 = !zA;
                r52.e(z10);
                view.setSelected(z10);
                m<Item> mVar = this.f8314e;
                if (mVar != null) {
                    mVar.a(r52, z10);
                }
            }
        }
    }
}
