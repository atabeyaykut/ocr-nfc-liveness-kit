package androidx.camera.core.impl;

import android.content.Context;
import android.database.Cursor;
import android.util.JsonReader;
import androidx.constraintlayout.core.state.Interpolator;
import androidx.constraintlayout.core.state.Transition;
import b3.r;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.datatransport.TransportRegistrar;
import i7.f;
import java.security.Key;
import java.util.ArrayList;
import k6.a;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyFactorySpi;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Interpolator, r.a, f.a, a.InterfaceC0162a, c6.h {
    public static /* synthetic */ byte c(int r22) {
        if (r22 == 1) {
            return (byte) 0;
        }
        if (r22 == 2) {
            return (byte) 1;
        }
        if (r22 == 3) {
            return (byte) 2;
        }
        if (r22 == 4) {
            return (byte) 3;
        }
        if (r22 == 5) {
            return (byte) 5;
        }
        if (r22 == 6) {
            return (byte) 7;
        }
        throw null;
    }

    public static int d(int r02, int r12, int r22, int r32) {
        return (r02 * r12) + r22 + r32;
    }

    public static String e(StringBuilder sb2, Object obj, String str) {
        sb2.append(obj);
        sb2.append(str);
        return sb2.toString();
    }

    public static String f(Key key, StringBuilder sb2, String str) {
        sb2.append(key.getClass());
        sb2.append(str);
        return sb2.toString();
    }

    public static String g(ASN1Sequence aSN1Sequence, StringBuilder sb2) {
        sb2.append(aSN1Sequence.size());
        return sb2.toString();
    }

    public static String h(ConfigurableProvider configurableProvider, String str, String str2, String str3, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        configurableProvider.addAlgorithm(str, str2);
        return str3 + aSN1ObjectIdentifier;
    }

    public static DERSequence j(ASN1EncodableVector aSN1EncodableVector, DEROctetString dEROctetString, ASN1EncodableVector aSN1EncodableVector2) {
        aSN1EncodableVector.add(dEROctetString);
        return new DERSequence(aSN1EncodableVector2);
    }

    public static /* synthetic */ void k(int r12, String str) {
        if (r12 != 0) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(android.support.v4.media.a.f(str, " must not be null"));
        kotlin.jvm.internal.h.j(kotlin.jvm.internal.h.class.getName(), nullPointerException);
        throw nullPointerException;
    }

    public static void l(BouncyCastleProvider bouncyCastleProvider, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        bouncyCastleProvider.addKeyInfoConverter(aSN1ObjectIdentifier, new SPHINCSPlusKeyFactorySpi());
    }

    public static /* synthetic */ String m(int r12) {
        return r12 == 1 ? "BEGIN_ARRAY" : r12 == 2 ? "END_ARRAY" : r12 == 3 ? "BEGIN_OBJECT" : r12 == 4 ? "END_OBJECT" : r12 == 5 ? "NAME" : r12 == 6 ? "STRING" : r12 == 7 ? "NUMBER" : r12 == 8 ? "BOOLEAN" : r12 == 9 ? "NULL" : r12 == 10 ? "END_DOCUMENT" : "null";
    }

    @Override // i7.f.a
    public String a(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        return installerPackageName != null ? FirebaseCommonRegistrar.a(installerPackageName) : "";
    }

    @Override // b3.r.a
    public Object apply(Object obj) {
        Cursor cursor = (Cursor) obj;
        r2.b bVar = b3.r.f;
        ArrayList arrayList = new ArrayList();
        int length = 0;
        while (cursor.moveToNext()) {
            byte[] blob = cursor.getBlob(0);
            arrayList.add(blob);
            length += blob.length;
        }
        byte[] bArr = new byte[length];
        int length2 = 0;
        for (int r22 = 0; r22 < arrayList.size(); r22++) {
            byte[] bArr2 = (byte[]) arrayList.get(r22);
            System.arraycopy(bArr2, 0, bArr, length2, bArr2.length);
            length2 += bArr2.length;
        }
        return bArr;
    }

    @Override // k6.a.InterfaceC0162a
    public Object b(JsonReader jsonReader) {
        return k6.a.d(jsonReader);
    }

    @Override // androidx.constraintlayout.core.state.Interpolator
    public float getInterpolation(float f) {
        return Transition.lambda$getInterpolator$3(f);
    }

    @Override // c6.h
    public Object i(c6.y yVar) {
        return TransportRegistrar.lambda$getComponents$0(yVar);
    }
}
