package org.bouncycastle.asn1;

import ab.b;
import androidx.constraintlayout.core.a;
import java.io.IOException;
import java.math.BigInteger;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Properties;

/* loaded from: classes2.dex */
public class ASN1Integer extends ASN1Primitive {
    static final int SIGN_EXT_SIGNED = -1;
    static final int SIGN_EXT_UNSIGNED = 255;
    static final ASN1UniversalType TYPE = new ASN1UniversalType(ASN1Integer.class, 2) { // from class: org.bouncycastle.asn1.ASN1Integer.1
        @Override // org.bouncycastle.asn1.ASN1UniversalType
        public ASN1Primitive fromImplicitPrimitive(DEROctetString dEROctetString) {
            return ASN1Integer.createPrimitive(dEROctetString.getOctets());
        }
    };
    private final byte[] bytes;
    private final int start;

    public ASN1Integer(long j10) {
        this.bytes = BigInteger.valueOf(j10).toByteArray();
        this.start = 0;
    }

    public ASN1Integer(BigInteger bigInteger) {
        this.bytes = bigInteger.toByteArray();
        this.start = 0;
    }

    public ASN1Integer(byte[] bArr) {
        this(bArr, true);
    }

    public ASN1Integer(byte[] bArr, boolean z10) {
        if (isMalformed(bArr)) {
            throw new IllegalArgumentException("malformed integer");
        }
        this.bytes = z10 ? Arrays.clone(bArr) : bArr;
        this.start = signBytesToSkip(bArr);
    }

    public static ASN1Integer createPrimitive(byte[] bArr) {
        return new ASN1Integer(bArr, false);
    }

    public static ASN1Integer getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1Integer)) {
            return (ASN1Integer) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException(b.f(obj, "illegal object in getInstance: "));
        }
        try {
            return (ASN1Integer) TYPE.fromByteArray((byte[]) obj);
        } catch (Exception e10) {
            throw new IllegalArgumentException(a.b(e10, new StringBuilder("encoding error in getInstance: ")));
        }
    }

    public static ASN1Integer getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z10) {
        return (ASN1Integer) TYPE.getContextInstance(aSN1TaggedObject, z10);
    }

    public static int intValue(byte[] bArr, int r32, int r42) {
        int length = bArr.length;
        int r33 = Math.max(r32, length - 4);
        int r43 = r42 & bArr[r33];
        while (true) {
            r33++;
            if (r33 >= length) {
                return r43;
            }
            r43 = (r43 << 8) | (bArr[r33] & 255);
        }
    }

    public static boolean isMalformed(byte[] bArr) {
        int length = bArr.length;
        if (length != 0) {
            return (length == 1 || bArr[0] != (bArr[1] >> 7) || Properties.isOverrideSet("org.bouncycastle.asn1.allow_unsafe_integer")) ? false : true;
        }
        return true;
    }

    public static long longValue(byte[] bArr, int r6, int r72) {
        int length = bArr.length;
        int r62 = Math.max(r6, length - 8);
        long j10 = r72 & bArr[r62];
        while (true) {
            r62++;
            if (r62 >= length) {
                return j10;
            }
            j10 = (j10 << 8) | (bArr[r62] & 255);
        }
    }

    public static int signBytesToSkip(byte[] bArr) {
        int length = bArr.length - 1;
        int r12 = 0;
        while (r12 < length) {
            int r32 = r12 + 1;
            if (bArr[r12] != (bArr[r32] >> 7)) {
                break;
            }
            r12 = r32;
        }
        return r12;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1Integer) {
            return Arrays.areEqual(this.bytes, ((ASN1Integer) aSN1Primitive).bytes);
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z10) throws IOException {
        aSN1OutputStream.writeEncodingDL(z10, 2, this.bytes);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean encodeConstructed() {
        return false;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength(boolean z10) {
        return ASN1OutputStream.getLengthOfEncodingDL(z10, this.bytes.length);
    }

    public BigInteger getPositiveValue() {
        return new BigInteger(1, this.bytes);
    }

    public BigInteger getValue() {
        return new BigInteger(this.bytes);
    }

    public boolean hasValue(int r52) {
        byte[] bArr = this.bytes;
        int length = bArr.length;
        int r22 = this.start;
        return length - r22 <= 4 && intValue(bArr, r22, -1) == r52;
    }

    public boolean hasValue(long j10) {
        byte[] bArr = this.bytes;
        int length = bArr.length;
        int r22 = this.start;
        return length - r22 <= 8 && longValue(bArr, r22, -1) == j10;
    }

    public boolean hasValue(BigInteger bigInteger) {
        return bigInteger != null && intValue(this.bytes, this.start, -1) == bigInteger.intValue() && getValue().equals(bigInteger);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive, org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        return Arrays.hashCode(this.bytes);
    }

    public int intPositiveValueExact() {
        byte[] bArr = this.bytes;
        int length = bArr.length;
        int r22 = this.start;
        int r12 = length - r22;
        if (r12 > 4 || (r12 == 4 && (bArr[r22] & ISOFileInfo.DATA_BYTES1) != 0)) {
            throw new ArithmeticException("ASN.1 Integer out of positive int range");
        }
        return intValue(bArr, r22, 255);
    }

    public int intValueExact() {
        byte[] bArr = this.bytes;
        int length = bArr.length;
        int r22 = this.start;
        if (length - r22 <= 4) {
            return intValue(bArr, r22, -1);
        }
        throw new ArithmeticException("ASN.1 Integer out of int range");
    }

    public long longValueExact() {
        byte[] bArr = this.bytes;
        int length = bArr.length;
        int r22 = this.start;
        if (length - r22 <= 8) {
            return longValue(bArr, r22, -1);
        }
        throw new ArithmeticException("ASN.1 Integer out of long range");
    }

    public String toString() {
        return getValue().toString();
    }
}
