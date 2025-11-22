package org.ejbca.cvc;

import java.math.BigInteger;

/* loaded from: classes2.dex */
public class IntegerField extends AbstractDataField {
    private static final long serialVersionUID = 1;
    private int intValue;

    public IntegerField(CVCTagEnum cVCTagEnum, int r22) {
        super(cVCTagEnum);
        this.intValue = r22;
    }

    public IntegerField(CVCTagEnum cVCTagEnum, byte[] bArr) {
        super(cVCTagEnum);
        if (bArr == null || bArr.length <= 4) {
            this.intValue = new BigInteger(1, bArr).intValue();
        } else {
            throw new IllegalArgumentException("Byte array too long, max is 4, was " + bArr.length);
        }
    }

    @Override // org.ejbca.cvc.AbstractDataField
    public byte[] getEncoded() {
        return CVCObject.toByteArray(Integer.valueOf(this.intValue));
    }

    public int getValue() {
        return this.intValue;
    }

    public void setValue(int r12) {
        this.intValue = r12;
    }

    @Override // org.ejbca.cvc.AbstractDataField
    public String valueAsText() {
        return "" + this.intValue;
    }
}
