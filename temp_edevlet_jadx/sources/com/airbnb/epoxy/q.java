package com.airbnb.epoxy;

import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.epoxy.d;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class q extends e implements d.c {

    /* renamed from: k, reason: collision with root package name */
    public static final a f2608k = new a();
    public final h0 f;

    /* renamed from: g, reason: collision with root package name */
    public final d f2609g;

    /* renamed from: h, reason: collision with root package name */
    public final p f2610h;

    /* renamed from: i, reason: collision with root package name */
    public int f2611i;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f2612j;

    public class a extends DiffUtil.ItemCallback<u<?>> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public final boolean areContentsTheSame(u<?> uVar, u<?> uVar2) {
            return uVar.equals(uVar2);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public final boolean areItemsTheSame(u<?> uVar, u<?> uVar2) {
            return uVar.id() == uVar2.id();
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public final Object getChangePayload(u<?> uVar, u<?> uVar2) {
            return new l(uVar);
        }
    }

    public q(@NonNull p pVar, Handler handler) {
        h0 h0Var = new h0();
        this.f = h0Var;
        this.f2612j = new ArrayList();
        this.f2610h = pVar;
        this.f2609g = new d(handler, this, f2608k);
        registerAdapterDataObserver(h0Var);
    }

    @Override // com.airbnb.epoxy.e
    @NonNull
    public final List<? extends u<?>> a() {
        return this.f2609g.f;
    }

    @Override // com.airbnb.epoxy.e
    public final void d(@NonNull RuntimeException runtimeException) {
        this.f2610h.onExceptionSwallowed(runtimeException);
    }

    @Override // com.airbnb.epoxy.e
    public final void e(@NonNull x xVar, @NonNull u<?> uVar, int r42, @Nullable u<?> uVar2) {
        this.f2610h.onModelBound(xVar, uVar, r42, uVar2);
    }

    @Override // com.airbnb.epoxy.e
    public final void f(@NonNull x xVar, @NonNull u<?> uVar) {
        this.f2610h.onModelUnbound(xVar, uVar);
    }

    @Override // com.airbnb.epoxy.e, androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public final void onViewAttachedToWindow(@NonNull x xVar) {
        super.onViewAttachedToWindow(xVar);
        xVar.a();
        this.f2610h.onViewAttachedToWindow(xVar, xVar.f2664a);
    }

    @Override // com.airbnb.epoxy.e, androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f2611i;
    }

    @Override // com.airbnb.epoxy.e, androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public final void onViewDetachedFromWindow(@NonNull x xVar) {
        super.onViewDetachedFromWindow(xVar);
        xVar.a();
        this.f2610h.onViewDetachedFromWindow(xVar, xVar.f2664a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onAttachedToRecyclerView(@NonNull RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.f2610h.onAttachedToRecyclerViewInternal(recyclerView);
    }

    @Override // com.airbnb.epoxy.e, androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onDetachedFromRecyclerView(@NonNull RecyclerView recyclerView) {
        super.onDetachedFromRecyclerView(recyclerView);
        this.f2610h.onDetachedFromRecyclerViewInternal(recyclerView);
    }
}
