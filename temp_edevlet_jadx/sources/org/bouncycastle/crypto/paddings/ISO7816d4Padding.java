package org.bouncycastle.crypto.paddings;

import java.security.SecureRandom;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.crypto.InvalidCipherTextException;

/* loaded from: classes2.dex */
public class ISO7816d4Padding implements BlockCipherPadding {
    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public int addPadding(byte[] bArr, int r42) {
        int length = bArr.length - r42;
        bArr[r42] = ISOFileInfo.DATA_BYTES1;
        while (true) {
            r42++;
            if (r42 >= bArr.length) {
                return length;
            }
            bArr[r42] = 0;
        }
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public String getPaddingName() {
        return "ISO7816-4";
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public void init(SecureRandom secureRandom) throws IllegalArgumentException {
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public int padCount(byte[] bArr) throws InvalidCipherTextException {
        int length = bArr.length;
        int r22 = -1;
        int r32 = -1;
        while (true) {
            length--;
            if (length < 0) {
                break;
            }
            int r42 = bArr[length] & 255;
            r22 ^= ((((r42 ^ 128) - 1) >> 31) & r32) & (length ^ r22);
            r32 &= ((r42 ^ 0) - 1) >> 31;
        }
        if (r22 >= 0) {
            return bArr.length - r22;
        }
        throw new InvalidCipherTextException("pad block corrupted");
    }
}
