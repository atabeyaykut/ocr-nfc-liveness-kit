package androidx.constraintlayout.core;

import java.util.Collections;
import java.util.HashMap;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import r4.a7;
import s4.v0;
import s4.y0;

/* loaded from: classes.dex */
public final /* synthetic */ class a {
    public static /* synthetic */ int a(int r12) {
        if (r12 == 1) {
            return 1;
        }
        if (r12 == 2) {
            return 2;
        }
        if (r12 == 3) {
            return 3;
        }
        if (r12 == 4) {
            return 4;
        }
        throw null;
    }

    public static String b(Exception exc, StringBuilder sb2) {
        sb2.append(exc.toString());
        return sb2.toString();
    }

    public static String c(String str, int r22, String str2, int r42) {
        return str + r22 + str2 + r42;
    }

    public static String d(StringBuilder sb2, int r12, char c10) {
        sb2.append(r12);
        sb2.append(c10);
        return sb2.toString();
    }

    public static StringBuilder e(String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        return sb2;
    }

    public static StringBuilder f(String str, int r22, String str2, int r42, String str3) {
        StringBuilder sb2 = new StringBuilder(str);
        sb2.append(r22);
        sb2.append(str2);
        sb2.append(r42);
        sb2.append(str3);
        return sb2;
    }

    public static HashMap g(Class cls, a7 a7Var) {
        HashMap map = new HashMap();
        map.put(cls, a7Var);
        return map;
    }

    public static v0 h(HashMap map, int r22, y0 y0Var) {
        Collections.unmodifiableMap(new HashMap(map));
        return new v0(r22, y0Var);
    }

    public static void i(StringBuilder sb2, String str, String str2, ConfigurableProvider configurableProvider, String str3) {
        sb2.append(str);
        sb2.append(str2);
        configurableProvider.addAlgorithm(str3, sb2.toString());
    }

    public static String j(Exception exc, StringBuilder sb2) {
        sb2.append(exc.getMessage());
        return sb2.toString();
    }

    public static /* synthetic */ String k(int r12) {
        return r12 == 1 ? "INITIALIZE" : r12 == 2 ? "RESOURCE_CACHE" : r12 == 3 ? "DATA_CACHE" : r12 == 4 ? "SOURCE" : r12 == 5 ? "ENCODE" : r12 == 6 ? "FINISHED" : "null";
    }
}
