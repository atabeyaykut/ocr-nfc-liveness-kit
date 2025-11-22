package androidx.appcompat.widget;

import java.util.Collections;
import java.util.HashMap;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import r4.a7;
import r4.d7;

/* loaded from: classes.dex */
public final /* synthetic */ class v {
    public static /* synthetic */ int a(int r12) {
        if (r12 == 1) {
            return 1;
        }
        if (r12 == 2) {
            return 2;
        }
        throw null;
    }

    public static long b(long j10, long j11, long j12, long j13) {
        return (j10 * j11) + j12 + j13;
    }

    public static String c(int r12, String str, int r32) {
        StringBuilder sb2 = new StringBuilder(r12);
        sb2.append(str);
        sb2.append(r32);
        return sb2.toString();
    }

    public static String d(String str, ASN1ObjectIdentifier aSN1ObjectIdentifier, String str2) {
        return str + aSN1ObjectIdentifier + str2;
    }

    public static StringBuilder e(String str, int r22, String str2) {
        StringBuilder sb2 = new StringBuilder(str);
        sb2.append(r22);
        sb2.append(str2);
        return sb2;
    }

    public static a7 f(HashMap map, int r22, d7 d7Var) {
        Collections.unmodifiableMap(new HashMap(map));
        return new a7(r22, d7Var);
    }

    public static void g(String str, String str2, ConfigurableProvider configurableProvider, String str3, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        configurableProvider.addAlgorithm(str3, aSN1ObjectIdentifier, str + str2);
    }

    public static /* synthetic */ String h(int r12) {
        return r12 == 1 ? "INITIALIZE" : r12 == 2 ? "SWITCH_TO_SOURCE_SERVICE" : r12 == 3 ? "DECODE_DATA" : "null";
    }
}
