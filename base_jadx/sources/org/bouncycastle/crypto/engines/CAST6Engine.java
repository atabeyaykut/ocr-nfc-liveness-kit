package org.bouncycastle.crypto.engines;

/* loaded from: classes2.dex */
public final class CAST6Engine extends CAST5Engine {
    protected static final int BLOCK_SIZE = 16;
    protected static final int ROUNDS = 12;
    protected int[] _Kr = new int[48];
    protected int[] _Km = new int[48];
    protected int[] _Tr = new int[192];
    protected int[] _Tm = new int[192];
    private int[] _workingKey = new int[8];

    public final void CAST_Decipher(int r82, int r92, int r10, int r11, int[] r12) {
        int r22;
        int r13 = 0;
        while (true) {
            if (r13 >= 6) {
                break;
            }
            int r23 = (11 - r13) * 4;
            r10 ^= F1(r11, this._Km[r23], this._Kr[r23]);
            int r52 = r23 + 1;
            r92 ^= F2(r10, this._Km[r52], this._Kr[r52]);
            int r53 = r23 + 2;
            r82 ^= F3(r92, this._Km[r53], this._Kr[r53]);
            int r24 = r23 + 3;
            r11 ^= F1(r82, this._Km[r24], this._Kr[r24]);
            r13++;
        }
        for (r22 = 6; r22 < 12; r22++) {
            int r14 = (11 - r22) * 4;
            int r54 = r14 + 3;
            r11 ^= F1(r82, this._Km[r54], this._Kr[r54]);
            int r55 = r14 + 2;
            r82 ^= F3(r92, this._Km[r55], this._Kr[r55]);
            int r56 = r14 + 1;
            r92 ^= F2(r10, this._Km[r56], this._Kr[r56]);
            r10 ^= F1(r11, this._Km[r14], this._Kr[r14]);
        }
        r12[0] = r82;
        r12[1] = r92;
        r12[2] = r10;
        r12[3] = r11;
    }

    public final void CAST_Encipher(int r82, int r92, int r10, int r11, int[] r12) {
        int r22;
        int r13 = 0;
        while (true) {
            if (r13 >= 6) {
                break;
            }
            int r23 = r13 * 4;
            r10 ^= F1(r11, this._Km[r23], this._Kr[r23]);
            int r52 = r23 + 1;
            r92 ^= F2(r10, this._Km[r52], this._Kr[r52]);
            int r53 = r23 + 2;
            r82 ^= F3(r92, this._Km[r53], this._Kr[r53]);
            int r24 = r23 + 3;
            r11 ^= F1(r82, this._Km[r24], this._Kr[r24]);
            r13++;
        }
        for (r22 = 6; r22 < 12; r22++) {
            int r14 = r22 * 4;
            int r54 = r14 + 3;
            r11 ^= F1(r82, this._Km[r54], this._Kr[r54]);
            int r55 = r14 + 2;
            r82 ^= F3(r92, this._Km[r55], this._Kr[r55]);
            int r56 = r14 + 1;
            r92 ^= F2(r10, this._Km[r56], this._Kr[r56]);
            r10 ^= F1(r11, this._Km[r14], this._Kr[r14]);
        }
        r12[0] = r82;
        r12[1] = r92;
        r12[2] = r10;
        r12[3] = r11;
    }

    @Override // org.bouncycastle.crypto.engines.CAST5Engine
    public int decryptBlock(byte[] bArr, int r92, byte[] bArr2, int r11) {
        int[] r02 = new int[4];
        CAST_Decipher(BytesTo32bits(bArr, r92), BytesTo32bits(bArr, r92 + 4), BytesTo32bits(bArr, r92 + 8), BytesTo32bits(bArr, r92 + 12), r02);
        Bits32ToBytes(r02[0], bArr2, r11);
        Bits32ToBytes(r02[1], bArr2, r11 + 4);
        Bits32ToBytes(r02[2], bArr2, r11 + 8);
        Bits32ToBytes(r02[3], bArr2, r11 + 12);
        return 16;
    }

    @Override // org.bouncycastle.crypto.engines.CAST5Engine
    public int encryptBlock(byte[] bArr, int r92, byte[] bArr2, int r11) {
        int[] r02 = new int[4];
        CAST_Encipher(BytesTo32bits(bArr, r92), BytesTo32bits(bArr, r92 + 4), BytesTo32bits(bArr, r92 + 8), BytesTo32bits(bArr, r92 + 12), r02);
        Bits32ToBytes(r02[0], bArr2, r11);
        Bits32ToBytes(r02[1], bArr2, r11 + 4);
        Bits32ToBytes(r02[2], bArr2, r11 + 8);
        Bits32ToBytes(r02[3], bArr2, r11 + 12);
        return 16;
    }

