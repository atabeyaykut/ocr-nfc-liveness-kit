package androidx.fragment.app;

import com.google.android.gms.internal.clearcut.d0;
import java.util.Collections;
import java.util.HashMap;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.pqc.crypto.lms.LMSigParameters;
import org.bouncycastle.util.Arrays;
import r0.q;
import r0.z;

/* loaded from: classes.dex */
public final /* synthetic */ class a {
    public static /* synthetic */ boolean a(int r32) {
        if (r32 == 1) {
            return false;
        }
        if (r32 == 2) {
            return true;
        }
        if (r32 == 3) {
            return false;
        }
        if (r32 == 4) {
            return true;
        }
        throw null;
    }

    public static /* synthetic */ boolean b(int r32) {
        if (r32 == 1 || r32 == 2) {
            return false;
        }
        if (r32 == 3 || r32 == 4) {
            return true;
        }
        throw null;
    }

    public static String c(String str, Fragment fragment, String str2) {
        return str + fragment + str2;
    }

    public static StringBuilder d(ConfigurableProvider configurableProvider, String str, String str2, String str3) {
        configurableProvider.addAlgorithm(str, str2);
        return new StringBuilder(str3);
    }

    public static StringBuilder e(ConfigurableProvider configurableProvider, String str, String str2, String str3, String str4) {
        configurableProvider.addAlgorithm(str, str2);
        configurableProvider.addAlgorithm(str3, str4);
        return new StringBuilder();
    }

    public static z f(da.d dVar, Class cls, Class cls2, r0.j jVar, q qVar) {
        return a6.a.m(cls, cls2, jVar, d0.q(dVar).getName(), qVar);
    }

    public static void g(HashMap map) {
        Collections.unmodifiableMap(new HashMap(map));
    }

    public static void h(LMSigParameters lMSigParameters, LMSigParameters.AnonymousClass1 anonymousClass1, LMSigParameters lMSigParameters2) {
        anonymousClass1.put(Integer.valueOf(lMSigParameters.type), lMSigParameters2);
    }

    public static byte[] i(ASN1Sequence aSN1Sequence, int r12) {
        return Arrays.clone(ASN1OctetString.getInstance(aSN1Sequence.getObjectAt(r12)).getOctets());
    }

    public static /* synthetic */ String j(int r12) {
        return r12 == 1 ? "BEGIN_ARRAY" : r12 == 2 ? "END_ARRAY" : r12 == 3 ? "BEGIN_OBJECT" : r12 == 4 ? "END_OBJECT" : r12 == 5 ? "NAME" : r12 == 6 ? "STRING" : r12 == 7 ? "NUMBER" : r12 == 8 ? "BOOLEAN" : r12 == 9 ? "NULL" : r12 == 10 ? "END_DOCUMENT" : "null";
    }
}
