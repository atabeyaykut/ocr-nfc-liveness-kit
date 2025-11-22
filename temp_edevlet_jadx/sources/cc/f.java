package cc;

import cc.b1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public final class f extends kotlin.jvm.internal.j implements x9.l<b1.a, l9.m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ List<fc.i> f2292a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b1 f2293b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ fc.n f2294c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ fc.i f2295d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(ArrayList arrayList, b1 b1Var, fc.n nVar, fc.i iVar) {
        super(1);
        this.f2292a = arrayList;
        this.f2293b = b1Var;
        this.f2294c = nVar;
        this.f2295d = iVar;
    }

    @Override // x9.l
    public final l9.m invoke(b1.a aVar) {
        b1.a runForkingPoint = aVar;
        kotlin.jvm.internal.h.f(runForkingPoint, "$this$runForkingPoint");
        Iterator<fc.i> it = this.f2292a.iterator();
        while (it.hasNext()) {
            runForkingPoint.a(new e(this.f2293b, this.f2294c, it.next(), this.f2295d));
        }
        return l9.m.f9594a;
    }
}
