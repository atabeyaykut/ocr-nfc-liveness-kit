package t1;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class q extends kotlin.jvm.internal.j implements x9.l<w, w> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f15543a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ List<d2.b> f15544b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List<d2.a> f15545c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(d dVar, ArrayList arrayList, List list) {
        super(1);
        this.f15543a = dVar;
        this.f15544b = arrayList;
        this.f15545c = list;
    }

    @Override // x9.l
    public final w invoke(w wVar) {
        w setState = wVar;
        kotlin.jvm.internal.h.f(setState, "$this$setState");
        return new w(this.f15544b, this.f15545c, new c2.c(Boolean.valueOf(this.f15543a.f15505h)), false, null, 112);
    }
}
