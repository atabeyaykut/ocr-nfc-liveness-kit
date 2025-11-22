package org.bouncycastle.crypto.params;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class KeyParameter implements CipherParameters {
    private byte[] key;

    private KeyParameter(int r12) {
        this.key = new byte[r12];
    }

    public KeyParameter(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    public KeyParameter(byte[] bArr, int r42, int r52) {
        this(r52);
        System.arraycopy(bArr, r42, this.key, 0, r52);
    }

    public void copyTo(byte[] bArr, int r42, int r52) {
        byte[] bArr2 = this.key;
        if (bArr2.length != r52) {
            throw new IllegalArgumentException("len");
        }
        System.arraycopy(bArr2, 0, bArr, r42, r52);
    }

    public byte[] getKey() {
        return this.key;
    }

    public int getKeyLength() {
        return this.key.length;
    }

    public KeyParameter reverse() {
        KeyParameter keyParameter = new KeyParameter(this.key.length);
        Arrays.reverse(this.key, keyParameter.key);
        return keyParameter;
    }
}
