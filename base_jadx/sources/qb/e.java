package qb;

import cc.e0;
import cc.m0;
import java.util.Arrays;
import ma.b0;

/* loaded from: classes2.dex */
public final class e extends q {
    public e(char c10) {
        super(Character.valueOf(c10));
    }

    @Override // qb.g
    public final e0 a(b0 module) {
        kotlin.jvm.internal.h.f(module, "module");
        ja.k kVarM = module.m();
        kVarM.getClass();
        m0 m0VarS = kVarM.s(ja.l.CHAR);
        if (m0VarS != null) {
            return m0VarS;
        }
        ja.k.a(62);
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // qb.g
    public final String toString() {
        String strValueOf;
        Object[] objArr = new Object[2];
        T t10 = this.f13469a;
        boolean z10 = false;
        objArr[0] = Integer.valueOf(((Character) t10).charValue());
        char cCharValue = ((Character) t10).charValue();
        if (cCharValue == '\b') {
            strValueOf = "\\b";
        } else if (cCharValue == '\t') {
            strValueOf = "\\t";
        } else if (cCharValue == '\n') {
            strValueOf = "\\n";
        } else if (cCharValue == '\f') {
            strValueOf = "\\f";
        } else if (cCharValue == '\r') {
            strValueOf = "\\r";
        } else {
            byte type = (byte) Character.getType(cCharValue);
            if (type != 0 && type != 13 && type != 14 && type != 15 && type != 16 && type != 18 && type != 19) {
                z10 = true;
            }
            strValueOf = z10 ? String.valueOf(cCharValue) : "?";
        }
        objArr[1] = strValueOf;
        String str = String.format("\\u%04X ('%s')", Arrays.copyOf(objArr, 2));
        kotlin.jvm.internal.h.e(str, "format(this, *args)");
        return str;
    }
}
