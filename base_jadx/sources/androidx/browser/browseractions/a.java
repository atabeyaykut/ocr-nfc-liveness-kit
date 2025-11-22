package androidx.browser.browseractions;

import androidx.arch.core.util.Function;
import androidx.camera.core.ImageCapture;
import java.util.HashMap;
import java.util.List;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.pqc.crypto.xmss.XMSSMTParameters;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Function {
    public static String a(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static String b(StringBuilder sb2, int r12, String str) {
        sb2.append(r12);
        sb2.append(str);
        return sb2.toString();
    }

    public static StringBuilder c(StringBuilder sb2, String str, ConfigurableProvider configurableProvider, String str2, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        sb2.append(str);
        configurableProvider.addAlgorithm(str2, aSN1ObjectIdentifier, sb2.toString());
        return new StringBuilder();
    }

    public static ASN1EncodableVector d(ASN1EncodableVector aSN1EncodableVector, ASN1EncodableVector aSN1EncodableVector2) {
        aSN1EncodableVector2.add(new DERSequence(aSN1EncodableVector));
        return new ASN1EncodableVector();
    }

    public static DERSequence e(ASN1EncodableVector aSN1EncodableVector, ASN1Integer aSN1Integer, ASN1EncodableVector aSN1EncodableVector2) {
        aSN1EncodableVector.add(aSN1Integer);
        return new DERSequence(aSN1EncodableVector2);
    }

    public static void f(int r12, int r22, ASN1ObjectIdentifier aSN1ObjectIdentifier, HashMap map, Integer num) {
        map.put(num, new XMSSMTParameters(r12, r22, aSN1ObjectIdentifier));
    }

    public static void g(StringBuilder sb2, ASN1ObjectIdentifier aSN1ObjectIdentifier, ConfigurableProvider configurableProvider, String str) {
        sb2.append(aSN1ObjectIdentifier);
        configurableProvider.addAlgorithm(sb2.toString(), str);
    }

    public static /* synthetic */ String h(int r12) {
        return r12 == 1 ? "ATTEMPT_MIGRATION" : r12 == 2 ? "NOT_GENERATED" : r12 == 3 ? "UNREGISTERED" : r12 == 4 ? "REGISTERED" : r12 == 5 ? "REGISTER_ERROR" : "null";
    }

    public static /* synthetic */ String i(int r12) {
        return r12 == 1 ? "OK" : r12 == 2 ? "TRANSIENT_ERROR" : r12 == 3 ? "FATAL_ERROR" : r12 == 4 ? "INVALID_PAYLOAD" : "null";
    }

    @Override // androidx.arch.core.util.Function
    public Object apply(Object obj) {
        return ImageCapture.lambda$issueTakePicture$12((List) obj);
    }
}
