package org.bouncycastle.crypto.paddings;

import java.security.SecureRandom;
import org.bouncycastle.crypto.InvalidCipherTextException;

/* loaded from: classes2.dex */
public class PKCS7Padding implements BlockCipherPadding {
    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public int addPadding(byte[] bArr, int r42) {
        byte length = (byte) (bArr.length - r42);
        while (r42 < bArr.length) {
            bArr[r42] = length;
            r42++;
        }
        return length;
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public String getPaddingName() {
        return "PKCS7";
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public void init(SecureRandom secureRandom) throws IllegalArgumentException {
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public int padCount(byte[] bArr) throws InvalidCipherTextException {
        byte b10 = bArr[bArr.length - 1];
        int r12 = b10 & 255;
        int length = bArr.length - r12;
        int r32 = ((r12 - 1) | length) >> 31;
        for (int r42 = 0; r42 < bArr.length; r42++) {
            r32 |= (bArr[r42] ^ b10) & (~((r42 - length) >> 31));
        }
        if (r32 == 0) {
            return r12;
        }
        throw new InvalidCipherTextException("pad block corrupted");
    }
}
