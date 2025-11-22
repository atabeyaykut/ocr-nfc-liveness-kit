package qb;

import cc.e0;
import cc.m0;
import ma.b0;

/* loaded from: classes2.dex */
public final class t extends q {
    public t(long j10) {
        super(Long.valueOf(j10));
    }

    @Override // qb.g
    public final e0 a(b0 module) {
        kotlin.jvm.internal.h.f(module, "module");
        ja.k kVarM = module.m();
        kVarM.getClass();
        m0 m0VarS = kVarM.s(ja.l.LONG);
        if (m0VarS != null) {
            return m0VarS;
        }
        ja.k.a(59);
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // qb.g
    public final String toString() {
        return ((Number) this.f13469a).longValue() + ".toLong()";
    }
}
