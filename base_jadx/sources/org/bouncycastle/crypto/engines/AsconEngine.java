package org.bouncycastle.crypto.engines;

import android.support.v4.media.a;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.modes.AEADCipher;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Longs;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class AsconEngine implements AEADCipher {
    private final int ASCON_AEAD_RATE;
    private final long ASCON_IV;
    private final int CRYPTO_ABYTES;
    private final int CRYPTO_KEYBYTES;
    private long K0;
    private long K1;
    private long K2;
    private long N0;
    private long N1;
    private final String algorithmName;
    private final AsconParameters asconParameters;
    private byte[] initialAssociatedText;
    private final byte[] m_buf;
    private final int m_bufferSizeDecrypt;
    private byte[] mac;
    private final int nr;

    /* renamed from: x0, reason: collision with root package name */
    private long f11499x0;

    /* renamed from: x1, reason: collision with root package name */
    private long f11500x1;

    /* renamed from: x2, reason: collision with root package name */
    private long f11501x2;

    /* renamed from: x3, reason: collision with root package name */
    private long f11502x3;

    /* renamed from: x4, reason: collision with root package name */
    private long f11503x4;
    private State m_state = State.Uninitialized;
    private int m_bufPos = 0;

    /* renamed from: org.bouncycastle.crypto.engines.AsconEngine$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$AsconParameters;
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State;

        static {
            int[] r02 = new int[State.values().length];
            $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State = r02;
            try {
                r02[State.DecInit.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State[State.EncInit.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State[State.DecAad.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State[State.EncAad.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State[State.EncFinal.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State[State.DecData.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State[State.EncData.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State[State.DecFinal.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            int[] r32 = new int[AsconParameters.values().length];
            $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$AsconParameters = r32;
            try {
                r32[AsconParameters.ascon80pq.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$AsconParameters[AsconParameters.ascon128a.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$AsconParameters[AsconParameters.ascon128.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public enum AsconParameters {
        ascon80pq,
        ascon128a,
        ascon128
    }

    public enum State {
        Uninitialized,
        EncInit,
        EncAad,
        EncData,
        EncFinal,
        DecInit,
        DecAad,
        DecData,
        DecFinal
    }

    public AsconEngine(AsconParameters asconParameters) {
        String str;
        this.asconParameters = asconParameters;
        int r52 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$AsconParameters[asconParameters.ordinal()];
        if (r52 == 1) {
            this.CRYPTO_KEYBYTES = 20;
            this.CRYPTO_ABYTES = 16;
            this.ASCON_AEAD_RATE = 8;
            this.ASCON_IV = -6899501409222262784L;
            str = "Ascon-80pq AEAD";
        } else if (r52 == 2) {
            this.CRYPTO_KEYBYTES = 16;
            this.CRYPTO_ABYTES = 16;
            this.ASCON_AEAD_RATE = 16;
            this.ASCON_IV = -9187330011336540160L;
            str = "Ascon-128a AEAD";
        } else {
            if (r52 != 3) {
                throw new IllegalArgumentException("invalid parameter setting for ASCON AEAD");
            }
            this.CRYPTO_KEYBYTES = 16;
            this.CRYPTO_ABYTES = 16;
            this.ASCON_AEAD_RATE = 8;
            this.ASCON_IV = -9205344418435956736L;
            str = "Ascon-128 AEAD";
        }
        this.algorithmName = str;
        int r53 = this.ASCON_AEAD_RATE;
        this.nr = r53 == 8 ? 6 : 8;
        int r54 = r53 + this.CRYPTO_ABYTES;
        this.m_bufferSizeDecrypt = r54;
        this.m_buf = new byte[r54];
    }

    private void P(int r32) {
        if (r32 >= 8) {
            if (r32 == 12) {
                ROUND(240L);
                ROUND(225L);
                ROUND(210L);
                ROUND(195L);
            }
            ROUND(180L);
            ROUND(165L);
        }
        ROUND(150L);
        ROUND(135L);
        ROUND(120L);
        ROUND(105L);
        ROUND(90L);
        ROUND(75L);
    }

    private long PAD(int r32) {
        return 128 << (56 - (r32 << 3));
    }

    private void ROUND(long j10) {
        long j11 = this.f11499x0;
        long j12 = this.f11500x1;
        long j13 = this.f11501x2;
        long j14 = this.f11502x3;
        long j15 = this.f11503x4;
        long j16 = ((((j11 ^ j12) ^ j13) ^ j14) ^ j10) ^ ((((j11 ^ j13) ^ j15) ^ j10) & j12);
        long j17 = ((((j11 ^ j13) ^ j14) ^ j15) ^ j10) ^ (((j12 ^ j13) ^ j10) & (j12 ^ j14));
        long j18 = (((j12 ^ j13) ^ j15) ^ j10) ^ (j14 & j15);
        long j19 = ((j13 ^ (j11 ^ j12)) ^ j10) ^ ((~j11) & (j14 ^ j15));
        long j20 = ((j11 ^ j15) & j12) ^ ((j14 ^ j12) ^ j15);
        this.f11499x0 = (Longs.rotateRight(j16, 19) ^ j16) ^ Longs.rotateRight(j16, 28);
        this.f11500x1 = Longs.rotateRight(j17, 61) ^ (Longs.rotateRight(j17, 39) ^ j17);
        this.f11501x2 = ~(Longs.rotateRight(j18, 6) ^ (Longs.rotateRight(j18, 1) ^ j18));
        this.f11502x3 = (Longs.rotateRight(j19, 10) ^ j19) ^ Longs.rotateRight(j19, 17);
        this.f11503x4 = Longs.rotateRight(j20, 41) ^ (Longs.rotateRight(j20, 7) ^ j20);
    }

    private void ascon_aeadinit() {
        long j10 = this.ASCON_IV;
        this.f11499x0 = j10;
        if (this.CRYPTO_KEYBYTES == 20) {
            this.f11499x0 = j10 ^ this.K0;
        }
        this.f11500x1 = this.K1;
        this.f11501x2 = this.K2;
        this.f11502x3 = this.N0;
        this.f11503x4 = this.N1;
        P(12);
        if (this.CRYPTO_KEYBYTES == 20) {
            this.f11501x2 ^= this.K0;
        }
        this.f11502x3 ^= this.K1;
        this.f11503x4 ^= this.K2;
    }

    private void checkAAD() {
        State state;
        int r02 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State[this.m_state.ordinal()];
        if (r02 == 1) {
            state = State.DecAad;
        } else {
            if (r02 != 2) {
                if (r02 == 3 || r02 == 4) {
                    return;
                }
                if (r02 != 5) {
                    throw new IllegalStateException(getAlgorithmName() + " needs to be initialized");
                }
                throw new IllegalStateException(getAlgorithmName() + " cannot be reused for encryption");
            }
            state = State.EncAad;
        }
        this.m_state = state;
    }

    private boolean checkData() {
        switch (AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State[this.m_state.ordinal()]) {
            case 1:
            case 3:
                finishAAD(State.DecData);
                return false;
            case 2:
            case 4:
                finishAAD(State.EncData);
                return true;
            case 5:
                throw new IllegalStateException(getAlgorithmName() + " cannot be reused for encryption");
            case 6:
                return false;
            case 7:
                return true;
            default:
                throw new IllegalStateException(getAlgorithmName() + " needs to be initialized");
        }
    }

    private void finishAAD(State state) {
        int r02 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State[this.m_state.ordinal()];
        if (r02 == 3 || r02 == 4) {
            byte[] bArr = this.m_buf;
            int r32 = this.m_bufPos;
            bArr[r32] = ISOFileInfo.DATA_BYTES1;
            if (r32 >= 8) {
                this.f11499x0 ^= Pack.bigEndianToLong(bArr, 0);
                this.f11500x1 = (((-1) << (56 - ((this.m_bufPos - 8) << 3))) & Pack.bigEndianToLong(this.m_buf, 8)) ^ this.f11500x1;
            } else {
                this.f11499x0 = (((-1) << (56 - (this.m_bufPos << 3))) & Pack.bigEndianToLong(bArr, 0)) ^ this.f11499x0;
            }
            P(this.nr);
        }
        this.f11503x4 ^= 1;
        this.m_bufPos = 0;
        this.m_state = state;
    }

    private void finishData(State state) {
        long j10;
        long j11;
        int r02 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$AsconParameters[this.asconParameters.ordinal()];
        if (r02 == 1) {
            long j12 = this.f11500x1;
            long j13 = this.K0 << 32;
            long j14 = this.K1;
            this.f11500x1 = j12 ^ (j13 | (j14 >> 32));
            long j15 = this.f11501x2;
            long j16 = j14 << 32;
            long j17 = this.K2;
            this.f11501x2 = j15 ^ (j16 | (j17 >> 32));
            j10 = this.f11502x3;
            j11 = j17 << 32;
        } else {
            if (r02 != 2) {
                if (r02 != 3) {
                    throw new IllegalStateException();
                }
                this.f11500x1 ^= this.K1;
                this.f11501x2 ^= this.K2;
                P(12);
                this.f11502x3 ^= this.K1;
                this.f11503x4 ^= this.K2;
                this.m_state = state;
            }
            this.f11501x2 ^= this.K1;
            j10 = this.f11502x3;
            j11 = this.K2;
        }
        this.f11502x3 = j10 ^ j11;
        P(12);
        this.f11502x3 ^= this.K1;
        this.f11503x4 ^= this.K2;
        this.m_state = state;
    }

    private void processBufferAAD(byte[] bArr, int r6) {
        this.f11499x0 ^= Pack.bigEndianToLong(bArr, r6);
        if (this.ASCON_AEAD_RATE == 16) {
            this.f11500x1 = Pack.bigEndianToLong(bArr, r6 + 8) ^ this.f11500x1;
        }
        P(this.nr);
    }

    private void processBufferDecrypt(byte[] bArr, int r6, byte[] bArr2, int r82) {
        if (this.ASCON_AEAD_RATE + r82 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        long jBigEndianToLong = Pack.bigEndianToLong(bArr, r6);
        Pack.longToBigEndian(this.f11499x0 ^ jBigEndianToLong, bArr2, r82);
        this.f11499x0 = jBigEndianToLong;
        if (this.ASCON_AEAD_RATE == 16) {
            long jBigEndianToLong2 = Pack.bigEndianToLong(bArr, r6 + 8);
            Pack.longToBigEndian(this.f11500x1 ^ jBigEndianToLong2, bArr2, r82 + 8);
            this.f11500x1 = jBigEndianToLong2;
        }
        P(this.nr);
    }

    private void processBufferEncrypt(byte[] bArr, int r6, byte[] bArr2, int r82) {
        if (this.ASCON_AEAD_RATE + r82 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        long jBigEndianToLong = this.f11499x0 ^ Pack.bigEndianToLong(bArr, r6);
        this.f11499x0 = jBigEndianToLong;
        Pack.longToBigEndian(jBigEndianToLong, bArr2, r82);
        if (this.ASCON_AEAD_RATE == 16) {
            long jBigEndianToLong2 = Pack.bigEndianToLong(bArr, r6 + 8) ^ this.f11500x1;
            this.f11500x1 = jBigEndianToLong2;
            Pack.longToBigEndian(jBigEndianToLong2, bArr2, r82 + 8);
        }
        P(this.nr);
    }

    private void processFinalDecrypt(byte[] bArr, int r92, int r10, byte[] bArr2, int r12) {
        if (r10 >= 8) {
            long jBigEndianToLong = Pack.bigEndianToLong(bArr, r92);
            long j10 = this.f11499x0 ^ jBigEndianToLong;
            this.f11499x0 = j10;
            Pack.longToBigEndian(j10, bArr2, r12);
            this.f11499x0 = jBigEndianToLong;
            int r93 = r92 + 8;
            int r122 = r12 + 8;
            int r102 = r10 - 8;
            this.f11500x1 ^= PAD(r102);
            if (r102 != 0) {
                long jLittleEndianToLong_High = Pack.littleEndianToLong_High(bArr, r93, r102);
                long j11 = this.f11500x1 ^ jLittleEndianToLong_High;
                this.f11500x1 = j11;
                Pack.longToLittleEndian_High(j11, bArr2, r122, r102);
                this.f11500x1 = jLittleEndianToLong_High ^ (this.f11500x1 & ((-1) >>> (r102 << 3)));
            }
        } else {
            this.f11499x0 ^= PAD(r10);
            if (r10 != 0) {
                long jLittleEndianToLong_High2 = Pack.littleEndianToLong_High(bArr, r92, r10);
                long j12 = this.f11499x0 ^ jLittleEndianToLong_High2;
                this.f11499x0 = j12;
                Pack.longToLittleEndian_High(j12, bArr2, r12, r10);
                this.f11499x0 = jLittleEndianToLong_High2 ^ (this.f11499x0 & ((-1) >>> (r10 << 3)));
            }
        }
        finishData(State.DecFinal);
    }

    private void processFinalEncrypt(byte[] bArr, int r72, int r82, byte[] bArr2, int r10) {
        long jLittleEndianToLong_High;
        if (r82 >= 8) {
            long jBigEndianToLong = this.f11499x0 ^ Pack.bigEndianToLong(bArr, r72);
            this.f11499x0 = jBigEndianToLong;
            Pack.longToBigEndian(jBigEndianToLong, bArr2, r10);
            int r73 = r72 + 8;
            r10 += 8;
            r82 -= 8;
            long jPAD = this.f11500x1 ^ PAD(r82);
            this.f11500x1 = jPAD;
            if (r82 != 0) {
                jLittleEndianToLong_High = Pack.littleEndianToLong_High(bArr, r73, r82) ^ jPAD;
                this.f11500x1 = jLittleEndianToLong_High;
                Pack.longToLittleEndian_High(jLittleEndianToLong_High, bArr2, r10, r82);
            }
        } else {
            long jPAD2 = this.f11499x0 ^ PAD(r82);
            this.f11499x0 = jPAD2;
            if (r82 != 0) {
                jLittleEndianToLong_High = Pack.littleEndianToLong_High(bArr, r72, r82) ^ jPAD2;
                this.f11499x0 = jLittleEndianToLong_High;
                Pack.longToLittleEndian_High(jLittleEndianToLong_High, bArr2, r10, r82);
            }
        }
        finishData(State.EncFinal);
    }

    private void reset(boolean z10) {
        if (z10) {
            this.mac = null;
        }
        Arrays.clear(this.m_buf);
        this.m_bufPos = 0;
        switch (AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State[this.m_state.ordinal()]) {
            case 1:
            case 2:
                break;
            case 3:
            case 6:
            case 8:
                this.m_state = State.DecInit;
                break;
            case 4:
            case 5:
            case 7:
                this.m_state = State.EncFinal;
                return;
            default:
                throw new IllegalStateException(getAlgorithmName() + " needs to be initialized");
        }
        ascon_aeadinit();
        byte[] bArr = this.initialAssociatedText;
        if (bArr != null) {
            processAADBytes(bArr, 0, bArr.length);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int r12) throws InvalidCipherTextException, IllegalStateException, DataLengthException {
        int r02;
        if (checkData()) {
            int r6 = this.m_bufPos;
            r02 = this.CRYPTO_ABYTES + r6;
            if (r12 + r02 > bArr.length) {
                throw new OutputLengthException("output buffer too short");
            }
            processFinalEncrypt(this.m_buf, 0, r6, bArr, r12);
            byte[] bArr2 = new byte[this.CRYPTO_ABYTES];
            this.mac = bArr2;
            Pack.longToBigEndian(this.f11502x3, bArr2, 0);
            Pack.longToBigEndian(this.f11503x4, this.mac, 8);
            System.arraycopy(this.mac, 0, bArr, r12 + this.m_bufPos, this.CRYPTO_ABYTES);
            reset(false);
        } else {
            int r03 = this.m_bufPos;
            int r32 = this.CRYPTO_ABYTES;
            if (r03 < r32) {
                throw new InvalidCipherTextException("data too short");
            }
            r02 = r03 - r32;
            this.m_bufPos = r02;
            if (r12 + r02 > bArr.length) {
                throw new OutputLengthException("output buffer too short");
            }
            processFinalDecrypt(this.m_buf, 0, r02, bArr, r12);
            this.f11502x3 ^= Pack.bigEndianToLong(this.m_buf, this.m_bufPos);
            long jBigEndianToLong = this.f11503x4 ^ Pack.bigEndianToLong(this.m_buf, this.m_bufPos + 8);
            this.f11503x4 = jBigEndianToLong;
            if ((jBigEndianToLong | this.f11502x3) != 0) {
                throw new InvalidCipherTextException("mac check in " + getAlgorithmName() + " failed");
            }
            reset(true);
        }
        return r02;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return this.algorithmName;
    }

    public String getAlgorithmVersion() {
        return "v1.2";
    }

    public int getIVBytesSize() {
        return this.CRYPTO_ABYTES;
    }

    public int getKeyBytesSize() {
        return this.CRYPTO_KEYBYTES;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        return this.mac;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getOutputSize(int r42) {
        int r43 = Math.max(0, r42);
        int r12 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State[this.m_state.ordinal()];
        if (r12 == 1 || r12 == 3) {
            return Math.max(0, r43 - this.CRYPTO_ABYTES);
        }
        if (r12 != 5) {
            if (r12 != 6) {
                if (r12 != 7) {
                    if (r12 != 8) {
                        return r43 + this.CRYPTO_ABYTES;
                    }
                }
            }
            return Math.max(0, (r43 + this.m_bufPos) - this.CRYPTO_ABYTES);
        }
        return r43 + this.m_bufPos + this.CRYPTO_ABYTES;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0020, code lost:
    
        if (r1 != 8) goto L18;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0027  */
    @Override // org.bouncycastle.crypto.modes.AEADCipher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getUpdateOutputSize(int r4) {
        /*
            r3 = this;
            r0 = 0
            int r4 = java.lang.Math.max(r0, r4)
            int[] r1 = org.bouncycastle.crypto.engines.AsconEngine.AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State
            org.bouncycastle.crypto.engines.AsconEngine$State r2 = r3.m_state
            int r2 = r2.ordinal()
            r1 = r1[r2]
            r2 = 1
            if (r1 == r2) goto L2b
            r2 = 3
            if (r1 == r2) goto L2b
            r2 = 5
            if (r1 == r2) goto L27
            r2 = 6
            if (r1 == r2) goto L23
            r2 = 7
            if (r1 == r2) goto L27
            r2 = 8
            if (r1 == r2) goto L23
            goto L32
        L23:
            int r1 = r3.m_bufPos
            int r4 = r4 + r1
            goto L2b
        L27:
            int r0 = r3.m_bufPos
            int r4 = r4 + r0
            goto L32
        L2b:
            int r1 = r3.CRYPTO_ABYTES
            int r4 = r4 - r1
            int r4 = java.lang.Math.max(r0, r4)
        L32:
            int r0 = r3.ASCON_AEAD_RATE
            int r0 = r4 % r0
            int r4 = r4 - r0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.engines.AsconEngine.getUpdateOutputSize(int):int");
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalArgumentException {
        KeyParameter key;
        byte[] nonce;
        long jBigEndianToLong;
        if (cipherParameters instanceof AEADParameters) {
            AEADParameters aEADParameters = (AEADParameters) cipherParameters;
            key = aEADParameters.getKey();
            nonce = aEADParameters.getNonce();
            this.initialAssociatedText = aEADParameters.getAssociatedText();
            int macSize = aEADParameters.getMacSize();
            if (macSize != this.CRYPTO_ABYTES * 8) {
                throw new IllegalArgumentException(a.d("Invalid value for MAC size: ", macSize));
            }
        } else {
            if (!(cipherParameters instanceof ParametersWithIV)) {
                throw new IllegalArgumentException("invalid parameters passed to Ascon");
            }
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            key = (KeyParameter) parametersWithIV.getParameters();
            nonce = parametersWithIV.getIV();
            this.initialAssociatedText = null;
        }
        if (key == null) {
            throw new IllegalArgumentException("Ascon Init parameters must include a key");
        }
        if (nonce == null || nonce.length != this.CRYPTO_ABYTES) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.asconParameters);
            sb2.append(" requires exactly ");
            throw new IllegalArgumentException(androidx.browser.browseractions.a.b(sb2, this.CRYPTO_ABYTES, " bytes of IV"));
        }
        byte[] key2 = key.getKey();
        if (key2.length != this.CRYPTO_KEYBYTES) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(this.asconParameters);
            sb3.append(" key must be ");
            throw new IllegalArgumentException(androidx.browser.browseractions.a.b(sb3, this.CRYPTO_KEYBYTES, " bytes long"));
        }
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 128, cipherParameters, Utils.getPurpose(z10)));
        this.N0 = Pack.bigEndianToLong(nonce, 0);
        this.N1 = Pack.bigEndianToLong(nonce, 8);
        int r22 = this.CRYPTO_KEYBYTES;
        if (r22 == 16) {
            this.K1 = Pack.bigEndianToLong(key2, 0);
            jBigEndianToLong = Pack.bigEndianToLong(key2, 8);
        } else {
            if (r22 != 20) {
                throw new IllegalStateException();
            }
            this.K0 = Pack.bigEndianToInt(key2, 0);
            this.K1 = Pack.bigEndianToLong(key2, 4);
            jBigEndianToLong = Pack.bigEndianToLong(key2, 12);
        }
        this.K2 = jBigEndianToLong;
        this.m_state = z10 ? State.EncInit : State.DecInit;
        reset(true);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b10) {
        checkAAD();
        byte[] bArr = this.m_buf;
        int r12 = this.m_bufPos;
        bArr[r12] = b10;
        int r13 = r12 + 1;
        this.m_bufPos = r13;
        if (r13 == this.ASCON_AEAD_RATE) {
            processBufferAAD(bArr, 0);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADBytes(byte[] bArr, int r6, int r72) {
        if (r6 + r72 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (r72 <= 0) {
            return;
        }
        checkAAD();
        int r02 = this.m_bufPos;
        if (r02 > 0) {
            int r22 = this.ASCON_AEAD_RATE - r02;
            if (r72 < r22) {
                System.arraycopy(bArr, r6, this.m_buf, r02, r72);
                this.m_bufPos += r72;
                return;
            } else {
                System.arraycopy(bArr, r6, this.m_buf, r02, r22);
                r6 += r22;
                r72 -= r22;
                processBufferAAD(this.m_buf, 0);
            }
        }
        while (r72 >= this.ASCON_AEAD_RATE) {
            processBufferAAD(bArr, r6);
            int r03 = this.ASCON_AEAD_RATE;
            r6 += r03;
            r72 -= r03;
        }
        System.arraycopy(bArr, r6, this.m_buf, 0, r72);
        this.m_bufPos = r72;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processByte(byte b10, byte[] bArr, int r10) throws DataLengthException {
        return processBytes(new byte[]{b10}, 0, 1, bArr, r10);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processBytes(byte[] bArr, int r82, int r92, byte[] bArr2, int r11) throws DataLengthException {
        int r02;
        if (r82 + r92 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (checkData()) {
            int r03 = this.m_bufPos;
            if (r03 > 0) {
                int r22 = this.ASCON_AEAD_RATE - r03;
                if (r92 < r22) {
                    System.arraycopy(bArr, r82, this.m_buf, r03, r92);
                    this.m_bufPos += r92;
                    return 0;
                }
                System.arraycopy(bArr, r82, this.m_buf, r03, r22);
                r82 += r22;
                r92 -= r22;
                processBufferEncrypt(this.m_buf, 0, bArr2, r11);
                r02 = this.ASCON_AEAD_RATE;
            } else {
                r02 = 0;
            }
            while (r92 >= this.ASCON_AEAD_RATE) {
                processBufferEncrypt(bArr, r82, bArr2, r11 + r02);
                int r23 = this.ASCON_AEAD_RATE;
                r82 += r23;
                r92 -= r23;
                r02 += r23;
            }
            System.arraycopy(bArr, r82, this.m_buf, 0, r92);
            this.m_bufPos = r92;
            return r02;
        }
        int r04 = this.m_bufferSizeDecrypt;
        int r24 = this.m_bufPos;
        int r05 = r04 - r24;
        if (r92 < r05) {
            System.arraycopy(bArr, r82, this.m_buf, r24, r92);
            this.m_bufPos += r92;
            return 0;
        }
        int r25 = 0;
        do {
            int r32 = this.m_bufPos;
            int r42 = this.ASCON_AEAD_RATE;
            if (r32 < r42) {
                int r43 = r42 - r32;
                System.arraycopy(bArr, r82, this.m_buf, r32, r43);
                r82 += r43;
                r92 -= r43;
                processBufferDecrypt(this.m_buf, 0, bArr2, r11 + r25);
                r02 = r25 + this.ASCON_AEAD_RATE;
                while (r92 >= this.m_bufferSizeDecrypt) {
                    processBufferDecrypt(bArr, r82, bArr2, r11 + r02);
                    int r26 = this.ASCON_AEAD_RATE;
                    r82 += r26;
                    r92 -= r26;
                    r02 += r26;
                }
                System.arraycopy(bArr, r82, this.m_buf, 0, r92);
                this.m_bufPos = r92;
                return r02;
            }
            processBufferDecrypt(this.m_buf, 0, bArr2, r11 + r25);
            int r33 = this.m_bufPos;
            int r44 = this.ASCON_AEAD_RATE;
            int r34 = r33 - r44;
            this.m_bufPos = r34;
            byte[] bArr3 = this.m_buf;
            System.arraycopy(bArr3, r44, bArr3, 0, r34);
            int r35 = this.ASCON_AEAD_RATE;
            r25 += r35;
            r05 += r35;
        } while (r92 >= r05);
        System.arraycopy(bArr, r82, this.m_buf, this.m_bufPos, r92);
        this.m_bufPos += r92;
        return r25;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() {
        reset(true);
    }
}
