package org.bouncycastle.crypto.util;

import java.math.BigInteger;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Strings;

/* loaded from: classes2.dex */
class SSHBuffer {
    private final byte[] buffer;
    private int pos = 0;

    public SSHBuffer(byte[] bArr) {
        this.buffer = bArr;
    }

    public SSHBuffer(byte[] bArr, byte[] bArr2) {
        this.buffer = bArr2;
        for (int r02 = 0; r02 != bArr.length; r02++) {
            if (bArr[r02] != bArr2[r02]) {
                throw new IllegalArgumentException("magic-number incorrect");
            }
        }
        this.pos += bArr.length;
    }

    public byte[] getBuffer() {
        return Arrays.clone(this.buffer);
    }

    public boolean hasRemaining() {
        return this.pos < this.buffer.length;
    }

    public BigInteger readBigNumPositive() {
        int u32 = readU32();
        int r12 = this.pos;
        int r22 = r12 + u32;
        byte[] bArr = this.buffer;
        if (r22 > bArr.length) {
            throw new IllegalArgumentException("not enough data for big num");
        }
        int r02 = u32 + r12;
        this.pos = r02;
        return new BigInteger(1, Arrays.copyOfRange(bArr, r12, r02));
    }

    public byte[] readBlock() {
        int u32 = readU32();
        if (u32 == 0) {
            return new byte[0];
        }
        int r12 = this.pos;
        byte[] bArr = this.buffer;
        if (r12 > bArr.length - u32) {
            throw new IllegalArgumentException("not enough data for block");
        }
        int r02 = u32 + r12;
        this.pos = r02;
        return Arrays.copyOfRange(bArr, r12, r02);
    }

    public byte[] readPaddedBlock() {
        return readPaddedBlock(8);
    }

    public byte[] readPaddedBlock(int r6) {
        int r02;
        int u32 = readU32();
        if (u32 == 0) {
            return new byte[0];
        }
        int r12 = this.pos;
        byte[] bArr = this.buffer;
        if (r12 > bArr.length - u32) {
            throw new IllegalArgumentException("not enough data for block");
        }
        if (u32 % r6 != 0) {
            throw new IllegalArgumentException("missing padding");
        }
        int r32 = r12 + u32;
        this.pos = r32;
        if (u32 > 0 && (r02 = bArr[r32 - 1] & 255) > 0 && r02 < r6) {
            r32 -= r02;
            int r62 = 1;
            int r22 = r32;
            while (r62 <= r02) {
                if (r62 != (this.buffer[r22] & 255)) {
                    throw new IllegalArgumentException("incorrect padding");
                }
                r62++;
                r22++;
            }
        }
        return Arrays.copyOfRange(this.buffer, r12, r32);
    }

    public String readString() {
        return Strings.fromByteArray(readBlock());
    }

    public int readU32() {
        int r02 = this.pos;
        byte[] bArr = this.buffer;
        if (r02 > bArr.length - 4) {
            throw new IllegalArgumentException("4 bytes for U32 exceeds buffer.");
        }
        int r22 = r02 + 1;
        int r32 = r22 + 1;
        int r03 = ((bArr[r02] & 255) << 24) | ((bArr[r22] & 255) << 16);
        int r23 = r32 + 1;
        int r04 = r03 | ((bArr[r32] & 255) << 8);
        this.pos = r23 + 1;
        return r04 | (bArr[r23] & 255);
    }

    public void skipBlock() {
        int u32 = readU32();
        int r12 = this.pos;
        if (r12 > this.buffer.length - u32) {
            throw new IllegalArgumentException("not enough data for block");
        }
        this.pos = r12 + u32;
    }
}
