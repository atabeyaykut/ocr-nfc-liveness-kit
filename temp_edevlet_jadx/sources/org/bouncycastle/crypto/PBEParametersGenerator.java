package org.bouncycastle.crypto;

import org.bouncycastle.util.Strings;

/* loaded from: classes2.dex */
public abstract class PBEParametersGenerator {
    protected int iterationCount;
    protected byte[] password;
    protected byte[] salt;

    public static byte[] PKCS12PasswordToBytes(char[] cArr) {
        if (cArr == null || cArr.length <= 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[(cArr.length + 1) * 2];
        for (int r02 = 0; r02 != cArr.length; r02++) {
            int r22 = r02 * 2;
            char c10 = cArr[r02];
            bArr[r22] = (byte) (c10 >>> '\b');
            bArr[r22 + 1] = (byte) c10;
        }
        return bArr;
    }

    public static byte[] PKCS5PasswordToBytes(char[] cArr) {
        if (cArr == null) {
            return new byte[0];
        }
        int length = cArr.length;
        byte[] bArr = new byte[length];
        for (int r02 = 0; r02 != length; r02++) {
            bArr[r02] = (byte) cArr[r02];
        }
        return bArr;
    }

    public static byte[] PKCS5PasswordToUTF8Bytes(char[] cArr) {
        return cArr != null ? Strings.toUTF8ByteArray(cArr) : new byte[0];
    }

    public abstract CipherParameters generateDerivedMacParameters(int r12);

    public abstract CipherParameters generateDerivedParameters(int r12);

    public abstract CipherParameters generateDerivedParameters(int r12, int r22);

    public int getIterationCount() {
        return this.iterationCount;
    }

    public byte[] getPassword() {
        return this.password;
    }

    public byte[] getSalt() {
        return this.salt;
    }

    public void init(byte[] bArr, byte[] bArr2, int r32) {
        this.password = bArr;
        this.salt = bArr2;
        this.iterationCount = r32;
    }
}
