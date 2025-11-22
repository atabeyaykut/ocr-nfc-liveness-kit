package org.bouncycastle.crypto.digests;

import java.io.ByteArrayOutputStream;
import java.lang.reflect.Array;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Bytes;
import org.jmrtd.PassportService;

/* loaded from: classes2.dex */
public class PhotonBeetleDigest implements Digest {
    private ByteArrayOutputStream buffer = new ByteArrayOutputStream();
    private final int INITIAL_RATE_INBYTES = 16;
    private int RATE_INBYTES = 4;
    private int SQUEEZE_RATE_INBYTES = 16;
    private int STATE_INBYTES = 32;
    private int TAG_INBYTES = 32;
    private int LAST_THREE_BITS_OFFSET = 5;
    private int ROUND = 12;
    private int D = 8;
    private int Dq = 3;
    private int Dr = 7;
    private int DSquare = 64;
    private int S = 4;
    private int S_1 = 3;
    private byte[][] RC = {new byte[]{1, 3, 7, 14, PassportService.SFI_DG13, PassportService.SFI_DG11, 6, PassportService.SFI_DG12, 9, 2, 5, 10}, new byte[]{0, 2, 6, PassportService.SFI_DG15, PassportService.SFI_DG12, 10, 7, PassportService.SFI_DG13, 8, 3, 4, PassportService.SFI_DG11}, new byte[]{2, 0, 4, PassportService.SFI_DG13, 14, 8, 5, PassportService.SFI_DG15, 10, 1, 6, 9}, new byte[]{6, 4, 0, 9, 10, PassportService.SFI_DG12, 1, PassportService.SFI_DG11, 14, 5, 2, PassportService.SFI_DG13}, new byte[]{14, PassportService.SFI_DG12, 8, 1, 2, 4, 9, 3, 6, PassportService.SFI_DG13, 10, 5}, new byte[]{PassportService.SFI_DG15, PassportService.SFI_DG13, 9, 0, 3, 5, 8, 2, 7, PassportService.SFI_DG12, PassportService.SFI_DG11, 4}, new byte[]{PassportService.SFI_DG13, PassportService.SFI_DG15, PassportService.SFI_DG11, 2, 1, 7, 10, 0, 5, 14, 9, 6}, new byte[]{9, PassportService.SFI_DG11, PassportService.SFI_DG15, 6, 5, 3, 14, 4, 1, 10, PassportService.SFI_DG13, 2}};
    private byte[][] MixColMatrix = {new byte[]{2, 4, 2, PassportService.SFI_DG11, 2, 8, 5, 6}, new byte[]{PassportService.SFI_DG12, 9, 8, PassportService.SFI_DG13, 7, 7, 5, 2}, new byte[]{4, 4, PassportService.SFI_DG13, PassportService.SFI_DG13, 9, 4, PassportService.SFI_DG13, 9}, new byte[]{1, 6, 5, 1, PassportService.SFI_DG12, PassportService.SFI_DG13, PassportService.SFI_DG15, 14}, new byte[]{PassportService.SFI_DG15, PassportService.SFI_DG12, 9, PassportService.SFI_DG13, 14, 5, 14, PassportService.SFI_DG13}, new byte[]{9, 14, 5, PassportService.SFI_DG15, 4, PassportService.SFI_DG12, 9, 6}, new byte[]{PassportService.SFI_DG12, 2, 2, 10, 3, 1, 1, 14}, new byte[]{PassportService.SFI_DG15, 1, PassportService.SFI_DG13, 10, 5, 10, 2, 3}};
    private byte[] sbox = {PassportService.SFI_DG12, 5, 6, PassportService.SFI_DG11, 9, 0, 10, PassportService.SFI_DG13, 3, 14, PassportService.SFI_DG15, 8, 4, 7, 1, 2};
    private byte[] state = new byte[32];
    private byte[][] state_2d = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 8, 8);

    public void PHOTON_Permutation() {
        for (int r12 = 0; r12 < this.DSquare; r12++) {
            this.state_2d[r12 >>> this.Dq][this.Dr & r12] = (byte) (((this.state[r12 >> 1] & 255) >>> ((r12 & 1) * 4)) & 15);
        }
        for (int r13 = 0; r13 < this.ROUND; r13++) {
            for (int r22 = 0; r22 < this.D; r22++) {
                byte[] bArr = this.state_2d[r22];
                bArr[0] = (byte) (bArr[0] ^ this.RC[r22][r13]);
            }
            for (int r23 = 0; r23 < this.D; r23++) {
                for (int r32 = 0; r32 < this.D; r32++) {
                    byte[] bArr2 = this.state_2d[r23];
                    bArr2[r32] = this.sbox[bArr2[r32]];
                }
            }
            int r33 = 1;
            while (true) {
                int r42 = this.D;
                if (r33 >= r42) {
                    break;
                }
                System.arraycopy(this.state_2d[r33], 0, this.state, 0, r42);
                System.arraycopy(this.state, r33, this.state_2d[r33], 0, this.D - r33);
                System.arraycopy(this.state, 0, this.state_2d[r33], this.D - r33, r33);
                r33++;
            }
            for (int r34 = 0; r34 < this.D; r34++) {
                for (int r43 = 0; r43 < this.D; r43++) {
                    byte b10 = 0;
                    for (int r52 = 0; r52 < this.D; r52++) {
                        int r72 = this.MixColMatrix[r43][r52];
                        byte b11 = this.state_2d[r52][r34];
                        int r10 = 0;
                        for (int r92 = 0; r92 < this.S; r92++) {
                            if (((b11 >>> r92) & 1) != 0) {
                                r10 ^= r72;
                            }
                            int r11 = (r72 >>> this.S_1) & 1;
                            r72 <<= 1;
                            if (r11 != 0) {
                                r72 ^= 3;
                            }
                        }
                        b10 = (byte) (b10 ^ (r10 & 15));
                    }
                    this.state[r43] = b10;
                }
                for (int r44 = 0; r44 < this.D; r44++) {
                    this.state_2d[r44][r34] = this.state[r44];
                }
            }
        }
        for (int r02 = 0; r02 < this.DSquare; r02 += 2) {
            byte[][] bArr3 = this.state_2d;
            int r45 = this.Dq;
            byte[] bArr4 = bArr3[r02 >>> r45];
            int r6 = this.Dr;
            this.state[r02 >>> 1] = (byte) (((bArr3[r02 >>> r45][(r02 + 1) & r6] & PassportService.SFI_DG15) << 4) | (bArr4[r02 & r6] & PassportService.SFI_DG15));
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r12) {
        if (r12 + 32 > bArr.length) {
            throw new OutputLengthException("output buffer is too short");
        }
        byte[] byteArray = this.buffer.toByteArray();
        int length = byteArray.length;
        if (length == 0) {
            byte[] bArr2 = this.state;
            int r13 = this.STATE_INBYTES - 1;
            bArr2[r13] = (byte) ((1 << this.LAST_THREE_BITS_OFFSET) ^ bArr2[r13]);
        } else {
            byte[] bArr3 = this.state;
            if (length <= 16) {
                System.arraycopy(byteArray, 0, bArr3, 0, length);
                if (length < 16) {
                    byte[] bArr4 = this.state;
                    bArr4[length] = (byte) (bArr4[length] ^ 1);
                }
                byte[] bArr5 = this.state;
                int r52 = this.STATE_INBYTES - 1;
                bArr5[r52] = (byte) (((length >= 16 ? 2 : 1) << this.LAST_THREE_BITS_OFFSET) ^ bArr5[r52]);
            } else {
                System.arraycopy(byteArray, 0, bArr3, 0, 16);
                int r14 = length - 16;
                int r53 = this.RATE_INBYTES;
                int r6 = ((r14 + r53) - 1) / r53;
                int r54 = 0;
                while (true) {
                    int r72 = r6 - 1;
                    PHOTON_Permutation();
                    if (r54 >= r72) {
                        break;
                    }
                    int r73 = this.RATE_INBYTES;
                    Bytes.xorTo(r73, byteArray, (r54 * r73) + 16, this.state, 0);
                    r54++;
                }
                int r62 = this.RATE_INBYTES;
                int r74 = r14 - (r54 * r62);
                Bytes.xorTo(r74, byteArray, (r54 * r62) + 16, this.state, 0);
                int r02 = this.RATE_INBYTES;
                if (r74 < r02) {
                    byte[] bArr6 = this.state;
                    bArr6[r74] = (byte) (bArr6[r74] ^ 1);
                }
                byte[] bArr7 = this.state;
                int r55 = this.STATE_INBYTES - 1;
                bArr7[r55] = (byte) (((r14 % r02 != 0 ? 2 : 1) << this.LAST_THREE_BITS_OFFSET) ^ bArr7[r55]);
            }
        }
        PHOTON_Permutation();
        System.arraycopy(this.state, 0, bArr, r12, this.SQUEEZE_RATE_INBYTES);
        PHOTON_Permutation();
        byte[] bArr8 = this.state;
        int r15 = this.SQUEEZE_RATE_INBYTES;
        System.arraycopy(bArr8, 0, bArr, r12 + r15, this.TAG_INBYTES - r15);
        return this.TAG_INBYTES;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "Photon-Beetle Hash";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.TAG_INBYTES;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.buffer.reset();
        Arrays.fill(this.state, (byte) 0);
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
