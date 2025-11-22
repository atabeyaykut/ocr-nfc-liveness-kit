package org.bouncycastle.crypto.engines;

import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.MaxBytesExceededException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.SkippingStreamCipher;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;
import org.bouncycastle.util.Strings;

/* loaded from: classes2.dex */
public class Salsa20Engine implements SkippingStreamCipher {
    public static final int DEFAULT_ROUNDS = 20;
    private static final int STATE_SIZE = 16;
    private static final int[] TAU_SIGMA = Pack.littleEndianToInt(Strings.toByteArray("expand 16-byte kexpand 32-byte k"), 0, 8);
    protected static final byte[] sigma = Strings.toByteArray("expand 32-byte k");
    protected static final byte[] tau = Strings.toByteArray("expand 16-byte k");
    private int cW0;
    private int cW1;
    private int cW2;
    protected int[] engineState;
    private int index;
    private boolean initialised;
    private byte[] keyStream;
    protected int rounds;

    /* renamed from: x, reason: collision with root package name */
    protected int[] f11534x;

    public Salsa20Engine() {
        this(20);
    }

    public Salsa20Engine(int r42) {
        this.index = 0;
        this.engineState = new int[16];
        this.f11534x = new int[16];
        this.keyStream = new byte[64];
        this.initialised = false;
        if (r42 <= 0 || (r42 & 1) != 0) {
            throw new IllegalArgumentException("'rounds' must be a positive, even number");
        }
        this.rounds = r42;
    }

    private boolean limitExceeded() {
        int r02 = this.cW0 + 1;
        this.cW0 = r02;
        if (r02 == 0) {
            int r03 = this.cW1 + 1;
            this.cW1 = r03;
            if (r03 == 0) {
                int r04 = this.cW2 + 1;
                this.cW2 = r04;
                return (r04 & 32) != 0;
            }
        }
        return false;
    }

    private boolean limitExceeded(int r32) {
        int r02 = this.cW0 + r32;
        this.cW0 = r02;
        if (r02 >= r32 || r02 < 0) {
            return false;
        }
        int r33 = this.cW1 + 1;
        this.cW1 = r33;
        if (r33 != 0) {
            return false;
        }
        int r34 = this.cW2 + 1;
        this.cW2 = r34;
        return (r34 & 32) != 0;
    }

    private void resetLimitCounter() {
        this.cW0 = 0;
        this.cW1 = 0;
        this.cW2 = 0;
    }

