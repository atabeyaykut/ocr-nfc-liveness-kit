package qb;

import cc.e0;
import cc.m0;
import ma.b0;

/* loaded from: classes2.dex */
public final class v extends q {
    public v(short s7) {
        super(Short.valueOf(s7));
    }

    @Override // qb.g
    public final e0 a(b0 module) {
        kotlin.jvm.internal.h.f(module, "module");
        ja.k kVarM = module.m();
        kVarM.getClass();
        m0 m0VarS = kVarM.s(ja.l.SHORT);
        if (m0VarS != null) {
            return m0VarS;
        }
        ja.k.a(57);
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // qb.g
    public final String toString() {
        return ((Number) this.f13469a).intValue() + ".toShort()";
    }
}
