package ja;

import pa.g0;

/* loaded from: classes2.dex */
public final class i implements x9.l<lb.f, ma.e> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k f8323a;

    public i(k kVar) {
        this.f8323a = kVar;
    }

    @Override // x9.l
    public final ma.e invoke(lb.f fVar) {
        lb.f fVar2 = fVar;
        g0 g0VarL = this.f8323a.l();
        lb.c cVar = o.f8364k;
        vb.i iVarO = g0VarL.I0(cVar).o();
        if (iVarO == null) {
            k.a(11);
            throw null;
        }
        ma.g gVarE = iVarO.e(fVar2, ua.c.FROM_BUILTINS);
        if (gVarE == null) {
            throw new AssertionError("Built-in class " + cVar.c(fVar2) + " is not found");
        }
        if (gVarE instanceof ma.e) {
            return (ma.e) gVarE;
        }
        throw new AssertionError("Must be a class descriptor " + fVar2 + ", but was " + gVarE);
    }
}
