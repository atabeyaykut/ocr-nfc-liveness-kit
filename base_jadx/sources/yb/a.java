package yb;

import java.io.InputStream;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.a;

/* loaded from: classes2.dex */
public final class a extends kotlin.jvm.internal.j implements x9.l<lb.c, ma.e0> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f19373a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(b bVar) {
        super(1);
        this.f19373a = bVar;
    }

    @Override // x9.l
    public final ma.e0 invoke(lb.c cVar) {
        lb.c fqName = cVar;
        kotlin.jvm.internal.h.f(fqName, "fqName");
        b bVar = this.f19373a;
        la.t tVar = (la.t) bVar;
        tVar.getClass();
        InputStream inputStreamC = tVar.f19378b.c(fqName);
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.a aVarA = inputStreamC != null ? a.C0169a.a(fqName, tVar.f19377a, tVar.f19379c, inputStreamC, false) : null;
        if (aVarA == null) {
            return null;
        }
        l lVar = bVar.f19380d;
        if (lVar != null) {
            aVarA.K0(lVar);
            return aVarA;
        }
        kotlin.jvm.internal.h.n("components");
        throw null;
    }
}