    public static void salsaCore(int r33, int[] r34, int[] r35) {
        if (r34.length != 16) {
            throw new IllegalArgumentException();
        }
        if (r35.length != 16) {
            throw new IllegalArgumentException();
        }
        if (r33 % 2 != 0) {
            throw new IllegalArgumentException("Number of rounds must be even");
        }
        int r32 = r34[0];
        int r52 = r34[1];
        int r72 = r34[2];
        int r92 = r34[3];
        int r11 = r34[4];
        int r13 = r34[5];
        int r15 = r34[6];
        int r14 = 7;
        int r16 = r34[7];
        int r18 = r34[8];
        int r12 = 9;
        int r19 = r34[9];
        int r21 = r34[10];
        int r23 = r34[11];
        int r25 = r34[12];
        int r10 = 13;
        int r26 = r34[13];
        int r28 = r34[14];
        int r31 = r34[15];
        int r30 = r28;
        int r282 = r26;
        int r262 = r25;
        int r252 = r23;
        int r232 = r21;
        int r212 = r19;
        int r192 = r18;
        int r182 = r16;
        int r162 = r15;
        int r152 = r13;
        int r132 = r11;
        int r112 = r92;
        int r93 = r72;
        int r73 = r52;
        int r53 = r32;
        int r36 = r33;
        while (r36 > 0) {
            int r82 = Integers.rotateLeft(r53 + r262, r14) ^ r132;
            int r133 = r192 ^ Integers.rotateLeft(r82 + r53, r12);
            int r6 = r262 ^ Integers.rotateLeft(r133 + r82, r10);
            int r42 = Integers.rotateLeft(r6 + r133, 18) ^ r53;
            int r54 = r212 ^ Integers.rotateLeft(r152 + r73, r14);
            int r142 = r282 ^ Integers.rotateLeft(r54 + r152, r12);
            int r74 = r73 ^ Integers.rotateLeft(r142 + r54, r10);
            int r122 = Integers.rotateLeft(r74 + r142, 18) ^ r152;
            int r22 = r30 ^ Integers.rotateLeft(r232 + r162, 7);
            int r94 = r93 ^ Integers.rotateLeft(r22 + r232, 9);
            int r102 = r162 ^ Integers.rotateLeft(r94 + r22, 13);
            int r17 = r232 ^ Integers.rotateLeft(r102 + r94, 18);
            int r02 = r112 ^ Integers.rotateLeft(r31 + r252, 7);
            int r113 = r182 ^ Integers.rotateLeft(r02 + r31, 9);
            int r322 = r36;
            int r37 = r252 ^ Integers.rotateLeft(r113 + r02, 13);
            int r143 = r31 ^ Integers.rotateLeft(r37 + r113, 18);
            r73 = r74 ^ Integers.rotateLeft(r42 + r02, 7);
            r93 = r94 ^ Integers.rotateLeft(r73 + r42, 9);
            int r03 = r02 ^ Integers.rotateLeft(r93 + r73, 13);
            int r43 = r42 ^ Integers.rotateLeft(r03 + r93, 18);
            r162 = r102 ^ Integers.rotateLeft(r122 + r82, 7);
            r182 = r113 ^ Integers.rotateLeft(r162 + r122, 9);
            int r62 = Integers.rotateLeft(r182 + r162, 13) ^ r82;
            r152 = r122 ^ Integers.rotateLeft(r62 + r182, 18);
            r252 = r37 ^ Integers.rotateLeft(r17 + r54, 7);
            int r38 = Integers.rotateLeft(r252 + r17, 9) ^ r133;
            r212 = r54 ^ Integers.rotateLeft(r38 + r252, 13);
            r232 = r17 ^ Integers.rotateLeft(r212 + r38, 18);
            r262 = r6 ^ Integers.rotateLeft(r143 + r22, 7);
            r282 = r142 ^ Integers.rotateLeft(r262 + r143, 9);
            r30 = r22 ^ Integers.rotateLeft(r282 + r262, 13);
            r31 = r143 ^ Integers.rotateLeft(r30 + r282, 18);
            r112 = r03;
            r192 = r38;
            r53 = r43;
            r132 = r62;
            r10 = 13;
            r12 = 9;
            r14 = 7;
            r36 = r322 - 2;
        }
        r35[0] = r53 + r34[0];
        r35[1] = r73 + r34[1];
        r35[2] = r93 + r34[2];
        r35[3] = r112 + r34[3];
        r35[4] = r132 + r34[4];
        r35[5] = r152 + r34[5];
        r35[6] = r162 + r34[6];
        r35[7] = r182 + r34[7];
        r35[8] = r192 + r34[8];
        r35[9] = r212 + r34[9];
        r35[10] = r232 + r34[10];
        r35[11] = r252 + r34[11];
        r35[12] = r262 + r34[12];
        r35[13] = r282 + r34[13];
        r35[14] = r30 + r34[14];
        r35[15] = r31 + r34[15];
    }

    public void advanceCounter() {
        int[] r02 = this.engineState;
        int r22 = r02[8] + 1;
        r02[8] = r22;
        if (r22 == 0) {
            r02[9] = r02[9] + 1;
        }
    }

    public void advanceCounter(long j10) {
        int r12 = (int) (j10 >>> 32);
        int r52 = (int) j10;
        if (r12 > 0) {
            int[] r02 = this.engineState;
            r02[9] = r02[9] + r12;
        }
        int[] r03 = this.engineState;
        int r22 = r03[8];
        int r53 = r52 + r22;
        r03[8] = r53;
        if (r22 == 0 || r53 >= r22) {
            return;
        }
        r03[9] = r03[9] + 1;
    }

    public void generateKeyStream(byte[] bArr) {
        salsaCore(this.rounds, this.engineState, this.f11534x);
        Pack.intToLittleEndian(this.f11534x, bArr, 0);
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        if (this.rounds == 20) {
            return "Salsa20";
        }
        return "Salsa20/" + this.rounds;
    }

    public long getCounter() {
        int[] r02 = this.engineState;
        return (r02[9] << 32) | (r02[8] & BodyPartID.bodyIdMax);
    }

