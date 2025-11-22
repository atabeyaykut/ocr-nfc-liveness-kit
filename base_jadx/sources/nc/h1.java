package nc;

import kotlinx.coroutines.internal.j;

/* loaded from: classes2.dex */
public final class h1 extends j.b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ g1 f10800d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f10801e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h1(kotlinx.coroutines.internal.j jVar, g1 g1Var, Object obj) {
        super(jVar);
        this.f10800d = g1Var;
        this.f10801e = obj;
    }

    @Override // kotlinx.coroutines.internal.c
    public final Object i(kotlinx.coroutines.internal.j jVar) {
        if (this.f10800d.S() == this.f10801e) {
            return null;
        }
        return b0.a.f1003b;
    }
}
