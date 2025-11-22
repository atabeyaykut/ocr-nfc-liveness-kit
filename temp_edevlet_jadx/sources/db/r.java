package db;

import cc.e0;
import ma.a1;

/* loaded from: classes2.dex */
public final class r extends kotlin.jvm.internal.j implements x9.l<ma.b, e0> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a1 f4805a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(a1 a1Var) {
        super(1);
        this.f4805a = a1Var;
    }

    @Override // x9.l
    public final e0 invoke(ma.b bVar) {
        ma.b it = bVar;
        kotlin.jvm.internal.h.f(it, "it");
        e0 type = it.g().get(this.f4805a.getIndex()).getType();
        kotlin.jvm.internal.h.e(type, "it.valueParameters[p.index].type");
        return type;
    }
}
