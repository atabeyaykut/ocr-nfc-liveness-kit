package j8;

import androidx.collection.ArraySet;
import androidx.recyclerview.widget.RecyclerView;
import e8.j;

/* loaded from: classes2.dex */
public final class c implements k8.a<j<? extends RecyclerView.ViewHolder>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ArraySet f8308a;

    public c(ArraySet arraySet) {
        this.f8308a = arraySet;
    }

    @Override // k8.a
    public final void a(e8.c cVar, j jVar, int r32) {
        if (jVar.a()) {
            this.f8308a.add(jVar);
        }
    }
}
