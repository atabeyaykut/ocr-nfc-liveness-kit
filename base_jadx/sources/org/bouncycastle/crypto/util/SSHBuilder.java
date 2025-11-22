package org.bouncycastle.crypto.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import org.bouncycastle.util.Strings;

/* loaded from: classes2.dex */
class SSHBuilder {
    private final ByteArrayOutputStream bos = new ByteArrayOutputStream();

    public byte[] getBytes() {
        return this.bos.toByteArray();
    }

    public byte[] getPaddedBytes() {
        return getPaddedBytes(8);
    }

    public byte[] getPaddedBytes(int r32) {
        int size = this.bos.size() % r32;
        if (size != 0) {
            int r33 = r32 - size;
            for (int r02 = 1; r02 <= r33; r02++) {
                this.bos.write(r02);
            }
        }
        return this.bos.toByteArray();
    }

    public void u32(int r32) {
        this.bos.write((r32 >>> 24) & 255);
        this.bos.write((r32 >>> 16) & 255);
        this.bos.write((r32 >>> 8) & 255);
        this.bos.write(r32 & 255);
    }

    public void writeBigNum(BigInteger bigInteger) throws IOException {
        writeBlock(bigInteger.toByteArray());
    }

    public void writeBlock(byte[] bArr) throws IOException {
        u32(bArr.length);
        try {
            this.bos.write(bArr);
        } catch (IOException e10) {
            throw new IllegalStateException(e10.getMessage(), e10);
        }
    }

    public void writeBytes(byte[] bArr) throws IOException {
        try {
            this.bos.write(bArr);
        } catch (IOException e10) {
            throw new IllegalStateException(e10.getMessage(), e10);
        }
    }

    public void writeString(String str) throws IOException {
        writeBlock(Strings.toByteArray(str));
    }
}
