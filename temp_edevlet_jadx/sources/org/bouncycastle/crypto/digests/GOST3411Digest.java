package org.bouncycastle.crypto.digests;

import androidx.core.view.MotionEventCompat;
import java.lang.reflect.Array;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CryptoServiceProperties;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.crypto.engines.GOST28147Engine;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithSBox;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class GOST3411Digest implements ExtendedDigest, Memoable {
    private static final byte[] C2 = {0, -1, 0, -1, 0, -1, 0, -1, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, -1, 0, -1, 0, 0, -1, -1, 0, 0, 0, -1, -1, 0, -1};
    private static final int DIGEST_LENGTH = 32;
    private byte[][] C;
    private byte[] H;
    private byte[] K;
    private byte[] L;
    private byte[] M;
    byte[] S;
    private byte[] Sum;
    byte[] U;
    byte[] V;
    byte[] W;

    /* renamed from: a, reason: collision with root package name */
    byte[] f11459a;
    private long byteCount;
    private BlockCipher cipher;
    private final CryptoServicePurpose purpose;
    private byte[] sBox;
    short[] wS;
    short[] w_S;
    private byte[] xBuf;
    private int xBufOff;

    public GOST3411Digest() {
        this(CryptoServicePurpose.ANY);
    }

    public GOST3411Digest(CryptoServicePurpose cryptoServicePurpose) throws IllegalArgumentException {
        this.H = new byte[32];
        this.L = new byte[32];
        this.M = new byte[32];
        this.Sum = new byte[32];
        this.C = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 4, 32);
        this.xBuf = new byte[32];
        this.cipher = new GOST28147Engine();
        this.K = new byte[32];
        this.f11459a = new byte[8];
        this.wS = new short[16];
        this.w_S = new short[16];
        this.S = new byte[32];
        this.U = new byte[32];
        this.V = new byte[32];
        this.W = new byte[32];
        this.purpose = cryptoServicePurpose;
        CryptoServicesRegistrar.checkConstraints(cryptoServiceProperties());
        byte[] sBox = GOST28147Engine.getSBox("D-A");
        this.sBox = sBox;
        this.cipher.init(true, new ParametersWithSBox(null, sBox));
        reset();
    }

    public GOST3411Digest(GOST3411Digest gOST3411Digest) throws IllegalArgumentException {
        this.H = new byte[32];
        this.L = new byte[32];
        this.M = new byte[32];
        this.Sum = new byte[32];
        this.C = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 4, 32);
        this.xBuf = new byte[32];
        this.cipher = new GOST28147Engine();
        this.K = new byte[32];
        this.f11459a = new byte[8];
        this.wS = new short[16];
        this.w_S = new short[16];
        this.S = new byte[32];
        this.U = new byte[32];
        this.V = new byte[32];
        this.W = new byte[32];
        this.purpose = gOST3411Digest.purpose;
        CryptoServicesRegistrar.checkConstraints(cryptoServiceProperties());
        reset(gOST3411Digest);
    }

    public GOST3411Digest(byte[] bArr) {
        this(bArr, CryptoServicePurpose.ANY);
    }

    public GOST3411Digest(byte[] bArr, CryptoServicePurpose cryptoServicePurpose) throws IllegalArgumentException {
        this.H = new byte[32];
        this.L = new byte[32];
        this.M = new byte[32];
        this.Sum = new byte[32];
        this.C = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 4, 32);
        this.xBuf = new byte[32];
        this.cipher = new GOST28147Engine();
        this.K = new byte[32];
        this.f11459a = new byte[8];
        this.wS = new short[16];
        this.w_S = new short[16];
        this.S = new byte[32];
        this.U = new byte[32];
        this.V = new byte[32];
        this.W = new byte[32];
        this.purpose = cryptoServicePurpose;
        CryptoServicesRegistrar.checkConstraints(cryptoServiceProperties());
        byte[] bArrClone = Arrays.clone(bArr);
        this.sBox = bArrClone;
        this.cipher.init(true, new ParametersWithSBox(null, bArrClone));
        reset();
    }

    private byte[] A(byte[] bArr) {
        for (int r12 = 0; r12 < 8; r12++) {
            this.f11459a[r12] = (byte) (bArr[r12] ^ bArr[r12 + 8]);
        }
        System.arraycopy(bArr, 8, bArr, 0, 24);
        System.arraycopy(this.f11459a, 0, bArr, 24, 8);
        return bArr;
    }

    private void E(byte[] bArr, byte[] bArr2, int r52, byte[] bArr3, int r72) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        this.cipher.init(true, new KeyParameter(bArr));
        this.cipher.processBlock(bArr3, r72, bArr2, r52);
    }

    private byte[] P(byte[] bArr) {
        for (int r02 = 0; r02 < 8; r02++) {
            byte[] bArr2 = this.K;
            int r22 = r02 * 4;
            bArr2[r22] = bArr[r02];
            bArr2[r22 + 1] = bArr[r02 + 8];
            bArr2[r22 + 2] = bArr[r02 + 16];
            bArr2[r22 + 3] = bArr[r02 + 24];
        }
        return this.K;
    }

    private void cpyBytesToShort(byte[] bArr, short[] sArr) {
        for (int r02 = 0; r02 < bArr.length / 2; r02++) {
            int r12 = r02 * 2;
            sArr[r02] = (short) ((bArr[r12] & 255) | ((bArr[r12 + 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK));
        }
    }

    private void cpyShortToBytes(short[] sArr, byte[] bArr) {
        for (int r02 = 0; r02 < bArr.length / 2; r02++) {
            int r12 = r02 * 2;
            short s7 = sArr[r02];
            bArr[r12 + 1] = (byte) (s7 >> 8);
            bArr[r12] = (byte) s7;
        }
    }

    private void finish() throws IllegalStateException, DataLengthException, IllegalArgumentException {
        Pack.longToLittleEndian(this.byteCount * 8, this.L, 0);
        while (this.xBufOff != 0) {
            update((byte) 0);
        }
        processBlock(this.L, 0);
        processBlock(this.Sum, 0);
    }

    private void fw(byte[] bArr) {
        cpyBytesToShort(bArr, this.wS);
        short[] sArr = this.w_S;
        short[] sArr2 = this.wS;
        sArr[15] = (short) (((((sArr2[0] ^ sArr2[1]) ^ sArr2[2]) ^ sArr2[3]) ^ sArr2[12]) ^ sArr2[15]);
        System.arraycopy(sArr2, 1, sArr, 0, 15);
        cpyShortToBytes(this.w_S, bArr);
    }

    private void sumByteArray(byte[] bArr) {
        int r02 = 0;
        int r12 = 0;
        while (true) {
            byte[] bArr2 = this.Sum;
            if (r02 == bArr2.length) {
                return;
            }
            int r32 = (bArr2[r02] & 255) + (bArr[r02] & 255) + r12;
            bArr2[r02] = (byte) r32;
            r12 = r32 >>> 8;
            r02++;
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new GOST3411Digest(this);
    }

    public CryptoServiceProperties cryptoServiceProperties() {
        return Utils.getDefaultProperties(this, 256, this.purpose);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r52) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        finish();
        byte[] bArr2 = this.H;
        System.arraycopy(bArr2, 0, bArr, r52, bArr2.length);
        reset();
        return 32;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "GOST3411";
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 32;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 32;
    }

    public void processBlock(byte[] bArr, int r11) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        System.arraycopy(bArr, r11, this.M, 0, 32);
        System.arraycopy(this.H, 0, this.U, 0, 32);
        System.arraycopy(this.M, 0, this.V, 0, 32);
        for (int r10 = 0; r10 < 32; r10++) {
            this.W[r10] = (byte) (this.U[r10] ^ this.V[r10]);
        }
        E(P(this.W), this.S, 0, this.H, 0);
        for (int r102 = 1; r102 < 4; r102++) {
            byte[] bArrA = A(this.U);
            for (int r02 = 0; r02 < 32; r02++) {
                this.U[r02] = (byte) (bArrA[r02] ^ this.C[r102][r02]);
            }
            this.V = A(A(this.V));
            for (int r112 = 0; r112 < 32; r112++) {
                this.W[r112] = (byte) (this.U[r112] ^ this.V[r112]);
            }
            int r82 = r102 * 8;
            E(P(this.W), this.S, r82, this.H, r82);
        }
        for (int r103 = 0; r103 < 12; r103++) {
            fw(this.S);
        }
        for (int r104 = 0; r104 < 32; r104++) {
            byte[] bArr2 = this.S;
            bArr2[r104] = (byte) (bArr2[r104] ^ this.M[r104]);
        }
        fw(this.S);
        for (int r105 = 0; r105 < 32; r105++) {
            byte[] bArr3 = this.S;
            bArr3[r105] = (byte) (this.H[r105] ^ bArr3[r105]);
        }
        for (int r106 = 0; r106 < 61; r106++) {
            fw(this.S);
        }
        byte[] bArr4 = this.S;
        byte[] bArr5 = this.H;
        System.arraycopy(bArr4, 0, bArr5, 0, bArr5.length);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.byteCount = 0L;
        this.xBufOff = 0;
        int r12 = 0;
        while (true) {
            byte[] bArr = this.H;
            if (r12 >= bArr.length) {
                break;
            }
            bArr[r12] = 0;
            r12++;
        }
        int r13 = 0;
        while (true) {
            byte[] bArr2 = this.L;
            if (r13 >= bArr2.length) {
                break;
            }
            bArr2[r13] = 0;
            r13++;
        }
        int r14 = 0;
        while (true) {
            byte[] bArr3 = this.M;
            if (r14 >= bArr3.length) {
                break;
            }
            bArr3[r14] = 0;
            r14++;
        }
        int r15 = 0;
        while (true) {
            byte[] bArr4 = this.C[1];
            if (r15 >= bArr4.length) {
                break;
            }
            bArr4[r15] = 0;
            r15++;
        }
        int r16 = 0;
        while (true) {
            byte[] bArr5 = this.C[3];
            if (r16 >= bArr5.length) {
                break;
            }
            bArr5[r16] = 0;
            r16++;
        }
        int r17 = 0;
        while (true) {
            byte[] bArr6 = this.Sum;
            if (r17 >= bArr6.length) {
                break;
            }
            bArr6[r17] = 0;
            r17++;
        }
        int r18 = 0;
        while (true) {
            byte[] bArr7 = this.xBuf;
            if (r18 >= bArr7.length) {
                byte[] bArr8 = C2;
                System.arraycopy(bArr8, 0, this.C[2], 0, bArr8.length);
                return;
            } else {
                bArr7[r18] = 0;
                r18++;
            }
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) throws IllegalArgumentException {
        GOST3411Digest gOST3411Digest = (GOST3411Digest) memoable;
        byte[] bArr = gOST3411Digest.sBox;
        this.sBox = bArr;
        this.cipher.init(true, new ParametersWithSBox(null, bArr));
        reset();
        byte[] bArr2 = gOST3411Digest.H;
        System.arraycopy(bArr2, 0, this.H, 0, bArr2.length);
        byte[] bArr3 = gOST3411Digest.L;
        System.arraycopy(bArr3, 0, this.L, 0, bArr3.length);
        byte[] bArr4 = gOST3411Digest.M;
        System.arraycopy(bArr4, 0, this.M, 0, bArr4.length);
        byte[] bArr5 = gOST3411Digest.Sum;
        System.arraycopy(bArr5, 0, this.Sum, 0, bArr5.length);
        byte[] bArr6 = gOST3411Digest.C[1];
        System.arraycopy(bArr6, 0, this.C[1], 0, bArr6.length);
        byte[] bArr7 = gOST3411Digest.C[2];
        System.arraycopy(bArr7, 0, this.C[2], 0, bArr7.length);
        byte[] bArr8 = gOST3411Digest.C[3];
        System.arraycopy(bArr8, 0, this.C[3], 0, bArr8.length);
        byte[] bArr9 = gOST3411Digest.xBuf;
        System.arraycopy(bArr9, 0, this.xBuf, 0, bArr9.length);
        this.xBufOff = gOST3411Digest.xBufOff;
        this.byteCount = gOST3411Digest.byteCount;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        byte[] bArr = this.xBuf;
        int r12 = this.xBufOff;
        int r22 = r12 + 1;
        this.xBufOff = r22;
        bArr[r12] = b10;
        if (r22 == bArr.length) {
            sumByteArray(bArr);
            processBlock(this.xBuf, 0);
            this.xBufOff = 0;
        }
        this.byteCount++;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int r72, int r82) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        while (this.xBufOff != 0 && r82 > 0) {
            update(bArr[r72]);
            r72++;
            r82--;
        }
        while (true) {
            byte[] bArr2 = this.xBuf;
            if (r82 < bArr2.length) {
                break;
            }
            System.arraycopy(bArr, r72, bArr2, 0, bArr2.length);
            sumByteArray(this.xBuf);
            processBlock(this.xBuf, 0);
            byte[] bArr3 = this.xBuf;
            r72 += bArr3.length;
            r82 -= bArr3.length;
            this.byteCount += bArr3.length;
        }
        while (r82 > 0) {
            update(bArr[r72]);
            r72++;
            r82--;
        }
    }
}
