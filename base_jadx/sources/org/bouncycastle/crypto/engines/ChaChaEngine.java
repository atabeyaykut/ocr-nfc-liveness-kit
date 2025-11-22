package org.bouncycastle.crypto.engines;

import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class ChaChaEngine extends Salsa20Engine {
    public ChaChaEngine() {
    }

    public ChaChaEngine(int r12) {
        super(r12);
    }

    public static void chachaCore(int r33, int[] r34, int[] r35) {
        int r32 = 16;
        if (r34.length != 16) {
            throw new IllegalArgumentException();
        }
        if (r35.length != 16) {
            throw new IllegalArgumentException();
        }
        if (r33 % 2 != 0) {
            throw new IllegalArgumentException("Number of rounds must be even");
        }
        char c10 = 0;
        int r42 = r34[0];
        int r6 = r34[1];
        int r82 = r34[2];
        int r10 = r34[3];
        int r12 = r34[4];
        int r14 = r34[5];
        int r16 = r34[6];
        int r15 = 7;
        int r17 = r34[7];
        int r13 = 8;
        int r18 = r34[8];
        int r20 = r34[9];
        int r22 = r34[10];
        int r24 = r34[11];
        int r11 = 12;
        int r25 = r34[12];
        int r27 = r34[13];
        int r29 = r34[14];
        int r322 = r34[15];
        int r31 = r29;
        int r292 = r27;
        int r272 = r25;
        int r252 = r24;
        int r242 = r22;
        int r222 = r20;
        int r202 = r18;
        int r182 = r17;
        int r172 = r16;
        int r162 = r14;
        int r142 = r12;
        int r122 = r10;
        int r102 = r82;
        int r83 = r6;
        int r62 = r42;
        int r43 = r33;
        while (r43 > 0) {
            int r63 = r62 + r142;
            int r92 = Integers.rotateLeft(r272 ^ r63, r32);
            int r203 = r202 + r92;
            int r143 = Integers.rotateLeft(r142 ^ r203, r11);
            int r64 = r63 + r143;
            int r93 = Integers.rotateLeft(r92 ^ r64, r13);
            int r204 = r203 + r93;
            int r144 = Integers.rotateLeft(r143 ^ r204, r15);
            int r84 = r83 + r162;
            int r72 = Integers.rotateLeft(r292 ^ r84, r32);
            int r223 = r222 + r72;
            int r52 = Integers.rotateLeft(r162 ^ r223, r11);
            int r85 = r84 + r52;
            int r73 = Integers.rotateLeft(r72 ^ r85, r13);
            int r224 = r223 + r73;
            int r53 = Integers.rotateLeft(r52 ^ r224, r15);
            int r103 = r102 + r172;
            int r23 = Integers.rotateLeft(r31 ^ r103, r32);
            int r243 = r242 + r23;
            int r36 = Integers.rotateLeft(r172 ^ r243, r11);
            int r104 = r103 + r36;
            int r26 = Integers.rotateLeft(r23 ^ r104, r13);
            int r244 = r243 + r26;
            int r37 = Integers.rotateLeft(r36 ^ r244, r15);
            int r123 = r122 + r182;
            int r152 = Integers.rotateLeft(r322 ^ r123, 16);
            int r253 = r252 + r152;
            int r132 = Integers.rotateLeft(r182 ^ r253, r11);
            int r124 = r123 + r132;
            int r153 = Integers.rotateLeft(r152 ^ r124, 8);
            int r254 = r253 + r153;
            int r112 = Integers.rotateLeft(r132 ^ r254, 7);
            int r65 = r64 + r53;
            int r133 = Integers.rotateLeft(r153 ^ r65, 16);
            int r245 = r244 + r133;
            int r54 = Integers.rotateLeft(r53 ^ r245, 12);
            r62 = r65 + r54;
            r322 = Integers.rotateLeft(r133 ^ r62, 8);
            r242 = r245 + r322;
            r162 = Integers.rotateLeft(r54 ^ r242, 7);
            int r86 = r85 + r37;
            int r55 = Integers.rotateLeft(r93 ^ r86, 16);
            int r255 = r254 + r55;
            int r38 = Integers.rotateLeft(r37 ^ r255, 12);
            r83 = r86 + r38;
            r272 = Integers.rotateLeft(r55 ^ r83, 8);
            r252 = r255 + r272;
            r172 = Integers.rotateLeft(r38 ^ r252, 7);
            int r105 = r104 + r112;
            int r39 = Integers.rotateLeft(r73 ^ r105, 16);
            int r205 = r204 + r39;
            int r56 = Integers.rotateLeft(r112 ^ r205, 12);
            r102 = r105 + r56;
            r292 = Integers.rotateLeft(r39 ^ r102, 8);
            r202 = r205 + r292;
            r182 = Integers.rotateLeft(r56 ^ r202, 7);
            int r125 = r124 + r144;
            r32 = 16;
            int r28 = Integers.rotateLeft(r26 ^ r125, 16);
            int r225 = r224 + r28;
            int r57 = Integers.rotateLeft(r144 ^ r225, 12);
            r122 = r125 + r57;
            r31 = Integers.rotateLeft(r28 ^ r122, 8);
            r222 = r225 + r31;
            r142 = Integers.rotateLeft(r57 ^ r222, 7);
            r43 -= 2;
            c10 = 0;
            r11 = 12;
            r13 = 8;
            r15 = 7;
        }
        r35[c10] = r62 + r34[c10];
        r35[1] = r83 + r34[1];
        r35[2] = r102 + r34[2];
        r35[3] = r122 + r34[3];
        r35[4] = r142 + r34[4];
        r35[5] = r162 + r34[5];
        r35[6] = r172 + r34[6];
        r35[7] = r182 + r34[7];
        r35[8] = r202 + r34[8];
        r35[9] = r222 + r34[9];
        r35[10] = r242 + r34[10];
        r35[11] = r252 + r34[11];
        r35[12] = r272 + r34[12];
        r35[13] = r292 + r34[13];
        r35[14] = r31 + r34[14];
        r35[15] = r322 + r34[15];
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    public void advanceCounter() {
        int[] r02 = this.engineState;
        int r22 = r02[12] + 1;
        r02[12] = r22;
        if (r22 == 0) {
            r02[13] = r02[13] + 1;
        }
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    public void advanceCounter(long j10) {
        int r12 = (int) (j10 >>> 32);
        int r52 = (int) j10;
        if (r12 > 0) {
            int[] r02 = this.engineState;
            r02[13] = r02[13] + r12;
        }
        int[] r03 = this.engineState;
        int r22 = r03[12];
        int r53 = r52 + r22;
        r03[12] = r53;
        if (r22 == 0 || r53 >= r22) {
            return;
        }
        r03[13] = r03[13] + 1;
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    public void generateKeyStream(byte[] bArr) {
        chachaCore(this.rounds, this.engineState, this.f11534x);
        Pack.intToLittleEndian(this.f11534x, bArr, 0);
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine, org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "ChaCha" + this.rounds;
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    public long getCounter() {
        int[] r02 = this.engineState;
        return (r02[13] << 32) | (r02[12] & BodyPartID.bodyIdMax);
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    public void resetCounter() {
        int[] r02 = this.engineState;
        r02[13] = 0;
        r02[12] = 0;
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    public void retreatCounter() {
        int[] r02 = this.engineState;
        int r22 = r02[12];
        if (r22 == 0 && r02[13] == 0) {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        }
        int r23 = r22 - 1;
        r02[12] = r23;
        if (r23 == -1) {
            r02[13] = r02[13] - 1;
        }
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    public void retreatCounter(long j10) {
        int r12 = (int) (j10 >>> 32);
        int r13 = (int) j10;
        if (r12 != 0) {
            int[] r42 = this.engineState;
            int r52 = r42[13];
            if ((r52 & BodyPartID.bodyIdMax) < (r12 & BodyPartID.bodyIdMax)) {
                throw new IllegalStateException("attempt to reduce counter past zero.");
            }
            r42[13] = r52 - r12;
        }
        int[] r14 = this.engineState;
        int r53 = r14[12];
        if ((r53 & BodyPartID.bodyIdMax) >= (BodyPartID.bodyIdMax & r13)) {
            r14[12] = r53 - r13;
            return;
        }
        int r22 = r14[13];
        if (r22 == 0) {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        }
        r14[13] = r22 - 1;
        r14[12] = r53 - r13;
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    public void setKey(byte[] bArr, byte[] bArr2) {
        if (bArr != null) {
            if (bArr.length != 16 && bArr.length != 32) {
                throw new IllegalArgumentException(getAlgorithmName() + " requires 128 bit or 256 bit key");
            }
            packTauOrSigma(bArr.length, this.engineState, 0);
            Pack.littleEndianToInt(bArr, 0, this.engineState, 4, 4);
            Pack.littleEndianToInt(bArr, bArr.length - 16, this.engineState, 8, 4);
        }
        Pack.littleEndianToInt(bArr2, 0, this.engineState, 14, 2);
    }
}
