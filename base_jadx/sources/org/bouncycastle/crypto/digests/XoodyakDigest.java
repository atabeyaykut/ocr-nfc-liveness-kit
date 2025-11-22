package org.bouncycastle.crypto.digests;

import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class XoodyakDigest implements Digest {
    private int Rabsorb;
    private MODE mode;
    private int phase;
    private final int f_bPrime = 48;
    private final int Rhash = 16;
    private final int PhaseDown = 1;
    private final int PhaseUp = 2;
    private final int NLANES = 12;
    private final int NROWS = 3;
    private final int NCOLUMS = 4;
    private final int MAXROUNDS = 12;
    private final int TAGLEN = 16;
    private final int[] RC = {88, 56, 960, 208, 288, 20, 96, 44, 896, 240, 416, 18};
    private final ByteArrayOutputStream buffer = new ByteArrayOutputStream();
    private byte[] state = new byte[48];

    public enum MODE {
        ModeHash,
        ModeKeyed
    }

    public XoodyakDigest() {
        reset();
    }

    private int ROTL32(int r22, int r32) {
        return (r22 >>> ((32 - r32) & 31)) ^ (r22 << (r32 & 31));
    }

    private void Up(byte[] bArr, int r20, int r21, int r22) {
        int r13;
        if (this.mode != MODE.ModeHash) {
            byte[] bArr2 = this.state;
            bArr2[47] = (byte) (bArr2[47] ^ r22);
        }
        int r23 = 12;
        int[] r32 = new int[12];
        Pack.littleEndianToInt(this.state, 0, r32, 0, 12);
        int[] r42 = new int[12];
        int[] r72 = new int[4];
        int[] r82 = new int[4];
        for (int r92 = 0; r92 < r23; r92++) {
            for (int r11 = 0; r11 < 4; r11++) {
                r72[r11] = (r32[index(r11, 1)] ^ r32[index(r11, 0)]) ^ r32[index(r11, 2)];
            }
            int r112 = 0;
            while (true) {
                r13 = 3;
                if (r112 >= 4) {
                    break;
                }
                int r132 = r72[3 & (r112 + 3)];
                r82[r112] = ROTL32(r132, 14) ^ ROTL32(r132, 5);
                r112++;
            }
            for (int r113 = 0; r113 < 4; r113++) {
                for (int r14 = 0; r14 < 3; r14++) {
                    int r15 = index(r113, r14);
                    r32[r15] = r32[r15] ^ r82[r113];
                }
            }
            for (int r114 = 0; r114 < 4; r114++) {
                r42[index(r114, 0)] = r32[index(r114, 0)];
                r42[index(r114, 1)] = r32[index(r114 + 3, 1)];
                r42[index(r114, 2)] = ROTL32(r32[index(r114, 2)], 11);
            }
            r42[0] = r42[0] ^ this.RC[r92];
            int r24 = 0;
            while (r24 < 4) {
                int r115 = 0;
                while (r115 < r13) {
                    int r133 = r115 + 1;
                    r32[index(r24, r115)] = ((~r42[index(r24, r133)]) & r42[index(r24, r115 + 2)]) ^ r42[index(r24, r115)];
                    r115 = r133;
                    r13 = 3;
                }
                r24++;
                r13 = 3;
            }
            for (int r25 = 0; r25 < 4; r25++) {
                r42[index(r25, 0)] = r32[index(r25, 0)];
                r42[index(r25, 1)] = ROTL32(r32[index(r25, 1)], 1);
                r42[index(r25, 2)] = ROTL32(r32[index(r25 + 2, 2)], 8);
            }
            r23 = 12;
            System.arraycopy(r42, 0, r32, 0, 12);
        }
        Pack.intToLittleEndian(r32, 0, r23, this.state, 0);
        this.phase = 2;
        if (bArr != null) {
            System.arraycopy(this.state, 0, bArr, r20, r21);
        }
    }

    private int index(int r12, int r22) {
        return (r12 % 4) + ((r22 % 3) * 4);
    }

    public void Down(byte[] bArr, int r6, int r72, int r82) {
        int r02 = 0;
        while (r02 < r72) {
            byte[] bArr2 = this.state;
            bArr2[r02] = (byte) (bArr[r6] ^ bArr2[r02]);
            r02++;
            r6++;
        }
        byte[] bArr3 = this.state;
        bArr3[r72] = (byte) (bArr3[r72] ^ 1);
        byte b10 = bArr3[47];
        if (this.mode == MODE.ModeHash) {
            r82 &= 1;
        }
        bArr3[47] = (byte) (b10 ^ r82);
        this.phase = 1;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r10) {
        if (r10 + 32 > bArr.length) {
            throw new OutputLengthException("output buffer is too short");
        }
        byte[] byteArray = this.buffer.toByteArray();
        int size = this.buffer.size();
        int r32 = 3;
        int r42 = 0;
        while (true) {
            if (this.phase != 2) {
                Up(null, 0, 0, 0);
            }
            int r52 = Math.min(size, this.Rabsorb);
            Down(byteArray, r42, r52, r32);
            r42 += r52;
            size -= r52;
            if (size == 0) {
                Up(bArr, r10, 16, 64);
                Down(null, 0, 0, 0);
                Up(bArr, r10 + 16, 16, 0);
                return 32;
            }
            r32 = 0;
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "Xoodyak Hash";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 32;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        Arrays.fill(this.state, (byte) 0);
        this.phase = 2;
        this.mode = MODE.ModeHash;
        this.Rabsorb = 16;
        this.buffer.reset();
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        this.buffer.write(b10);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int r42, int r52) {
        if (r42 + r52 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        this.buffer.write(bArr, r42, r52);
    }
}
