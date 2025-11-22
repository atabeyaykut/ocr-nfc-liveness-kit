package pa;

import bc.c;
import cc.a1;
import cc.c1;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class j implements x9.a<cc.m0> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ lb.f f12915a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f12916b;

    public j(k kVar, lb.f fVar) {
        this.f12916b = kVar;
        this.f12915a = fVar;
    }

    @Override // x9.a
    public final cc.m0 invoke() {
        a1.f2258b.getClass();
        a1 a1Var = a1.f2259c;
        c1 c1VarI = this.f12916b.i();
        List listEmptyList = Collections.emptyList();
        i iVar = new i(this);
        c.a NO_LOCKS = bc.c.f1191e;
        kotlin.jvm.internal.h.e(NO_LOCKS, "NO_LOCKS");
        return cc.f0.h(listEmptyList, new vb.h(NO_LOCKS, iVar), a1Var, c1VarI, false);
    }
}