    public int getNonceSize() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.SkippingCipher
    public long getPosition() {
        return (getCounter() * 64) + this.index;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z10, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException(getAlgorithmName() + " Init parameters must include an IV");
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        byte[] bArr = parametersWithIV.getIV();
        if (bArr == null || bArr.length != getNonceSize()) {
            throw new IllegalArgumentException(getAlgorithmName() + " requires exactly " + getNonceSize() + " bytes of IV");
        }
        CipherParameters parameters = parametersWithIV.getParameters();
        if (parameters == null) {
            if (!this.initialised) {
                throw new IllegalStateException(getAlgorithmName() + " KeyParameter can not be null for first initialisation");
            }
            setKey(null, bArr);
        } else {
            if (!(parameters instanceof KeyParameter)) {
                throw new IllegalArgumentException(getAlgorithmName() + " Init parameters must contain a KeyParameter (or null for re-init)");
            }
            byte[] key = ((KeyParameter) parameters).getKey();
            setKey(key, bArr);
            CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), key.length * 8, cipherParameters, Utils.getPurpose(z10)));
        }
        reset();
        this.initialised = true;
    }

    public void packTauOrSigma(int r42, int[] r52, int r6) {
        int r43 = (r42 - 16) / 4;
        int[] r02 = TAU_SIGMA;
        r52[r6] = r02[r43];
        r52[r6 + 1] = r02[r43 + 1];
        r52[r6 + 2] = r02[r43 + 2];
        r52[r6 + 3] = r02[r43 + 3];
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int r72, int r82, byte[] bArr2, int r10) {
        if (!this.initialised) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        }
        if (r72 + r82 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (r10 + r82 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        if (limitExceeded(r82)) {
            throw new MaxBytesExceededException("2^70 byte limit per IV would be exceeded; Change IV");
        }
        for (int r02 = 0; r02 < r82; r02++) {
            byte[] bArr3 = this.keyStream;
            int r32 = this.index;
            bArr2[r02 + r10] = (byte) (bArr3[r32] ^ bArr[r02 + r72]);
            int r12 = (r32 + 1) & 63;
            this.index = r12;
            if (r12 == 0) {
                advanceCounter();
                generateKeyStream(this.keyStream);
            }
        }
        return r82;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void reset() {
        this.index = 0;
        resetLimitCounter();
        resetCounter();
        generateKeyStream(this.keyStream);
    }

    public void resetCounter() {
        int[] r02 = this.engineState;
        r02[9] = 0;
        r02[8] = 0;
    }

    public void retreatCounter() {
        int[] r02 = this.engineState;
        int r22 = r02[8];
        if (r22 == 0 && r02[9] == 0) {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        }
        int r23 = r22 - 1;
        r02[8] = r23;
        if (r23 == -1) {
            r02[9] = r02[9] - 1;
        }
    }

    public void retreatCounter(long j10) {
        int r12 = (int) (j10 >>> 32);
        int r13 = (int) j10;
        if (r12 != 0) {
            int[] r42 = this.engineState;
            int r52 = r42[9];
            if ((r52 & BodyPartID.bodyIdMax) < (r12 & BodyPartID.bodyIdMax)) {
                throw new IllegalStateException("attempt to reduce counter past zero.");
            }
            r42[9] = r52 - r12;
        }
        int[] r14 = this.engineState;
        int r53 = r14[8];
        if ((r53 & BodyPartID.bodyIdMax) >= (BodyPartID.bodyIdMax & r13)) {
            r14[8] = r53 - r13;
            return;
        }
        int r22 = r14[9];
        if (r22 == 0) {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        }
        r14[9] = r22 - 1;
        r14[8] = r53 - r13;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b10) {
        if (limitExceeded()) {
            throw new MaxBytesExceededException("2^70 byte limit per IV; Change IV");
        }
        byte[] bArr = this.keyStream;
        int r12 = this.index;
        byte b11 = (byte) (b10 ^ bArr[r12]);
        int r02 = (r12 + 1) & 63;
        this.index = r02;
        if (r02 == 0) {
            advanceCounter();
            generateKeyStream(this.keyStream);
        }
        return b11;
    }

    @Override // org.bouncycastle.crypto.SkippingCipher
    public long seekTo(long j10) {
        reset();
        return skip(j10);
    }

    public void setKey(byte[] bArr, byte[] bArr2) {
        if (bArr != null) {
            if (bArr.length != 16 && bArr.length != 32) {
                throw new IllegalArgumentException(getAlgorithmName() + " requires 128 bit or 256 bit key");
            }
            int length = (bArr.length - 16) / 4;
            int[] r42 = this.engineState;
            int[] r52 = TAU_SIGMA;
            r42[0] = r52[length];
            r42[5] = r52[length + 1];
            r42[10] = r52[length + 2];
            r42[15] = r52[length + 3];
            Pack.littleEndianToInt(bArr, 0, r42, 1, 4);
            Pack.littleEndianToInt(bArr, bArr.length - 16, this.engineState, 11, 4);
        }
        Pack.littleEndianToInt(bArr2, 0, this.engineState, 6, 2);
    }

    @Override // org.bouncycastle.crypto.SkippingCipher
    public long skip(long j10) {
        long j11;
        if (j10 >= 0) {
            if (j10 >= 64) {
                long j12 = j10 / 64;
                advanceCounter(j12);
                j11 = j10 - (j12 * 64);
            } else {
                j11 = j10;
            }
            int r22 = this.index;
            int r02 = (((int) j11) + r22) & 63;
            this.index = r02;
            if (r02 < r22) {
                advanceCounter();
            }
        } else {
            long j13 = -j10;
            if (j13 >= 64) {
                long j14 = j13 / 64;
                retreatCounter(j14);
                j13 -= j14 * 64;
            }
            for (long j15 = 0; j15 < j13; j15++) {
                if (this.index == 0) {
                    retreatCounter();
                }
                this.index = (this.index - 1) & 63;
            }
        }
        generateKeyStream(this.keyStream);
        return j10;
    }
}
