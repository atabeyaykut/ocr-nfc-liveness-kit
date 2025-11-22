package org.bouncycastle.oer.its.ieee1609dot2.basetypes;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Enumerated;
import org.bouncycastle.util.BigIntegers;

/* loaded from: classes2.dex */
public class HashAlgorithm extends ASN1Enumerated {
    public static final HashAlgorithm sha256 = new HashAlgorithm(BigInteger.ZERO);
    public static final HashAlgorithm sha384 = new HashAlgorithm(BigIntegers.ONE);

    public HashAlgorithm(BigInteger bigInteger) {
        super(bigInteger);
        assertValues();
    }

    private HashAlgorithm(ASN1Enumerated aSN1Enumerated) {
        this(aSN1Enumerated.getValue());
    }

    public static HashAlgorithm getInstance(Object obj) {
        if (obj instanceof HashAlgorithm) {
            return (HashAlgorithm) obj;
        }
        if (obj != null) {
            return new HashAlgorithm(ASN1Enumerated.getInstance(obj));
        }
        return null;
    }

    public void assertValues() {
        int r02 = BigIntegers.intValueExact(getValue());
        if (r02 == 0 || r02 == 1) {
            return;
        }
        throw new IllegalArgumentException("invalid enumeration value " + getValue());
    }
}
