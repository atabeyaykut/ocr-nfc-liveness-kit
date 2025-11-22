package android.support.v4.media;

import android.content.Intent;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import p4.h1;
import p4.l1;

/* loaded from: classes.dex */
public final /* synthetic */ class a {
    public static int a(int r02, int r12, int r22, int r32) {
        return r02 + r12 + r22 + r32;
    }

    public static Intent b(String str, int r22) {
        Intent intent = new Intent(str);
        intent.setFlags(r22);
        return intent;
    }

    public static String c(IOException iOException, StringBuilder sb2) {
        sb2.append(iOException.getMessage());
        return sb2.toString();
    }

    public static String d(String str, int r22) {
        return str + r22;
    }

    public static String e(String str, Exception exc) {
        return str + exc;
    }

    public static String f(String str, String str2) {
        return str + str2;
    }

    public static String g(String str, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return str + aSN1ObjectIdentifier;
    }

    public static String h(StringBuilder sb2, String str, char c10) {
        sb2.append(str);
        sb2.append(c10);
        return sb2.toString();
    }

    public static String i(StringBuilder sb2, String str, String str2, String str3) {
        sb2.append(str);
        sb2.append(str2);
        sb2.append(str3);
        return sb2.toString();
    }

    public static String j(StringBuilder sb2, List list, char c10) {
        sb2.append(list);
        sb2.append(c10);
        return sb2.toString();
    }

    public static String k(ConfigurableProvider configurableProvider, String str, String str2, String str3, String str4) {
        configurableProvider.addAlgorithm(str, str2);
        return str3 + str4;
    }

    public static StringBuilder l(String str, String str2, String str3) {
        StringBuilder sb2 = new StringBuilder(str);
        sb2.append(str2);
        sb2.append(str3);
        return sb2;
    }

    public static h1 m(HashMap map, int r22, l1 l1Var) {
        Collections.unmodifiableMap(new HashMap(map));
        return new h1(r22, l1Var);
    }

    public static /* synthetic */ String n(int r12) {
        return r12 == 1 ? "SUPERTYPE" : r12 == 2 ? "COMMON" : "null";
    }

    public static /* synthetic */ String o(int r12) {
        return r12 == 1 ? "INVARIANT" : r12 == 2 ? "IN" : r12 == 3 ? "OUT" : "null";
    }
}