    @Override // org.bouncycastle.crypto.engines.CAST5Engine, org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "CAST6";
    }

    @Override // org.bouncycastle.crypto.engines.CAST5Engine, org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.engines.CAST5Engine, org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }

    @Override // org.bouncycastle.crypto.engines.CAST5Engine
    public void setKey(byte[] bArr) {
        int r22 = 1518500249;
        int r32 = 19;
        for (int r52 = 0; r52 < 24; r52++) {
            for (int r6 = 0; r6 < 8; r6++) {
                int r92 = (r52 * 8) + r6;
                this._Tm[r92] = r22;
                r22 += 1859775393;
                this._Tr[r92] = r32;
                r32 = (r32 + 17) & 31;
            }
        }
        byte[] bArr2 = new byte[64];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        for (int r12 = 0; r12 < 8; r12++) {
            this._workingKey[r12] = BytesTo32bits(bArr2, r12 * 4);
        }
        for (int r13 = 0; r13 < 12; r13++) {
            int r23 = r13 * 2;
            int r33 = r23 * 8;
            int[] r53 = this._workingKey;
            r53[6] = r53[6] ^ F1(r53[7], this._Tm[r33], this._Tr[r33]);
            int[] r54 = this._workingKey;
            int r132 = r33 + 1;
            r54[5] = r54[5] ^ F2(r54[6], this._Tm[r132], this._Tr[r132]);
            int[] r55 = this._workingKey;
            int r14 = r33 + 2;
            r55[4] = r55[4] ^ F3(r55[5], this._Tm[r14], this._Tr[r14]);
            int[] r56 = this._workingKey;
            int r15 = r33 + 3;
            r56[3] = F1(r56[4], this._Tm[r15], this._Tr[r15]) ^ r56[3];
            int[] r57 = this._workingKey;
            int r152 = r33 + 4;
            r57[2] = F2(r57[3], this._Tm[r152], this._Tr[r152]) ^ r57[2];
            int[] r58 = this._workingKey;
            int r153 = r33 + 5;
            r58[1] = F3(r58[2], this._Tm[r153], this._Tr[r153]) ^ r58[1];
            int[] r59 = this._workingKey;
            int r142 = r33 + 6;
            r59[0] = r59[0] ^ F1(r59[1], this._Tm[r142], this._Tr[r142]);
            int[] r510 = this._workingKey;
            int r34 = r33 + 7;
            r510[7] = F2(r510[0], this._Tm[r34], this._Tr[r34]) ^ r510[7];
            int r24 = (r23 + 1) * 8;
            int[] r35 = this._workingKey;
            r35[6] = r35[6] ^ F1(r35[7], this._Tm[r24], this._Tr[r24]);
            int[] r36 = this._workingKey;
            int r133 = r24 + 1;
            r36[5] = r36[5] ^ F2(r36[6], this._Tm[r133], this._Tr[r133]);
            int[] r37 = this._workingKey;
            int r143 = r24 + 2;
            r37[4] = r37[4] ^ F3(r37[5], this._Tm[r143], this._Tr[r143]);
            int[] r38 = this._workingKey;
            int r144 = r24 + 3;
            r38[3] = F1(r38[4], this._Tm[r144], this._Tr[r144]) ^ r38[3];
            int[] r39 = this._workingKey;
            int r145 = r24 + 4;
            r39[2] = F2(r39[3], this._Tm[r145], this._Tr[r145]) ^ r39[2];
            int[] r310 = this._workingKey;
            int r134 = r24 + 5;
            r310[1] = F3(r310[2], this._Tm[r134], this._Tr[r134]) ^ r310[1];
            int[] r311 = this._workingKey;
            int r135 = r24 + 6;
            r311[0] = r311[0] ^ F1(r311[1], this._Tm[r135], this._Tr[r135]);
            int[] r312 = this._workingKey;
            int r25 = r24 + 7;
            r312[7] = F2(r312[0], this._Tm[r25], this._Tr[r25]) ^ r312[7];
            int[] r26 = this._Kr;
            int r313 = r13 * 4;
            int[] r511 = this._workingKey;
            r26[r313] = r511[0] & 31;
            int r10 = r313 + 1;
            r26[r10] = r511[2] & 31;
            int r122 = r313 + 2;
            r26[r122] = r511[4] & 31;
            int r136 = r313 + 3;
            r26[r136] = r511[6] & 31;
            int[] r27 = this._Km;
            r27[r313] = r511[7];
            r27[r10] = r511[5];
            r27[r122] = r511[3];
            r27[r136] = r511[1];
        }
    }
}
