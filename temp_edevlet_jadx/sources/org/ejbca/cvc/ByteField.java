package org.ejbca.cvc;

import androidx.appcompat.graphics.drawable.a;
import java.math.BigInteger;
import org.ejbca.cvc.util.StringConverter;

/* loaded from: classes2.dex */
public class ByteField extends AbstractDataField {
    private static final long serialVersionUID = 1;
    private byte[] data;
    private boolean showBitLength;

    public ByteField(CVCTagEnum cVCTagEnum) {
        super(cVCTagEnum);
        this.showBitLength = false;
    }

    public ByteField(CVCTagEnum cVCTagEnum, byte[] bArr) {
        this(cVCTagEnum, bArr, false);
    }

    public ByteField(CVCTagEnum cVCTagEnum, byte[] bArr, boolean z10) {
        super(cVCTagEnum);
        this.data = bArr;
        this.showBitLength = z10;
    }

    public byte[] getData() {
        return this.data;
    }

    @Override // org.ejbca.cvc.AbstractDataField
    public byte[] getEncoded() {
        return this.data;
    }

    public boolean isShowBitLength() {
        return this.showBitLength;
    }

    public void setShowBitLength(boolean z10) {
        this.showBitLength = z10;
    }

    @Override // org.ejbca.cvc.AbstractDataField
    public String valueAsText() {
        String strF;
        if (this.showBitLength) {
            strF = a.f("[", this.data != null ? new BigInteger(1, this.data).bitLength() : 0, "]  ");
        } else {
            strF = "";
        }
        StringBuilder sbE = androidx.constraintlayout.core.a.e(strF);
        sbE.append(StringConverter.byteToHex(this.data));
        return sbE.toString();
    }
}
