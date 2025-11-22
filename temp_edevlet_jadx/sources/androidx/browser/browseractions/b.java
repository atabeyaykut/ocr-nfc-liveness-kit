package androidx.browser.browseractions;

import android.content.Context;
import android.os.Build;
import android.util.JsonReader;
import androidx.constraintlayout.core.state.Interpolator;
import androidx.constraintlayout.core.state.Transition;
import b3.r;
import i7.f;
import j6.a0;
import java.io.IOException;
import java.io.StringWriter;
import java.nio.charset.Charset;
import java.security.spec.KeySpec;
import java.util.Map;
import k6.a;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.jcajce.provider.asymmetric.EC;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import r2.e;
import v6.d;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements Interpolator, r.a, f.a, a.InterfaceC0162a, e {
    public /* synthetic */ b(int r12) {
    }

    public static int c(int r02, int r12, int r22, int r32, int r42, int r52, int r6, int r72, int r82, int r92) {
        return ((((((((r02 * r12) + r22) * r32) + r42) * r52) + r6) * r72) + r82) * r92;
    }

    public static int d(r0.b bVar, int r12, int r22) {
        return (bVar.hashCode() + r12) * r22;
    }

    public static String e(String str, String str2) {
        return str + str2;
    }

    public static String f(StringBuilder sb2, boolean z10, char c10) {
        sb2.append(z10);
        sb2.append(c10);
        return sb2.toString();
    }

    public static String g(KeySpec keySpec, StringBuilder sb2, String str) {
        sb2.append(keySpec.getClass());
        sb2.append(str);
        return sb2.toString();
    }

    public static String h(ASN1TaggedObject aSN1TaggedObject, StringBuilder sb2) {
        sb2.append(aSN1TaggedObject.getTagNo());
        return sb2.toString();
    }

    public static StringBuilder i(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(str2);
        return sb2;
    }

    public static StringBuilder j(ConfigurableProvider configurableProvider, String str, ASN1ObjectIdentifier aSN1ObjectIdentifier, String str2, String str3) {
        configurableProvider.addAlgorithm(str, aSN1ObjectIdentifier, str2);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str3);
        return sb2;
    }

    public static Map k(ConfigurableProvider configurableProvider, String str, String str2, String str3, String str4) {
        configurableProvider.addAlgorithm(str, str2, EC.generalEcAttributes);
        configurableProvider.addAlgorithm(str3, str4, EC.generalEcAttributes);
        return EC.generalEcAttributes;
    }

    public static DERSequence l(ASN1EncodableVector aSN1EncodableVector, ASN1OctetString aSN1OctetString, ASN1EncodableVector aSN1EncodableVector2) {
        aSN1EncodableVector.add(aSN1OctetString);
        return new DERSequence(aSN1EncodableVector2);
    }

    public static /* synthetic */ String m(int r12) {
        if (r12 == 1) {
            return "NONE";
        }
        if (r12 == 2) {
            return "ALL";
        }
        if (r12 == 3) {
            return "CAMERA_ONLY";
        }
        if (r12 == 4) {
            return "GALLERY_ONLY";
        }
        throw null;
    }

    public static /* synthetic */ String n(int r12) {
        return r12 == 1 ? "FULL" : r12 == 2 ? "MEM_ONLY" : "null";
    }

    public static /* synthetic */ String o(int r12) {
        return r12 == 1 ? "PRE_COMP" : r12 == 2 ? "SOLID" : r12 == 3 ? "IMAGE" : r12 == 4 ? "NULL" : r12 == 5 ? "SHAPE" : r12 == 6 ? "TEXT" : r12 == 7 ? "UNKNOWN" : "null";
    }

    public static /* synthetic */ int p(String str) {
        if (str == null) {
            throw new NullPointerException("Name is null");
        }
        if (str.equals("NONE")) {
            return 1;
        }
        if (str.equals("ALL")) {
            return 2;
        }
        if (str.equals("CAMERA_ONLY")) {
            return 3;
        }
        if (str.equals("GALLERY_ONLY")) {
            return 4;
        }
        throw new IllegalArgumentException("No enum constant com.esafirm.imagepicker.features.ReturnMode.".concat(str));
    }

    @Override // i7.f.a
    public String a(Context context) {
        int r02 = Build.VERSION.SDK_INT;
        return context.getPackageManager().hasSystemFeature("android.hardware.type.television") ? "tv" : context.getPackageManager().hasSystemFeature("android.hardware.type.watch") ? "watch" : (r02 < 23 || !context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) ? (r02 < 26 || !context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) ? "" : "embedded" : "auto";
    }

    @Override // b3.r.a
    public Object apply(Object obj) {
        a0 a0Var = (a0) obj;
        n6.a.f10593b.getClass();
        d dVar = k6.a.f8771a;
        dVar.getClass();
        StringWriter stringWriter = new StringWriter();
        try {
            dVar.a(a0Var, stringWriter);
        } catch (IOException unused) {
        }
        return stringWriter.toString().getBytes(Charset.forName("UTF-8"));
    }

    @Override // k6.a.InterfaceC0162a
    public Object b(JsonReader jsonReader) {
        return k6.a.a(jsonReader);
    }

    @Override // androidx.constraintlayout.core.state.Interpolator
    public float getInterpolation(float f) {
        return Transition.lambda$getInterpolator$2(f);
    }
}
