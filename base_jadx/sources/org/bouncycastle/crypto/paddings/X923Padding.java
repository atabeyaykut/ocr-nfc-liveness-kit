package org.bouncycastle.crypto.paddings;

import java.security.SecureRandom;
import org.bouncycastle.crypto.InvalidCipherTextException;

/* loaded from: classes2.dex */
public class X923Padding implements BlockCipherPadding {
    SecureRandom random = null;

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public int addPadding(byte[] bArr, int r42) {
        byte length = (byte) (bArr.length - r42);
        while (r42 < bArr.length - 1) {
            SecureRandom secureRandom = this.random;
            if (secureRandom == null) {
                bArr[r42] = 0;
            } else {
                bArr[r42] = (byte) secureRandom.nextInt();
            }
            r42++;
        }
        bArr[r42] = length;
        return length;
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public String getPaddingName() {
        return "X9.23";
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public void init(SecureRandom secureRandom) throws IllegalArgumentException {
        this.random = secureRandom;
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public int padCount(byte[] bArr) throws InvalidCipherTextException {
        int r02 = bArr[bArr.length - 1] & 255;
        if ((((bArr.length - r02) | (r02 - 1)) >> 31) == 0) {
            return r02;
        }
        throw new InvalidCipherTextException("pad block corrupted");
    }
}
