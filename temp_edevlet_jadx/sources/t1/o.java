package t1;

import java.util.List;

/* loaded from: classes.dex */
public final class o extends kotlin.jvm.internal.j implements x9.l<List<? extends d2.b>, l9.m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c6.a f15540a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ u f15541b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(d dVar, u uVar) {
        super(1);
        this.f15540a = dVar;
        this.f15541b = uVar;
    }

    @Override // x9.l
    public final l9.m invoke(List<? extends d2.b> list) {
        int r02;
        List<? extends d2.b> list2 = list;
        c6.a aVar = this.f15540a;
        kotlin.jvm.internal.h.c(aVar);
        boolean z10 = (aVar instanceof v1.a) || (r02 = aVar.m()) == 2 || r02 == 3;
        u uVar = this.f15541b;
        if (z10) {
            uVar.a(new m(list2));
        } else {
            uVar.a(n.f15539a);
        }
        return l9.m.f9594a;
    }
}
