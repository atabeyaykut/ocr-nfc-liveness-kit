package eb;

import eb.d;
import eb.s;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class e implements s.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d<Object, d.a<Object>> f5187a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList<Object> f5188b;

    public e(d<Object, d.a<Object>> dVar, ArrayList<Object> arrayList) {
        this.f5187a = dVar;
        this.f5188b = arrayList;
    }

    @Override // eb.s.c
    public final void a() {
    }

    @Override // eb.s.c
    public final s.a b(lb.b bVar, ra.b bVar2) {
        return this.f5187a.r(bVar, bVar2, this.f5188b);
    }
}
