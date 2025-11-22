package j8;

import androidx.collection.ArraySet;
import androidx.recyclerview.widget.RecyclerView;
import e8.j;
import java.util.Set;

/* loaded from: classes2.dex */
public final class b implements k8.a<j<? extends RecyclerView.ViewHolder>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f8306a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Set f8307b;

    public b(d dVar, ArraySet arraySet) {
        this.f8306a = dVar;
        this.f8307b = arraySet;
    }

    @Override // k8.a
    public final void a(e8.c cVar, j jVar, int r42) {
        if (this.f8307b.contains(jVar)) {
            this.f8306a.j(jVar, r42, null);
        }
    }
}
