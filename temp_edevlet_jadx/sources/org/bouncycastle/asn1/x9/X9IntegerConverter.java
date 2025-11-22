package org.bouncycastle.asn1.x9;

import java.math.BigInteger;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;

/* loaded from: classes2.dex */
public class X9IntegerConverter {
    public int getByteLength(ECCurve eCCurve) {
        return (eCCurve.getFieldSize() + 7) / 8;
    }

    public int getByteLength(ECFieldElement eCFieldElement) {
        return (eCFieldElement.getFieldSize() + 7) / 8;
    }

    public byte[] integerToBytes(BigInteger bigInteger, int r52) {
        byte[] byteArray = bigInteger.toByteArray();
        if (r52 < byteArray.length) {
            byte[] bArr = new byte[r52];
            System.arraycopy(byteArray, byteArray.length - r52, bArr, 0, r52);
            return bArr;
        }
        if (r52 <= byteArray.length) {
            return byteArray;
        }
        byte[] bArr2 = new byte[r52];
        System.arraycopy(byteArray, 0, bArr2, r52 - byteArray.length, byteArray.length);
        return bArr2;
    }
}
