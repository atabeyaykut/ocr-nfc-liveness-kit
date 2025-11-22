package t1;

import java.util.List;

/* loaded from: classes.dex */
public final class m extends kotlin.jvm.internal.j implements x9.l<w, w> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ List<d2.b> f15538a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(List<d2.b> list) {
        super(1);
        this.f15538a = list;
    }

    @Override // x9.l
    public final w invoke(w wVar) {
        w setState = wVar;
        kotlin.jvm.internal.h.f(setState, "$this$setState");
        Object obj = this.f15538a;
        if (obj == null) {
            obj = m9.v.f10173a;
        }
        return w.a(setState, new c2.c(obj), null, 95);
    }
}
