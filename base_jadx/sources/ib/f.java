package ib;

import gb.m;
import gb.p;
import gb.t;

/* loaded from: classes2.dex */
public final class f {
    public static final p a(p pVar, g typeTable) {
        kotlin.jvm.internal.h.f(pVar, "<this>");
        kotlin.jvm.internal.h.f(typeTable, "typeTable");
        int r02 = pVar.f6456c;
        if ((r02 & 256) == 256) {
            return pVar.f6465n;
        }
        if ((r02 & 512) == 512) {
            return typeTable.a(pVar.f6466p);
        }
        return null;
    }

    public static final p b(gb.h hVar, g typeTable) {
        kotlin.jvm.internal.h.f(hVar, "<this>");
        kotlin.jvm.internal.h.f(typeTable, "typeTable");
        int r02 = hVar.f6328c;
        if ((r02 & 32) == 32) {
            return hVar.f6334k;
        }
        if ((r02 & 64) == 64) {
            return typeTable.a(hVar.f6335l);
        }
        return null;
    }

    public static final p c(gb.h hVar, g typeTable) {
        kotlin.jvm.internal.h.f(hVar, "<this>");
        kotlin.jvm.internal.h.f(typeTable, "typeTable");
        int r02 = hVar.f6328c;
        if ((r02 & 8) == 8) {
            p returnType = hVar.f6331g;
            kotlin.jvm.internal.h.e(returnType, "returnType");
            return returnType;
        }
        if ((r02 & 16) == 16) {
            return typeTable.a(hVar.f6332h);
        }
        throw new IllegalStateException("No returnType in ProtoBuf.Function".toString());
    }

    public static final p d(m mVar, g typeTable) {
        kotlin.jvm.internal.h.f(mVar, "<this>");
        kotlin.jvm.internal.h.f(typeTable, "typeTable");
        int r02 = mVar.f6393c;
        if ((r02 & 8) == 8) {
            p returnType = mVar.f6396g;
            kotlin.jvm.internal.h.e(returnType, "returnType");
            return returnType;
        }
        if ((r02 & 16) == 16) {
            return typeTable.a(mVar.f6397h);
        }
        throw new IllegalStateException("No returnType in ProtoBuf.Property".toString());
    }

    public static final p e(t tVar, g typeTable) {
        kotlin.jvm.internal.h.f(typeTable, "typeTable");
        int r02 = tVar.f6562c;
        if ((r02 & 4) == 4) {
            p type = tVar.f;
            kotlin.jvm.internal.h.e(type, "type");
            return type;
        }
        if ((r02 & 8) == 8) {
            return typeTable.a(tVar.f6565g);
        }
        throw new IllegalStateException("No type in ProtoBuf.ValueParameter".toString());
    }
}
