package org.bouncycastle.pqc.crypto.lms;

import androidx.core.view.PointerIconCompat;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;

/* loaded from: classes2.dex */
public class LMOtsParameters {
    public static final int reserved = 0;
    public static final LMOtsParameters sha256_n24_w1;
    public static final LMOtsParameters sha256_n24_w2;
    public static final LMOtsParameters sha256_n24_w4;
    public static final LMOtsParameters sha256_n24_w8;
    public static final LMOtsParameters sha256_n32_w1;
    public static final LMOtsParameters sha256_n32_w2;
    public static final LMOtsParameters sha256_n32_w4;
    public static final LMOtsParameters sha256_n32_w8;
    public static final LMOtsParameters shake256_n24_w1;
    public static final LMOtsParameters shake256_n24_w2;
    public static final LMOtsParameters shake256_n24_w4;
    public static final LMOtsParameters shake256_n24_w8;
    public static final LMOtsParameters shake256_n32_w1;
    public static final LMOtsParameters shake256_n32_w2;
    public static final LMOtsParameters shake256_n32_w4;
    public static final LMOtsParameters shake256_n32_w8;
    private static final Map<Object, LMOtsParameters> suppliers;
    private final ASN1ObjectIdentifier digestOID;
    private final int ls;

    /* renamed from: n, reason: collision with root package name */
    private final int f11912n;

    /* renamed from: p, reason: collision with root package name */
    private final int f11913p;
    private final int sigLen;
    private final int type;
    private final int w;

