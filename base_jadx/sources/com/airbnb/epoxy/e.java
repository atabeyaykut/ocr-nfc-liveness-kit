package com.airbnb.epoxy;

import android.view.ViewGroup;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class e extends RecyclerView.Adapter<x> {

    /* renamed from: a, reason: collision with root package name */
    public int f2556a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final q0 f2557b = new q0();

    /* renamed from: c, reason: collision with root package name */
    public final f f2558c = new f();

    /* renamed from: d, reason: collision with root package name */
    public p0 f2559d = new p0();

    /* renamed from: e, reason: collision with root package name */
    public final a f2560e;

    public class a extends GridLayoutManager.SpanSizeLookup {
        public a() {
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public final int getSpanSize(int r52) {
            e eVar = e.this;
            try {
                return eVar.b(r52).spanSize(eVar.f2556a, r52, eVar.getItemCount());
            } catch (IndexOutOfBoundsException e10) {
                eVar.d(e10);
                return 1;
            }
        }
    }

    public e() {
        a aVar = new a();
        this.f2560e = aVar;
        setHasStableIds(true);
        aVar.setSpanIndexCacheEnabled(true);
    }

    public abstract List<? extends u<?>> a();

    public u<?> b(int r22) {
        return a().get(r22);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003f  */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onBindViewHolder(com.airbnb.epoxy.x r11, int r12, java.util.List<java.lang.Object> r13) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.epoxy.e.onBindViewHolder(com.airbnb.epoxy.x, int, java.util.List):void");
    }

    public void d(RuntimeException runtimeException) {
    }

    public void e(x xVar, u<?> uVar, int r32, @Nullable u<?> uVar2) {
    }

    public void f(x xVar, u<?> uVar) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    /* renamed from: g */
    public void onViewAttachedToWindow(x xVar) {
        xVar.a();
        xVar.f2664a.onViewAttachedToWindow(xVar.b());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return a().size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long getItemId(int r32) {
        return a().get(r32).id();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int r22) {
        u<?> uVarB = b(r22);
        this.f2557b.f2614a = uVarB;
        return q0.a(uVarB);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    /* renamed from: h */
    public void onViewDetachedFromWindow(x xVar) {
        xVar.a();
        xVar.f2664a.onViewDetachedFromWindow(xVar.b());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int r32) {
        onBindViewHolder((x) viewHolder, r32, Collections.emptyList());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int r52) {
        u<?> uVar;
        q0 q0Var = this.f2557b;
        u<?> uVar2 = q0Var.f2614a;
        if (uVar2 == null || q0.a(uVar2) != r52) {
            d(new IllegalStateException("Last model did not match expected view type"));
            Iterator<? extends u<?>> it = a().iterator();
            while (true) {
                if (it.hasNext()) {
                    u<?> next = it.next();
                    if (q0.a(next) == r52) {
                        uVar = next;
                        break;
                    }
                } else {
                    a0 a0Var = new a0();
                    if (r52 != a0Var.getViewType()) {
                        throw new IllegalStateException(android.support.v4.media.a.d("Could not find model for view type: ", r52));
                    }
                    uVar = a0Var;
                }
            }
        } else {
            uVar = q0Var.f2614a;
        }
        return new x(viewGroup, uVar.buildView(viewGroup), uVar.shouldSaveViewState());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onDetachedFromRecyclerView(@NonNull RecyclerView recyclerView) {
        this.f2557b.f2614a = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public final boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
        x xVar = (x) viewHolder;
        xVar.a();
        return xVar.f2664a.onFailedToRecycleView(xVar.b());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
        x xVar = (x) viewHolder;
        this.f2559d.b(xVar);
        this.f2558c.f2564a.remove(xVar.getItemId());
        xVar.a();
        u<?> uVar = xVar.f2664a;
        xVar.a();
        xVar.f2664a.unbind(xVar.b());
        xVar.f2664a = null;
        f(xVar, uVar);
    }
}
