package androidx.room.util;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.work.WorkerParameters;
import da.l;
import ib.b;
import java.io.IOException;
import java.util.HashMap;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.w;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.math.ec.ECFieldElement;
import p4.h1;
import ud.d0;

/* loaded from: classes.dex */
public final /* synthetic */ class a {
    public static int a(String str, int r12, int r22) {
        return (str.hashCode() + r12) * r22;
    }

    public static l b(Class cls, String str, String str2) {
        return w.c(new r(cls, str, str2));
    }

    public static String c(String str, IOException iOException) {
        return str + iOException;
    }

    public static StringBuilder d(StringBuilder sb2, String str, ConfigurableProvider configurableProvider, String str2, String str3) {
        sb2.append(str);
        configurableProvider.addAlgorithm(str2, sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append(str3);
        return sb3;
    }

    public static StringBuilder e(StringBuilder sb2, ASN1ObjectIdentifier aSN1ObjectIdentifier, ConfigurableProvider configurableProvider, String str, String str2) {
        sb2.append(aSN1ObjectIdentifier);
        configurableProvider.addAlgorithm(sb2.toString(), str);
        return new StringBuilder(str2);
    }

    public static HashMap f(Class cls, h1 h1Var) {
        HashMap map = new HashMap();
        map.put(cls, h1Var);
        return map;
    }

    public static ECFieldElement g(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        return eCFieldElement.square().add(eCFieldElement2).add(eCFieldElement3);
    }

    public static void h(Context context, String str, WorkerParameters workerParameters, String str2, d0 d0Var, String str3, d0 d0Var2, String str4, d0 d0Var3, String str5, d0 d0Var4, String str6, String str7, String str8, String str9, String str10, String str11, String str12, SharedPreferences.Editor editor, String str13) {
        h.f(context, str);
        h.f(workerParameters, str2);
        h.f(d0Var, str3);
        h.f(d0Var2, str4);
        h.f(d0Var3, str5);
        h.f(d0Var4, str6);
        h.f(str7, str8);
        h.f(str9, str10);
        h.f(str11, str12);
        h.f(editor, str13);
    }

    public static boolean i(b.a aVar, int r12, String str) {
        Boolean boolC = aVar.c(r12);
        h.e(boolC, str);
        return boolC.booleanValue();
    }
}
