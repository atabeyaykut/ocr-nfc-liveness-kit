package z1;

import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import t1.i;
import x9.l;

/* loaded from: classes.dex */
public final class a extends j implements l<d2.a, m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f19760a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l<d2.a, m> f19761b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(b bVar, i iVar) {
        super(1);
        this.f19760a = bVar;
        this.f19761b = iVar;
    }

    @Override // x9.l
    public final m invoke(d2.a aVar) {
        d2.a it = aVar;
        h.f(it, "it");
        b bVar = this.f19760a;
        RecyclerView.LayoutManager layoutManager = bVar.f19762a.getLayoutManager();
        bVar.f19767g = layoutManager != null ? layoutManager.onSaveInstanceState() : null;
        this.f19761b.invoke(it);
        return m.f9594a;
    }
}
