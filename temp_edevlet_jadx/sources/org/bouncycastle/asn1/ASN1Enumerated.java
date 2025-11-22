package org.bouncycastle.asn1;

import ab.b;
import androidx.constraintlayout.core.a;
import java.io.IOException;
import java.math.BigInteger;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class ASN1Enumerated extends ASN1Primitive {
    static final ASN1UniversalType TYPE = new ASN1UniversalType(ASN1Enumerated.class, 10) { // from class: org.bouncycastle.asn1.ASN1Enumerated.1
        @Override // org.bouncycastle.asn1.ASN1UniversalType
        public ASN1Primitive fromImplicitPrimitive(DEROctetString dEROctetString) {
            return ASN1Enumerated.createPrimitive(dEROctetString.getOctets(), false);
        }
    };
    private static final ASN1Enumerated[] cache = new ASN1Enumerated[12];
    private final byte[] contents;
    private final int start;

    public ASN1Enumerated(int r32) {
        if (r32 < 0) {
            throw new IllegalArgumentException("enumerated must be non-negative");
        }
        this.contents = BigInteger.valueOf(r32).toByteArray();
        this.start = 0;
    }

    public ASN1Enumerated(BigInteger bigInteger) {
        if (bigInteger.signum() < 0) {
            throw new IllegalArgumentException("enumerated must be non-negative");
        }
        this.contents = bigInteger.toByteArray();
        this.start = 0;
    }

    public ASN1Enumerated(byte[] bArr) {
        this(bArr, true);
    }

    public ASN1Enumerated(byte[] bArr, boolean z10) {
        if (ASN1Integer.isMalformed(bArr)) {
            throw new IllegalArgumentException("malformed enumerated");
        }
        if ((bArr[0] & ISOFileInfo.DATA_BYTES1) != 0) {
            throw new IllegalArgumentException("enumerated must be non-negative");
        }
        this.contents = z10 ? Arrays.clone(bArr) : bArr;
        this.start = ASN1Integer.signBytesToSkip(bArr);
    }

    public static ASN1Enumerated createPrimitive(byte[] bArr, boolean z10) {
        if (bArr.length > 1) {
            return new ASN1Enumerated(bArr, z10);
        }
        if (bArr.length == 0) {
            throw new IllegalArgumentException("ENUMERATED has zero length");
        }
        int r02 = bArr[0] & 255;
        ASN1Enumerated[] aSN1EnumeratedArr = cache;
        if (r02 >= aSN1EnumeratedArr.length) {
            return new ASN1Enumerated(bArr, z10);
        }
        ASN1Enumerated aSN1Enumerated = aSN1EnumeratedArr[r02];
        if (aSN1Enumerated != null) {
            return aSN1Enumerated;
        }
        ASN1Enumerated aSN1Enumerated2 = new ASN1Enumerated(bArr, z10);
        aSN1EnumeratedArr[r02] = aSN1Enumerated2;
        return aSN1Enumerated2;
    }

    public static ASN1Enumerated getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1Enumerated)) {
            return (ASN1Enumerated) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException(b.f(obj, "illegal object in getInstance: "));
        }
        try {
            return (ASN1Enumerated) TYPE.fromByteArray((byte[]) obj);
        } catch (Exception e10) {
            throw new IllegalArgumentException(a.b(e10, new StringBuilder("encoding error in getInstance: ")));
        }
    }

    public static ASN1Enumerated getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z10) {
        return (ASN1Enumerated) TYPE.getContextInstance(aSN1TaggedObject, z10);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1Enumerated) {
            return Arrays.areEqual(this.contents, ((ASN1Enumerated) aSN1Primitive).contents);
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z10) throws IOException {
        aSN1OutputStream.writeEncodingDL(z10, 10, this.contents);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean encodeConstructed() {
        return false;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength(boolean z10) {
        return ASN1OutputStream.getLengthOfEncodingDL(z10, this.contents.length);
    }

    public BigInteger getValue() {
        return new BigInteger(this.contents);
    }

    public boolean hasValue(int r52) {
        byte[] bArr = this.contents;
        int length = bArr.length;
        int r22 = this.start;
        return length - r22 <= 4 && ASN1Integer.intValue(bArr, r22, -1) == r52;
    }

    public boolean hasValue(BigInteger bigInteger) {
        return bigInteger != null && ASN1Integer.intValue(this.contents, this.start, -1) == bigInteger.intValue() && getValue().equals(bigInteger);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive, org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        return Arrays.hashCode(this.contents);
    }

    public int intValueExact() {
        byte[] bArr = this.contents;
        int length = bArr.length;
        int r22 = this.start;
        if (length - r22 <= 4) {
            return ASN1Integer.intValue(bArr, r22, -1);
        }
        throw new ArithmeticException("ASN.1 Enumerated out of int range");
    }
}
