package org.bouncycastle.crypto.paddings;

import java.security.SecureRandom;
import org.bouncycastle.crypto.InvalidCipherTextException;

/* loaded from: classes2.dex */
public class ZeroBytePadding implements BlockCipherPadding {
    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public int addPadding(byte[] bArr, int r42) {
        int length = bArr.length - r42;
        while (r42 < bArr.length) {
            bArr[r42] = 0;
            r42++;
        }
        return length;
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public String getPaddingName() {
        return "ZeroByte";
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public void init(SecureRandom secureRandom) throws IllegalArgumentException {
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public int padCount(byte[] bArr) throws InvalidCipherTextException {
        int length = bArr.length;
        int r32 = 0;
        int r42 = -1;
        while (true) {
            length--;
            if (length < 0) {
                return r32;
            }
            r42 &= (((bArr[length] & 255) ^ 0) - 1) >> 31;
            r32 -= r42;
        }
    }
}
