package qb;

import cc.e0;
import cc.m0;
import ja.o;
import ma.b0;

/* loaded from: classes2.dex */
public final class x extends q {
    public x(byte b10) {
        super(Byte.valueOf(b10));
    }

    @Override // qb.g
    public final e0 a(b0 module) {
        kotlin.jvm.internal.h.f(module, "module");
        ma.e eVarA = ma.t.a(module, o.a.R);
        m0 m0VarQ = eVarA != null ? eVarA.q() : null;
        return m0VarQ == null ? ec.i.c(ec.h.NOT_FOUND_UNSIGNED_TYPE, "UByte") : m0VarQ;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // qb.g
    public final String toString() {
        return ((Number) this.f13469a).intValue() + ".toUByte()";
    }
}
