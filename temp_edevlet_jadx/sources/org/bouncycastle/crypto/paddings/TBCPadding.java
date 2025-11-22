package org.bouncycastle.crypto.paddings;

import java.security.SecureRandom;
import org.bouncycastle.crypto.InvalidCipherTextException;

/* loaded from: classes2.dex */
public class TBCPadding implements BlockCipherPadding {
    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public int addPadding(byte[] bArr, int r6) {
        int length = bArr.length - r6;
        int r12 = 255;
        if (r6 <= 0 ? (bArr[bArr.length - 1] & 1) != 0 : (bArr[r6 - 1] & 1) != 0) {
            r12 = 0;
        }
        byte b10 = (byte) r12;
        while (r6 < bArr.length) {
            bArr[r6] = b10;
            r6++;
        }
        return length;
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public String getPaddingName() {
        return "TBC";
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public void init(SecureRandom secureRandom) throws IllegalArgumentException {
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public int padCount(byte[] bArr) throws InvalidCipherTextException {
        int length = bArr.length - 1;
        int r22 = bArr[length] & 255;
        int r42 = 1;
        int r52 = -1;
        while (true) {
            length--;
            if (length < 0) {
                return r42;
            }
            r52 &= (((bArr[length] & 255) ^ r22) - 1) >> 31;
            r42 -= r52;
        }
    }
}
