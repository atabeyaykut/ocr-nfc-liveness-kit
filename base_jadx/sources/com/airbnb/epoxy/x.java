package com.airbnb.epoxy;

import android.view.View;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.epoxy.p0;
import java.util.List;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes.dex */
public final class x extends RecyclerView.ViewHolder {

    /* renamed from: a, reason: collision with root package name */
    public u f2664a;

    /* renamed from: b, reason: collision with root package name */
    public List<Object> f2665b;

    /* renamed from: c, reason: collision with root package name */
    public s f2666c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final p0.b f2667d;

    /* renamed from: e, reason: collision with root package name */
    public ViewParent f2668e;

    public x(ViewParent viewParent, View view, boolean z10) {
        super(view);
        this.f2668e = viewParent;
        if (z10) {
            p0.b bVar = new p0.b();
            this.f2667d = bVar;
            View view2 = this.itemView;
            int id2 = view2.getId();
            if (view2.getId() == -1) {
                view2.setId(R.id.view_model_state_saving_id);
            }
            view2.saveHierarchyState(bVar);
            view2.setId(id2);
        }
    }

    public final void a() {
        if (this.f2664a == null) {
            throw new IllegalStateException("This holder is not currently bound.");
        }
    }

    @NonNull
    public final Object b() {
        s sVar = this.f2666c;
        return sVar != null ? sVar : this.itemView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ViewHolder
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("EpoxyViewHolder{epoxyModel=");
        sb2.append(this.f2664a);
        sb2.append(", view=");
        sb2.append(this.itemView);
        sb2.append(", super=");
        return android.support.v4.media.a.h(sb2, super.toString(), '}');
    }
}