    static {
        ASN1ObjectIdentifier aSN1ObjectIdentifier = NISTObjectIdentifiers.id_sha256;
        sha256_n32_w1 = new LMOtsParameters(1, 32, 1, 265, 7, 8516, aSN1ObjectIdentifier);
        sha256_n32_w2 = new LMOtsParameters(2, 32, 2, 133, 6, 4292, aSN1ObjectIdentifier);
        sha256_n32_w4 = new LMOtsParameters(3, 32, 4, 67, 4, 2180, aSN1ObjectIdentifier);
        sha256_n32_w8 = new LMOtsParameters(4, 32, 8, 34, 0, 1124, aSN1ObjectIdentifier);
        sha256_n24_w1 = new LMOtsParameters(5, 24, 1, 200, 8, 5436, aSN1ObjectIdentifier);
        sha256_n24_w2 = new LMOtsParameters(6, 24, 2, 101, 6, 2940, aSN1ObjectIdentifier);
        sha256_n24_w4 = new LMOtsParameters(7, 24, 4, 51, 4, 1500, aSN1ObjectIdentifier);
        sha256_n24_w8 = new LMOtsParameters(8, 24, 8, 26, 0, PointerIconCompat.TYPE_GRAB, aSN1ObjectIdentifier);
        ASN1ObjectIdentifier aSN1ObjectIdentifier2 = NISTObjectIdentifiers.id_shake256_len;
        shake256_n32_w1 = new LMOtsParameters(9, 32, 1, 265, 7, 8516, aSN1ObjectIdentifier2);
        shake256_n32_w2 = new LMOtsParameters(10, 32, 2, 133, 6, 4292, aSN1ObjectIdentifier2);
        shake256_n32_w4 = new LMOtsParameters(11, 32, 4, 67, 4, 2180, aSN1ObjectIdentifier2);
        shake256_n32_w8 = new LMOtsParameters(12, 32, 8, 34, 0, 1124, aSN1ObjectIdentifier2);
        shake256_n24_w1 = new LMOtsParameters(13, 24, 1, 200, 8, 5436, aSN1ObjectIdentifier2);
        shake256_n24_w2 = new LMOtsParameters(14, 24, 2, 101, 6, 2940, aSN1ObjectIdentifier2);
        shake256_n24_w4 = new LMOtsParameters(15, 24, 4, 51, 4, 1500, aSN1ObjectIdentifier2);
        shake256_n24_w8 = new LMOtsParameters(16, 24, 8, 26, 0, PointerIconCompat.TYPE_GRAB, aSN1ObjectIdentifier2);
        suppliers = new HashMap<Object, LMOtsParameters>() { // from class: org.bouncycastle.pqc.crypto.lms.LMOtsParameters.1
            {
                LMOtsParameters lMOtsParameters = LMOtsParameters.sha256_n32_w1;
                put(Integer.valueOf(lMOtsParameters.type), lMOtsParameters);
                LMOtsParameters lMOtsParameters2 = LMOtsParameters.sha256_n32_w2;
                put(Integer.valueOf(lMOtsParameters2.type), lMOtsParameters2);
                LMOtsParameters lMOtsParameters3 = LMOtsParameters.sha256_n32_w4;
                put(Integer.valueOf(lMOtsParameters3.type), lMOtsParameters3);
                LMOtsParameters lMOtsParameters4 = LMOtsParameters.sha256_n32_w8;
                put(Integer.valueOf(lMOtsParameters4.type), lMOtsParameters4);
                LMOtsParameters lMOtsParameters5 = LMOtsParameters.sha256_n24_w1;
                put(Integer.valueOf(lMOtsParameters5.type), lMOtsParameters5);
                LMOtsParameters lMOtsParameters6 = LMOtsParameters.sha256_n24_w2;
                put(Integer.valueOf(lMOtsParameters6.type), lMOtsParameters6);
                LMOtsParameters lMOtsParameters7 = LMOtsParameters.sha256_n24_w4;
                put(Integer.valueOf(lMOtsParameters7.type), lMOtsParameters7);
                LMOtsParameters lMOtsParameters8 = LMOtsParameters.sha256_n24_w8;
                put(Integer.valueOf(lMOtsParameters8.type), lMOtsParameters8);
                LMOtsParameters lMOtsParameters9 = LMOtsParameters.shake256_n32_w1;
                put(Integer.valueOf(lMOtsParameters9.type), lMOtsParameters9);
                LMOtsParameters lMOtsParameters10 = LMOtsParameters.shake256_n32_w2;
                put(Integer.valueOf(lMOtsParameters10.type), lMOtsParameters10);
                LMOtsParameters lMOtsParameters11 = LMOtsParameters.shake256_n32_w4;
                put(Integer.valueOf(lMOtsParameters11.type), lMOtsParameters11);
                LMOtsParameters lMOtsParameters12 = LMOtsParameters.shake256_n32_w8;
                put(Integer.valueOf(lMOtsParameters12.type), lMOtsParameters12);
                LMOtsParameters lMOtsParameters13 = LMOtsParameters.shake256_n24_w1;
                put(Integer.valueOf(lMOtsParameters13.type), lMOtsParameters13);
                LMOtsParameters lMOtsParameters14 = LMOtsParameters.shake256_n24_w2;
                put(Integer.valueOf(lMOtsParameters14.type), lMOtsParameters14);
                LMOtsParameters lMOtsParameters15 = LMOtsParameters.shake256_n24_w4;
                put(Integer.valueOf(lMOtsParameters15.type), lMOtsParameters15);
                LMOtsParameters lMOtsParameters16 = LMOtsParameters.shake256_n24_w8;
                put(Integer.valueOf(lMOtsParameters16.type), lMOtsParameters16);
            }
        };
    }

    public LMOtsParameters(int r12, int r22, int r32, int r42, int r52, int r6, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        this.type = r12;
        this.f11912n = r22;
        this.w = r32;
        this.f11913p = r42;
        this.ls = r52;
        this.sigLen = r6;
        this.digestOID = aSN1ObjectIdentifier;
    }

    public static LMOtsParameters getParametersForType(int r12) {
        return suppliers.get(Integer.valueOf(r12));
    }

    public ASN1ObjectIdentifier getDigestOID() {
        return this.digestOID;
    }

    public int getLs() {
        return this.ls;
    }

    public int getN() {
        return this.f11912n;
    }

    public int getP() {
        return this.f11913p;
    }

    public int getSigLen() {
        return this.sigLen;
    }

    public int getType() {
        return this.type;
    }

    public int getW() {
        return this.w;
    }
}
