package org.bouncycastle.oer;

import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class BitBuilder {
    private static final byte[] bits = {ISOFileInfo.DATA_BYTES1, 64, ISO7816.INS_VERIFY, 16, 8, 4, 2, 1};
    byte[] buf = new byte[1];
    int pos = 0;

    public void pad() {
        int r02 = this.pos;
        this.pos = (r02 % 8) + r02;
    }

    public int write(OutputStream outputStream) throws IOException {
        int r02 = this.pos;
        int r12 = ((r02 % 8) + r02) / 8;
        outputStream.write(this.buf, 0, r12);
        outputStream.flush();
        return r12;
    }

    public void write7BitBytes(int r82) {
        boolean z10 = false;
        for (int r12 = 4; r12 >= 0; r12--) {
            if (!z10 && ((-33554432) & r82) != 0) {
                z10 = true;
            }
            if (z10) {
                writeBit(r12).writeBits(r82, 32, 7);
            }
            r82 <<= 7;
        }
    }

    public void write7BitBytes(BigInteger bigInteger) {
        int r12 = ((bigInteger.bitLength() % 8) + bigInteger.bitLength()) / 8;
        BigInteger bigIntegerShiftLeft = BigInteger.valueOf(254L).shiftLeft(r12 * 8);
        boolean z10 = false;
        while (r12 >= 0) {
            if (!z10 && bigInteger.and(bigIntegerShiftLeft).compareTo(BigInteger.ZERO) != 0) {
                z10 = true;
            }
            if (z10) {
                writeBit(r12).writeBits(bigInteger.and(bigIntegerShiftLeft).shiftRight(r3 - 8).intValue(), 8, 7);
            }
            bigInteger = bigInteger.shiftLeft(7);
            r12--;
        }
    }

    public int writeAndClear(OutputStream outputStream) throws IOException {
        int r02 = this.pos;
        int r12 = ((r02 % 8) + r02) / 8;
        outputStream.write(this.buf, 0, r12);
        outputStream.flush();
        zero();
        return r12;
    }

    public BitBuilder writeBit(int r52) {
        int r02 = this.pos;
        int r12 = r02 / 8;
        byte[] bArr = this.buf;
        if (r12 >= bArr.length) {
            byte[] bArr2 = new byte[bArr.length + 4];
            System.arraycopy(bArr, 0, bArr2, 0, r02 / 8);
            Arrays.clear(this.buf);
            this.buf = bArr2;
        }
        if (r52 == 0) {
            byte[] bArr3 = this.buf;
            int r03 = this.pos;
            int r13 = r03 / 8;
            bArr3[r13] = (byte) ((~bits[r03 % 8]) & bArr3[r13]);
        } else {
            byte[] bArr4 = this.buf;
            int r04 = this.pos;
            int r14 = r04 / 8;
            bArr4[r14] = (byte) (bits[r04 % 8] | bArr4[r14]);
        }
        this.pos++;
        return this;
    }

    public BitBuilder writeBits(long j10, int r92) {
        for (int r93 = r92 - 1; r93 >= 0; r93--) {
            writeBit(((1 << r93) & j10) > 0 ? 1 : 0);
        }
        return this;
    }

    public BitBuilder writeBits(long j10, int r92, int r10) {
        for (int r02 = r92 - 1; r02 >= r92 - r10; r02--) {
            writeBit(((1 << r02) & j10) != 0 ? 1 : 0);
        }
        return this;
    }

    public void zero() {
        Arrays.clear(this.buf);
        this.pos = 0;
    }
}
