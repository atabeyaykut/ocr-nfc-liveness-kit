package dc;

import cc.c1;

/* loaded from: classes2.dex */
public final class v {
    public static final String a(c1 c1Var) {
        StringBuilder sb2 = new StringBuilder();
        b(sb2, "type: " + c1Var);
        b(sb2, "hashCode: " + c1Var.hashCode());
        b(sb2, "javaClass: " + c1Var.getClass().getCanonicalName());
        for (ma.j jVarN = c1Var.n(); jVarN != null; jVarN = jVarN.b()) {
            b(sb2, "fqName: ".concat(nb.c.f10697a.F(jVarN)));
            b(sb2, "javaClass: " + jVarN.getClass().getCanonicalName());
        }
        String string = sb2.toString();
        kotlin.jvm.internal.h.e(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public static final void b(StringBuilder sb2, String str) {
        kotlin.jvm.internal.h.f(str, "<this>");
        sb2.append(str);
        sb2.append('\n');
    }
}
