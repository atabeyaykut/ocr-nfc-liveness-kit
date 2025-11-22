package qb;

import cc.e0;
import cc.m0;
import ma.b0;

/* loaded from: classes2.dex */
public final class k extends g<l9.g<? extends lb.b, ? extends lb.f>> {

    /* renamed from: b, reason: collision with root package name */
    public final lb.b f13472b;

    /* renamed from: c, reason: collision with root package name */
    public final lb.f f13473c;

    public k(lb.b bVar, lb.f fVar) {
        super(new l9.g(bVar, fVar));
        this.f13472b = bVar;
        this.f13473c = fVar;
    }

    @Override // qb.g
    public final e0 a(b0 module) {
        kotlin.jvm.internal.h.f(module, "module");
        lb.b bVar = this.f13472b;
        ma.e eVarA = ma.t.a(module, bVar);
        m0 m0VarQ = null;
        if (eVarA != null) {
            if (!ob.i.n(eVarA, 3)) {
                eVarA = null;
            }
            if (eVarA != null) {
                m0VarQ = eVarA.q();
            }
        }
        if (m0VarQ != null) {
            return m0VarQ;
        }
        ec.h hVar = ec.h.ERROR_ENUM_TYPE;
        String string = bVar.toString();
        kotlin.jvm.internal.h.e(string, "enumClassId.toString()");
        String str = this.f13473c.f9676a;
        kotlin.jvm.internal.h.e(str, "enumEntryName.toString()");
        return ec.i.c(hVar, string, str);
    }

    @Override // qb.g
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f13472b.j());
        sb2.append('.');
        sb2.append(this.f13473c);
        return sb2.toString();
    }
}
