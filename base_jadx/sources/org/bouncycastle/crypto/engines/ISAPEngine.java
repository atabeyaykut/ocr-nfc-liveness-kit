package org.bouncycastle.crypto.engines;

import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.modes.AEADCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Pack;
import org.jmrtd.PassportService;
import org.jmrtd.cbeff.ISO781611;

/* loaded from: classes2.dex */
public class ISAPEngine implements AEADCipher {
    private ISAP_AEAD ISAPAEAD;
    private int ISAP_rH;
    private int ISAP_rH_SZ;

    /* renamed from: ad, reason: collision with root package name */
    private byte[] f11518ad;
    private String algorithmName;

    /* renamed from: c, reason: collision with root package name */
    private byte[] f11519c;
    private boolean forEncryption;
    private boolean initialised;

    /* renamed from: k, reason: collision with root package name */
    private byte[] f11520k;
    private byte[] mac;
    private byte[] npub;
    final int CRYPTO_KEYBYTES = 16;
    final int CRYPTO_NPUBBYTES = 16;
    final int ISAP_STATE_SZ = 40;
    private ByteArrayOutputStream aadData = new ByteArrayOutputStream();
    private final ByteArrayOutputStream message = new ByteArrayOutputStream();
    private final ByteArrayOutputStream outputStream = new ByteArrayOutputStream();

    /* renamed from: org.bouncycastle.crypto.engines.ISAPEngine$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$engines$ISAPEngine$IsapType;

        static {
            int[] r02 = new int[IsapType.values().length];
            $SwitchMap$org$bouncycastle$crypto$engines$ISAPEngine$IsapType = r02;
            try {
                r02[IsapType.ISAP_A_128A.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$ISAPEngine$IsapType[IsapType.ISAP_K_128A.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$ISAPEngine$IsapType[IsapType.ISAP_A_128.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$ISAPEngine$IsapType[IsapType.ISAP_K_128.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public abstract class ISAPAEAD_A implements ISAP_AEAD {
        protected long ISAP_IV1_64;
        protected long ISAP_IV2_64;
        protected long ISAP_IV3_64;
        protected long[] k64;
        protected long[] npub64;

        /* renamed from: t0, reason: collision with root package name */
        protected long f11521t0;

        /* renamed from: t1, reason: collision with root package name */
        protected long f11522t1;

        /* renamed from: t2, reason: collision with root package name */
        protected long f11523t2;

        /* renamed from: t3, reason: collision with root package name */
        protected long f11524t3;

        /* renamed from: t4, reason: collision with root package name */
        protected long f11525t4;

        /* renamed from: x0, reason: collision with root package name */
        protected long f11526x0;

        /* renamed from: x1, reason: collision with root package name */
        protected long f11527x1;

        /* renamed from: x2, reason: collision with root package name */
        protected long f11528x2;

        /* renamed from: x3, reason: collision with root package name */
        protected long f11529x3;

        /* renamed from: x4, reason: collision with root package name */
        protected long f11530x4;

        public ISAPAEAD_A() {
            ISAPEngine.this.ISAP_rH = 64;
            ISAPEngine.this.ISAP_rH_SZ = (ISAPEngine.this.ISAP_rH + 7) >> 3;
        }

        private long ROTR(long j10, long j11) {
            return (j10 << ((int) (64 - j11))) | (j10 >>> ((int) j11));
        }

        private int getLongSize(int r22) {
            return (r22 >>> 3) + ((r22 & 7) != 0 ? 1 : 0);
        }

        public void ABSORB_MAC(byte[] bArr, int r11) {
            int length = bArr.length >> 3;
            long[] jArr = new long[length];
            Pack.littleEndianToLong(bArr, 0, jArr, 0, length);
            int r02 = 0;
            while (r11 >= ISAPEngine.this.ISAP_rH_SZ) {
                this.f11526x0 ^= U64BIG(jArr[r02]);
                P12();
                r11 -= ISAPEngine.this.ISAP_rH_SZ;
                r02++;
            }
            for (int r22 = 0; r22 < r11; r22++) {
                this.f11526x0 ^= (bArr[(r02 << 3) + r22] & 255) << ((7 - r22) << 3);
            }
            this.f11526x0 = (128 << ((7 - r11) << 3)) ^ this.f11526x0;
            P12();
        }

        public void P12() {
            ROUND(240L);
            ROUND(225L);
            ROUND(210L);
            ROUND(195L);
            ROUND(180L);
            ROUND(165L);
            P6();
        }

        public void P6() {
            ROUND(150L);
            ROUND(135L);
            ROUND(120L);
            ROUND(105L);
            ROUND(90L);
            ROUND(75L);
        }

        public abstract void PX1();

        public abstract void PX2();

        public void ROUND(long j10) {
            long j11 = this.f11526x0;
            long j12 = this.f11527x1;
            long j13 = this.f11528x2;
            long j14 = this.f11529x3;
            long j15 = this.f11530x4;
            long j16 = ((((j11 ^ j12) ^ j13) ^ j14) ^ j10) ^ ((((j11 ^ j13) ^ j15) ^ j10) & j12);
            this.f11521t0 = j16;
            this.f11522t1 = ((((j11 ^ j13) ^ j14) ^ j15) ^ j10) ^ (((j12 ^ j13) ^ j10) & (j12 ^ j14));
            this.f11523t2 = (((j12 ^ j13) ^ j15) ^ j10) ^ (j14 & j15);
            this.f11524t3 = ((j13 ^ (j11 ^ j12)) ^ j10) ^ ((~j11) & (j14 ^ j15));
            this.f11525t4 = ((j11 ^ j15) & j12) ^ ((j12 ^ j14) ^ j15);
            this.f11526x0 = (ROTR(j16, 19L) ^ j16) ^ ROTR(this.f11521t0, 28L);
            long j17 = this.f11522t1;
            this.f11527x1 = (j17 ^ ROTR(j17, 39L)) ^ ROTR(this.f11522t1, 61L);
            long j18 = this.f11523t2;
            this.f11528x2 = ~((j18 ^ ROTR(j18, 1L)) ^ ROTR(this.f11523t2, 6L));
            long j19 = this.f11524t3;
            this.f11529x3 = (j19 ^ ROTR(j19, 10L)) ^ ROTR(this.f11524t3, 17L);
            long j20 = this.f11525t4;
            this.f11530x4 = (j20 ^ ROTR(j20, 7L)) ^ ROTR(this.f11525t4, 41L);
        }

        public long U64BIG(long j10) {
            return (ROTR(j10, 56L) & 1095216660735L) | (ROTR(j10, 8L) & (-72057589759737856L)) | (ROTR(j10, 24L) & 71776119077928960L) | (ROTR(j10, 40L) & 280375465148160L);
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAP_AEAD
        public void init() {
            this.npub64 = new long[getLongSize(ISAPEngine.this.npub.length)];
            byte[] bArr = ISAPEngine.this.npub;
            long[] jArr = this.npub64;
            Pack.littleEndianToLong(bArr, 0, jArr, 0, jArr.length);
            long[] jArr2 = this.npub64;
            jArr2[0] = U64BIG(jArr2[0]);
            long[] jArr3 = this.npub64;
            jArr3[1] = U64BIG(jArr3[1]);
            this.k64 = new long[getLongSize(ISAPEngine.this.f11520k.length)];
            byte[] bArr2 = ISAPEngine.this.f11520k;
            long[] jArr4 = this.k64;
            Pack.littleEndianToLong(bArr2, 0, jArr4, 0, jArr4.length);
            long[] jArr5 = this.k64;
            jArr5[0] = U64BIG(jArr5[0]);
            long[] jArr6 = this.k64;
            jArr6[1] = U64BIG(jArr6[1]);
            reset();
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAP_AEAD
        public void isap_enc(byte[] bArr, int r10, int r11, byte[] bArr2, int r13, int r14) {
            int r142 = r11 >> 3;
            long[] jArr = new long[r142];
            Pack.littleEndianToLong(bArr, r10, jArr, 0, r142);
            long[] jArr2 = new long[r142];
            int r32 = 0;
            while (r11 >= ISAPEngine.this.ISAP_rH_SZ) {
                jArr2[r32] = U64BIG(this.f11526x0) ^ jArr[r32];
                PX1();
                r32++;
                r11 -= ISAPEngine.this.ISAP_rH_SZ;
            }
            Pack.longToLittleEndian(jArr2, 0, r142, bArr2, r13);
            byte[] bArrLongToLittleEndian = Pack.longToLittleEndian(this.f11526x0);
            while (r11 > 0) {
                int r02 = r32 << 3;
                int r12 = ((r02 + r13) + r11) - 1;
                byte b10 = bArrLongToLittleEndian[ISAPEngine.this.ISAP_rH_SZ - r11];
                r11--;
                bArr2[r12] = (byte) (bArr[(r02 + r10) + r11] ^ b10);
            }
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAP_AEAD
        public void isap_mac(byte[] bArr, int r82, byte[] bArr2, int r10, byte[] bArr3, int r12) {
            long[] jArr = this.npub64;
            this.f11526x0 = jArr[0];
            this.f11527x1 = jArr[1];
            this.f11528x2 = this.ISAP_IV1_64;
            this.f11530x4 = 0L;
            this.f11529x3 = 0L;
            P12();
            ABSORB_MAC(bArr, r82);
            this.f11530x4 ^= 1;
            ABSORB_MAC(bArr2, r10);
            Pack.longToLittleEndian(U64BIG(this.f11526x0), bArr3, 0);
            Pack.longToLittleEndian(U64BIG(this.f11527x1), bArr3, 8);
            long j10 = this.f11528x2;
            long j11 = this.f11529x3;
            long j12 = this.f11530x4;
            isap_rk(this.ISAP_IV2_64, bArr3, 16);
            this.f11528x2 = j10;
            this.f11529x3 = j11;
            this.f11530x4 = j12;
            P12();
            Pack.longToLittleEndian(U64BIG(this.f11526x0), bArr3, r12);
            Pack.longToLittleEndian(U64BIG(this.f11527x1), bArr3, r12 + 8);
        }

        public void isap_rk(long j10, byte[] bArr, int r13) {
            long[] jArr = this.k64;
            int r12 = 0;
            this.f11526x0 = jArr[0];
            this.f11527x1 = jArr[1];
            this.f11528x2 = j10;
            this.f11530x4 = 0L;
            this.f11529x3 = 0L;
            P12();
            while (true) {
                int r10 = (r13 << 3) - 1;
                long j11 = this.f11526x0;
                if (r12 >= r10) {
                    this.f11526x0 = (((bArr[r13 - 1] & 1) << 7) << 56) ^ j11;
                    P12();
                    return;
                } else {
                    this.f11526x0 = (((((bArr[r12 >>> 3] >>> (7 - (r12 & 7))) & 1) << 7) & 255) << 56) ^ j11;
                    PX2();
                    r12++;
                }
            }
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAP_AEAD
        public void reset() {
            isap_rk(this.ISAP_IV3_64, ISAPEngine.this.npub, 16);
            long[] jArr = this.npub64;
            this.f11529x3 = jArr[0];
            this.f11530x4 = jArr[1];
            PX1();
        }
    }

    public class ISAPAEAD_A_128 extends ISAPAEAD_A {
        public ISAPAEAD_A_128() {
            super();
            this.ISAP_IV1_64 = 108156764298152972L;
            this.ISAP_IV2_64 = 180214358336080908L;
            this.ISAP_IV3_64 = 252271952374008844L;
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAPAEAD_A
        public void PX1() {
            P12();
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAPAEAD_A
        public void PX2() {
            P12();
        }
    }

    public class ISAPAEAD_A_128A extends ISAPAEAD_A {
        public ISAPAEAD_A_128A() {
            super();
            this.ISAP_IV1_64 = 108156764297430540L;
            this.ISAP_IV2_64 = 180214358335358476L;
            this.ISAP_IV3_64 = 252271952373286412L;
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAPAEAD_A
        public void PX1() {
            P6();
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAPAEAD_A
        public void PX2() {
            ROUND(75L);
        }
    }

    public abstract class ISAPAEAD_K implements ISAP_AEAD {
        protected short[] ISAP_IV1_16;
        protected short[] ISAP_IV2_16;
        protected short[] ISAP_IV3_16;
        protected short[] iv16;
        protected short[] k16;
        final int ISAP_STATE_SZ_CRYPTO_NPUBBYTES = 24;
        private final int[] KeccakF400RoundConstants = {1, 32898, 32906, 32768, 32907, 1, 32897, 32777, 138, ISO781611.FORMAT_TYPE_TAG, 32777, 10, 32907, 139, 32905, 32771, 32770, 128, 32778, 10};
        protected short[] SX = new short[25];
        protected short[] E = new short[25];
        protected short[] C = new short[5];

        public ISAPAEAD_K() {
            ISAPEngine.this.ISAP_rH = 144;
            ISAPEngine.this.ISAP_rH_SZ = (ISAPEngine.this.ISAP_rH + 7) >> 3;
        }

        private short ROL16(short s7, int r32) {
            int r22 = s7 & 65535;
            return (short) ((r22 >>> (16 - r32)) ^ (r22 << r32));
        }

        private void byteToShort(byte[] bArr, short[] sArr, int r52) {
            for (int r02 = 0; r02 < r52; r02++) {
                sArr[r02] = Pack.littleEndianToShort(bArr, r02 << 1);
            }
        }

        private void byteToShortXor(byte[] bArr, short[] sArr, int r6) {
            for (int r02 = 0; r02 < r6; r02++) {
                sArr[r02] = (short) (sArr[r02] ^ Pack.littleEndianToShort(bArr, r02 << 1));
            }
        }

        private void shortToByte(short[] sArr, byte[] bArr, int r6) {
            for (int r02 = 0; r02 < 8; r02++) {
                Pack.shortToLittleEndian(sArr[r02], bArr, (r02 << 1) + r6);
            }
        }

        public void ABSORB_MAC(short[] sArr, byte[] bArr, int r10, short[] sArr2, short[] sArr3) {
            int r02 = 0;
            int r12 = 0;
            while (r10 > ISAPEngine.this.ISAP_rH_SZ) {
                byteToShortXor(bArr, sArr, ISAPEngine.this.ISAP_rH_SZ >> 1);
                r12 += ISAPEngine.this.ISAP_rH_SZ;
                r10 -= ISAPEngine.this.ISAP_rH_SZ;
                PermuteRoundsHX(sArr, sArr2, sArr3);
            }
            if (r10 == ISAPEngine.this.ISAP_rH_SZ) {
                byteToShortXor(bArr, sArr, ISAPEngine.this.ISAP_rH_SZ >> 1);
                PermuteRoundsHX(sArr, sArr2, sArr3);
                sArr[0] = (short) (sArr[0] ^ 128);
            } else {
                while (r02 < r10) {
                    int r22 = r02 >> 1;
                    sArr[r22] = (short) (((bArr[r12] & 255) << ((r02 & 1) << 3)) ^ sArr[r22]);
                    r02++;
                    r12++;
                }
                int r92 = r10 >> 1;
                sArr[r92] = (short) ((128 << ((r10 & 1) << 3)) ^ sArr[r92]);
            }
            PermuteRoundsHX(sArr, sArr2, sArr3);
        }

        public abstract void PermuteRoundsBX(short[] sArr, short[] sArr2, short[] sArr3);

        public abstract void PermuteRoundsHX(short[] sArr, short[] sArr2, short[] sArr3);

        public abstract void PermuteRoundsKX(short[] sArr, short[] sArr2, short[] sArr3);

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAP_AEAD
        public void init() {
            this.k16 = new short[ISAPEngine.this.f11520k.length >> 1];
            byte[] bArr = ISAPEngine.this.f11520k;
            short[] sArr = this.k16;
            byteToShort(bArr, sArr, sArr.length);
            this.iv16 = new short[ISAPEngine.this.npub.length >> 1];
            byte[] bArr2 = ISAPEngine.this.npub;
            short[] sArr2 = this.iv16;
            byteToShort(bArr2, sArr2, sArr2.length);
            reset();
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAP_AEAD
        public void isap_enc(byte[] bArr, int r52, int r6, byte[] bArr2, int r82, int r92) {
            int r02;
            while (true) {
                r02 = 0;
                if (r6 < ISAPEngine.this.ISAP_rH_SZ) {
                    break;
                }
                while (r02 < ISAPEngine.this.ISAP_rH_SZ) {
                    bArr2[r82] = (byte) (bArr[r52] ^ (this.SX[r02 >> 1] >>> ((r02 & 1) << 3)));
                    r02++;
                    r82++;
                    r52++;
                }
                r6 -= ISAPEngine.this.ISAP_rH_SZ;
                PermuteRoundsKX(this.SX, this.E, this.C);
            }
            while (r02 < r6) {
                bArr2[r82] = (byte) (bArr[r52] ^ (this.SX[r02 >> 1] >>> ((r02 & 1) << 3)));
                r02++;
                r82++;
                r52++;
            }
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAP_AEAD
        public void isap_mac(byte[] bArr, int r12, byte[] bArr2, int r14, byte[] bArr3, int r16) {
            short[] sArr = new short[25];
            this.SX = sArr;
            System.arraycopy(this.iv16, 0, sArr, 0, 8);
            System.arraycopy(this.ISAP_IV1_16, 0, this.SX, 8, 4);
            PermuteRoundsHX(this.SX, this.E, this.C);
            ABSORB_MAC(this.SX, bArr, r12, this.E, this.C);
            short[] sArr2 = this.SX;
            sArr2[24] = (short) (sArr2[24] ^ 256);
            ABSORB_MAC(sArr2, bArr2, r14, this.E, this.C);
            shortToByte(this.SX, bArr3, r16);
            isap_rk(this.ISAP_IV2_16, bArr3, 16, this.SX, 16, this.C);
            PermuteRoundsHX(this.SX, this.E, this.C);
            shortToByte(this.SX, bArr3, r16);
        }

        public void isap_rk(short[] sArr, byte[] bArr, int r10, short[] sArr2, int r12, short[] sArr3) {
            short[] sArr4 = new short[25];
            short[] sArr5 = new short[25];
            System.arraycopy(this.k16, 0, sArr4, 0, 8);
            System.arraycopy(sArr, 0, sArr4, 8, 4);
            PermuteRoundsKX(sArr4, sArr5, sArr3);
            for (int r82 = 0; r82 < (r10 << 3) - 1; r82++) {
                sArr4[0] = (short) (sArr4[0] ^ (((bArr[r82 >> 3] >>> (7 - (r82 & 7))) & 1) << 7));
                PermuteRoundsBX(sArr4, sArr5, sArr3);
            }
            sArr4[0] = (short) (sArr4[0] ^ ((bArr[r10 - 1] & 1) << 7));
            PermuteRoundsKX(sArr4, sArr5, sArr3);
            System.arraycopy(sArr4, 0, sArr2, 0, r12 == 24 ? 17 : 8);
        }

        public void prepareThetaX(short[] sArr, short[] sArr2) {
            sArr2[0] = (short) ((((sArr[0] ^ sArr[5]) ^ sArr[10]) ^ sArr[15]) ^ sArr[20]);
            sArr2[1] = (short) ((((sArr[1] ^ sArr[6]) ^ sArr[11]) ^ sArr[16]) ^ sArr[21]);
            sArr2[2] = (short) ((((sArr[2] ^ sArr[7]) ^ sArr[12]) ^ sArr[17]) ^ sArr[22]);
            sArr2[3] = (short) ((((sArr[3] ^ sArr[8]) ^ sArr[13]) ^ sArr[18]) ^ sArr[23]);
            sArr2[4] = (short) (sArr[24] ^ (((sArr[4] ^ sArr[9]) ^ sArr[14]) ^ sArr[19]));
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAP_AEAD
        public void reset() {
            this.SX = new short[25];
            this.E = new short[25];
            this.C = new short[5];
            isap_rk(this.ISAP_IV3_16, ISAPEngine.this.npub, 16, this.SX, 24, this.C);
            System.arraycopy(this.iv16, 0, this.SX, 17, 8);
            PermuteRoundsKX(this.SX, this.E, this.C);
        }

        public void rounds12X(short[] sArr, short[] sArr2, short[] sArr3) {
            prepareThetaX(sArr, sArr3);
            rounds_8_18(sArr, sArr2, sArr3);
        }

        public void rounds_12_18(short[] sArr, short[] sArr2, short[] sArr3) {
            thetaRhoPiChiIotaPrepareTheta(12, sArr, sArr2, sArr3);
            thetaRhoPiChiIotaPrepareTheta(13, sArr2, sArr, sArr3);
            thetaRhoPiChiIotaPrepareTheta(14, sArr, sArr2, sArr3);
            thetaRhoPiChiIotaPrepareTheta(15, sArr2, sArr, sArr3);
            thetaRhoPiChiIotaPrepareTheta(16, sArr, sArr2, sArr3);
            thetaRhoPiChiIotaPrepareTheta(17, sArr2, sArr, sArr3);
            thetaRhoPiChiIotaPrepareTheta(18, sArr, sArr2, sArr3);
            thetaRhoPiChiIota(sArr2, sArr, sArr3);
        }

        public void rounds_4_18(short[] sArr, short[] sArr2, short[] sArr3) {
            thetaRhoPiChiIotaPrepareTheta(4, sArr, sArr2, sArr3);
            thetaRhoPiChiIotaPrepareTheta(5, sArr2, sArr, sArr3);
            thetaRhoPiChiIotaPrepareTheta(6, sArr, sArr2, sArr3);
            thetaRhoPiChiIotaPrepareTheta(7, sArr2, sArr, sArr3);
            rounds_8_18(sArr, sArr2, sArr3);
        }

        public void rounds_8_18(short[] sArr, short[] sArr2, short[] sArr3) {
            thetaRhoPiChiIotaPrepareTheta(8, sArr, sArr2, sArr3);
            thetaRhoPiChiIotaPrepareTheta(9, sArr2, sArr, sArr3);
            thetaRhoPiChiIotaPrepareTheta(10, sArr, sArr2, sArr3);
            thetaRhoPiChiIotaPrepareTheta(11, sArr2, sArr, sArr3);
            rounds_12_18(sArr, sArr2, sArr3);
        }

        public void thetaRhoPiChiIota(short[] sArr, short[] sArr2, short[] sArr3) {
            short sROL16 = (short) (sArr3[4] ^ ROL16(sArr3[1], 1));
            short sROL162 = (short) (sArr3[0] ^ ROL16(sArr3[2], 1));
            short sROL163 = (short) (sArr3[1] ^ ROL16(sArr3[3], 1));
            short sROL164 = (short) (sArr3[2] ^ ROL16(sArr3[4], 1));
            short sROL165 = (short) (sArr3[3] ^ ROL16(sArr3[0], 1));
            short s7 = (short) (sArr[0] ^ sROL16);
            sArr[0] = s7;
            short s10 = (short) (sArr[6] ^ sROL162);
            sArr[6] = s10;
            short sROL166 = ROL16(s10, 12);
            short s11 = (short) (sArr[12] ^ sROL163);
            sArr[12] = s11;
            short sROL167 = ROL16(s11, 11);
            short s12 = (short) (sArr[18] ^ sROL164);
            sArr[18] = s12;
            short sROL168 = ROL16(s12, 5);
            short s13 = (short) (sArr[24] ^ sROL165);
            sArr[24] = s13;
            short sROL169 = ROL16(s13, 14);
            sArr2[0] = (short) ((((~sROL166) & sROL167) ^ s7) ^ this.KeccakF400RoundConstants[19]);
            sArr2[1] = (short) (((~sROL167) & sROL168) ^ sROL166);
            sArr2[2] = (short) (((~sROL168) & sROL169) ^ sROL167);
            sArr2[3] = (short) (((~sROL169) & s7) ^ sROL168);
            sArr2[4] = (short) (((~s7) & sROL166) ^ sROL169);
            short s14 = (short) (sArr[3] ^ sROL164);
            sArr[3] = s14;
            short sROL1610 = ROL16(s14, 12);
            short s15 = (short) (sArr[9] ^ sROL165);
            sArr[9] = s15;
            short sROL1611 = ROL16(s15, 4);
            short s16 = (short) (sArr[10] ^ sROL16);
            sArr[10] = s16;
            short sROL1612 = ROL16(s16, 3);
            short s17 = (short) (sArr[16] ^ sROL162);
            sArr[16] = s17;
            short sROL1613 = ROL16(s17, 13);
            short s18 = (short) (sArr[22] ^ sROL163);
            sArr[22] = s18;
            short sROL1614 = ROL16(s18, 13);
            sArr2[5] = (short) (((~sROL1611) & sROL1612) ^ sROL1610);
            sArr2[6] = (short) (((~sROL1612) & sROL1613) ^ sROL1611);
            sArr2[7] = (short) (((~sROL1613) & sROL1614) ^ sROL1612);
            sArr2[8] = (short) (((~sROL1614) & sROL1610) ^ sROL1613);
            sArr2[9] = (short) (((~sROL1610) & sROL1611) ^ sROL1614);
            short s19 = (short) (sArr[1] ^ sROL162);
            sArr[1] = s19;
            short sROL1615 = ROL16(s19, 1);
            short s20 = (short) (sArr[7] ^ sROL163);
            sArr[7] = s20;
            short sROL1616 = ROL16(s20, 6);
            short s21 = (short) (sArr[13] ^ sROL164);
            sArr[13] = s21;
            short sROL1617 = ROL16(s21, 9);
            short s22 = (short) (sArr[19] ^ sROL165);
            sArr[19] = s22;
            short sROL1618 = ROL16(s22, 8);
            short s23 = (short) (sArr[20] ^ sROL16);
            sArr[20] = s23;
            short sROL1619 = ROL16(s23, 2);
            sArr2[10] = (short) (((~sROL1616) & sROL1617) ^ sROL1615);
            sArr2[11] = (short) (((~sROL1617) & sROL1618) ^ sROL1616);
            sArr2[12] = (short) (sROL1617 ^ ((~sROL1618) & sROL1619));
            sArr2[13] = (short) (((~sROL1619) & sROL1615) ^ sROL1618);
            sArr2[14] = (short) (((~sROL1615) & sROL1616) ^ sROL1619);
            short s24 = (short) (sArr[4] ^ sROL165);
            sArr[4] = s24;
            short sROL1620 = ROL16(s24, 11);
            short s25 = (short) (sArr[5] ^ sROL16);
            sArr[5] = s25;
            short sROL1621 = ROL16(s25, 4);
            short s26 = (short) (sArr[11] ^ sROL162);
            sArr[11] = s26;
            short sROL1622 = ROL16(s26, 10);
            short s27 = (short) (sArr[17] ^ sROL163);
            sArr[17] = s27;
            short sROL1623 = ROL16(s27, 15);
            short s28 = (short) (sArr[23] ^ sROL164);
            sArr[23] = s28;
            short sROL1624 = ROL16(s28, 8);
            sArr2[15] = (short) (((~sROL1621) & sROL1622) ^ sROL1620);
            sArr2[16] = (short) (((~sROL1622) & sROL1623) ^ sROL1621);
            sArr2[17] = (short) (sROL1622 ^ ((~sROL1623) & sROL1624));
            sArr2[18] = (short) (((~sROL1624) & sROL1620) ^ sROL1623);
            sArr2[19] = (short) ((sROL1621 & (~sROL1620)) ^ sROL1624);
            short s29 = (short) (sArr[2] ^ sROL163);
            sArr[2] = s29;
            short sROL1625 = ROL16(s29, 14);
            short s30 = (short) (sArr[8] ^ sROL164);
            sArr[8] = s30;
            short sROL1626 = ROL16(s30, 7);
            short s31 = (short) (sArr[14] ^ sROL165);
            sArr[14] = s31;
            short sROL1627 = ROL16(s31, 7);
            short s32 = (short) (sROL16 ^ sArr[15]);
            sArr[15] = s32;
            short sROL1628 = ROL16(s32, 9);
            short s33 = (short) (sROL162 ^ sArr[21]);
            sArr[21] = s33;
            short sROL1629 = ROL16(s33, 2);
            sArr2[20] = (short) (((~sROL1626) & sROL1627) ^ sROL1625);
            sArr2[21] = (short) (((~sROL1627) & sROL1628) ^ sROL1626);
            sArr2[22] = (short) (sROL1627 ^ ((~sROL1628) & sROL1629));
            sArr2[23] = (short) (sROL1628 ^ ((~sROL1629) & sROL1625));
            sArr2[24] = (short) (((~sROL1625) & sROL1626) ^ sROL1629);
        }

        public void thetaRhoPiChiIotaPrepareTheta(int r31, short[] sArr, short[] sArr2, short[] sArr3) {
            short sROL16 = (short) (sArr3[4] ^ ROL16(sArr3[1], 1));
            short sROL162 = (short) (sArr3[0] ^ ROL16(sArr3[2], 1));
            short sROL163 = (short) (sArr3[1] ^ ROL16(sArr3[3], 1));
            short sROL164 = (short) (sArr3[2] ^ ROL16(sArr3[4], 1));
            short sROL165 = (short) (sArr3[3] ^ ROL16(sArr3[0], 1));
            short s7 = (short) (sArr[0] ^ sROL16);
            sArr[0] = s7;
            short s10 = (short) (sArr[6] ^ sROL162);
            sArr[6] = s10;
            short sROL166 = ROL16(s10, 12);
            short s11 = (short) (sArr[12] ^ sROL163);
            sArr[12] = s11;
            short sROL167 = ROL16(s11, 11);
            short s12 = (short) (sArr[18] ^ sROL164);
            sArr[18] = s12;
            short sROL168 = ROL16(s12, 5);
            short s13 = (short) (sArr[24] ^ sROL165);
            sArr[24] = s13;
            short sROL169 = ROL16(s13, 14);
            short s14 = (short) ((((~sROL166) & sROL167) ^ s7) ^ this.KeccakF400RoundConstants[r31]);
            sArr2[0] = s14;
            sArr3[0] = s14;
            short s15 = (short) (((~sROL167) & sROL168) ^ sROL166);
            sArr2[1] = s15;
            sArr3[1] = s15;
            short s16 = (short) (((~sROL168) & sROL169) ^ sROL167);
            sArr2[2] = s16;
            sArr3[2] = s16;
            short s17 = (short) (((~sROL169) & s7) ^ sROL168);
            sArr2[3] = s17;
            sArr3[3] = s17;
            short s18 = (short) (((~s7) & sROL166) ^ sROL169);
            sArr2[4] = s18;
            sArr3[4] = s18;
            short s19 = (short) (sArr[3] ^ sROL164);
            sArr[3] = s19;
            short sROL1610 = ROL16(s19, 12);
            short s20 = (short) (sArr[9] ^ sROL165);
            sArr[9] = s20;
            short sROL1611 = ROL16(s20, 4);
            short s21 = (short) (sArr[10] ^ sROL16);
            sArr[10] = s21;
            short sROL1612 = ROL16(s21, 3);
            short s22 = (short) (sArr[16] ^ sROL162);
            sArr[16] = s22;
            short sROL1613 = ROL16(s22, 13);
            short s23 = (short) (sArr[22] ^ sROL163);
            sArr[22] = s23;
            short sROL1614 = ROL16(s23, 13);
            short s24 = (short) (((~sROL1611) & sROL1612) ^ sROL1610);
            sArr2[5] = s24;
            sArr3[0] = (short) (sArr3[0] ^ s24);
            short s25 = (short) (((~sROL1612) & sROL1613) ^ sROL1611);
            sArr2[6] = s25;
            sArr3[1] = (short) (sArr3[1] ^ s25);
            short s26 = (short) (sROL1612 ^ ((~sROL1613) & sROL1614));
            sArr2[7] = s26;
            sArr3[2] = (short) (sArr3[2] ^ s26);
            short s27 = (short) (((~sROL1614) & sROL1610) ^ sROL1613);
            sArr2[8] = s27;
            sArr3[3] = (short) (sArr3[3] ^ s27);
            short s28 = (short) (((~sROL1610) & sROL1611) ^ sROL1614);
            sArr2[9] = s28;
            sArr3[4] = (short) (s28 ^ sArr3[4]);
            short s29 = (short) (sArr[1] ^ sROL162);
            sArr[1] = s29;
            short sROL1615 = ROL16(s29, 1);
            short s30 = (short) (sArr[7] ^ sROL163);
            sArr[7] = s30;
            short sROL1616 = ROL16(s30, 6);
            short s31 = (short) (sArr[13] ^ sROL164);
            sArr[13] = s31;
            short sROL1617 = ROL16(s31, 9);
            short s32 = (short) (sArr[19] ^ sROL165);
            sArr[19] = s32;
            short sROL1618 = ROL16(s32, 8);
            short s33 = (short) (sArr[20] ^ sROL16);
            sArr[20] = s33;
            short sROL1619 = ROL16(s33, 2);
            short s34 = (short) (((~sROL1616) & sROL1617) ^ sROL1615);
            sArr2[10] = s34;
            sArr3[0] = (short) (sArr3[0] ^ s34);
            short s35 = (short) (((~sROL1617) & sROL1618) ^ sROL1616);
            sArr2[11] = s35;
            sArr3[1] = (short) (sArr3[1] ^ s35);
            short s36 = (short) (sROL1617 ^ ((~sROL1618) & sROL1619));
            sArr2[12] = s36;
            sArr3[2] = (short) (s36 ^ sArr3[2]);
            short s37 = (short) (sROL1618 ^ ((~sROL1619) & sROL1615));
            sArr2[13] = s37;
            sArr3[3] = (short) (s37 ^ sArr3[3]);
            short s38 = (short) (((~sROL1615) & sROL1616) ^ sROL1619);
            sArr2[14] = s38;
            sArr3[4] = (short) (s38 ^ sArr3[4]);
            short s39 = (short) (sArr[4] ^ sROL165);
            sArr[4] = s39;
            short sROL1620 = ROL16(s39, 11);
            short s40 = (short) (sArr[5] ^ sROL16);
            sArr[5] = s40;
            short sROL1621 = ROL16(s40, 4);
            short s41 = (short) (sArr[11] ^ sROL162);
            sArr[11] = s41;
            short sROL1622 = ROL16(s41, 10);
            short s42 = (short) (sArr[17] ^ sROL163);
            sArr[17] = s42;
            short sROL1623 = ROL16(s42, 15);
            short s43 = (short) (sArr[23] ^ sROL164);
            sArr[23] = s43;
            short sROL1624 = ROL16(s43, 8);
            short s44 = (short) (((~sROL1621) & sROL1622) ^ sROL1620);
            sArr2[15] = s44;
            sArr3[0] = (short) (sArr3[0] ^ s44);
            short s45 = (short) (((~sROL1622) & sROL1623) ^ sROL1621);
            sArr2[16] = s45;
            sArr3[1] = (short) (sArr3[1] ^ s45);
            short s46 = (short) (sROL1622 ^ ((~sROL1623) & sROL1624));
            sArr2[17] = s46;
            sArr3[2] = (short) (sArr3[2] ^ s46);
            short s47 = (short) (((~sROL1624) & sROL1620) ^ sROL1623);
            sArr2[18] = s47;
            sArr3[3] = (short) (s47 ^ sArr3[3]);
            short s48 = (short) (((~sROL1620) & sROL1621) ^ sROL1624);
            sArr2[19] = s48;
            sArr3[4] = (short) (s48 ^ sArr3[4]);
            short s49 = (short) (sArr[2] ^ sROL163);
            sArr[2] = s49;
            short sROL1625 = ROL16(s49, 14);
            short s50 = (short) (sArr[8] ^ sROL164);
            sArr[8] = s50;
            short sROL1626 = ROL16(s50, 7);
            short s51 = (short) (sArr[14] ^ sROL165);
            sArr[14] = s51;
            short sROL1627 = ROL16(s51, 7);
            short s52 = (short) (sROL16 ^ sArr[15]);
            sArr[15] = s52;
            short sROL1628 = ROL16(s52, 9);
            short s53 = (short) (sROL162 ^ sArr[21]);
            sArr[21] = s53;
            short sROL1629 = ROL16(s53, 2);
            short s54 = (short) (((~sROL1626) & sROL1627) ^ sROL1625);
            sArr2[20] = s54;
            sArr3[0] = (short) (s54 ^ sArr3[0]);
            short s55 = (short) (((~sROL1627) & sROL1628) ^ sROL1626);
            sArr2[21] = s55;
            sArr3[1] = (short) (s55 ^ sArr3[1]);
            short s56 = (short) (sROL1627 ^ ((~sROL1628) & sROL1629));
            sArr2[22] = s56;
            sArr3[2] = (short) (s56 ^ sArr3[2]);
            short s57 = (short) (((~sROL1629) & sROL1625) ^ sROL1628);
            sArr2[23] = s57;
            sArr3[3] = (short) (s57 ^ sArr3[3]);
            short s58 = (short) (((~sROL1625) & sROL1626) ^ sROL1629);
            sArr2[24] = s58;
            sArr3[4] = (short) (s58 ^ sArr3[4]);
        }
    }

    public class ISAPAEAD_K_128 extends ISAPAEAD_K {
        public ISAPAEAD_K_128() {
            super();
            this.ISAP_IV1_16 = new short[]{-32767, 400, 3092, 3084};
            this.ISAP_IV2_16 = new short[]{-32766, 400, 3092, 3084};
            this.ISAP_IV3_16 = new short[]{-32765, 400, 3092, 3084};
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAPAEAD_K
        public void PermuteRoundsBX(short[] sArr, short[] sArr2, short[] sArr3) {
            rounds12X(sArr, sArr2, sArr3);
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAPAEAD_K
        public void PermuteRoundsHX(short[] sArr, short[] sArr2, short[] sArr3) {
            prepareThetaX(sArr, sArr3);
            thetaRhoPiChiIotaPrepareTheta(0, sArr, sArr2, sArr3);
            thetaRhoPiChiIotaPrepareTheta(1, sArr2, sArr, sArr3);
            thetaRhoPiChiIotaPrepareTheta(2, sArr, sArr2, sArr3);
            thetaRhoPiChiIotaPrepareTheta(3, sArr2, sArr, sArr3);
            rounds_4_18(sArr, sArr2, sArr3);
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAPAEAD_K
        public void PermuteRoundsKX(short[] sArr, short[] sArr2, short[] sArr3) {
            rounds12X(sArr, sArr2, sArr3);
        }
    }

    public class ISAPAEAD_K_128A extends ISAPAEAD_K {
        public ISAPAEAD_K_128A() {
            super();
            this.ISAP_IV1_16 = new short[]{-32767, 400, PassportService.EF_DG16, 2056};
            this.ISAP_IV2_16 = new short[]{-32766, 400, PassportService.EF_DG16, 2056};
            this.ISAP_IV3_16 = new short[]{-32765, 400, PassportService.EF_DG16, 2056};
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAPAEAD_K
        public void PermuteRoundsBX(short[] sArr, short[] sArr2, short[] sArr3) {
            prepareThetaX(sArr, sArr3);
            thetaRhoPiChiIotaPrepareTheta(19, sArr, sArr2, sArr3);
            System.arraycopy(sArr2, 0, sArr, 0, sArr2.length);
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAPAEAD_K
        public void PermuteRoundsHX(short[] sArr, short[] sArr2, short[] sArr3) {
            prepareThetaX(sArr, sArr3);
            rounds_4_18(sArr, sArr2, sArr3);
        }

        @Override // org.bouncycastle.crypto.engines.ISAPEngine.ISAPAEAD_K
        public void PermuteRoundsKX(short[] sArr, short[] sArr2, short[] sArr3) {
            prepareThetaX(sArr, sArr3);
            rounds_12_18(sArr, sArr2, sArr3);
        }
    }

    public interface ISAP_AEAD {
        void init();

        void isap_enc(byte[] bArr, int r22, int r32, byte[] bArr2, int r52, int r6);

        void isap_mac(byte[] bArr, int r22, byte[] bArr2, int r42, byte[] bArr3, int r6);

        void reset();
    }

    public enum IsapType {
        ISAP_A_128A,
        ISAP_K_128A,
        ISAP_A_128,
        ISAP_K_128
    }

    public ISAPEngine(IsapType isapType) {
        String str;
        int r22 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$ISAPEngine$IsapType[isapType.ordinal()];
        if (r22 == 1) {
            this.ISAPAEAD = new ISAPAEAD_A_128A();
            str = "ISAP-A-128A AEAD";
        } else if (r22 == 2) {
            this.ISAPAEAD = new ISAPAEAD_K_128A();
            str = "ISAP-K-128A AEAD";
        } else if (r22 == 3) {
            this.ISAPAEAD = new ISAPAEAD_A_128();
            str = "ISAP-A-128 AEAD";
        } else {
            if (r22 != 4) {
                return;
            }
            this.ISAPAEAD = new ISAPAEAD_K_128();
            str = "ISAP-K-128 AEAD";
        }
        this.algorithmName = str;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int r23) throws InvalidCipherTextException, IllegalStateException {
        if (!this.initialised) {
            throw new IllegalArgumentException("Need call init function before encryption/decryption");
        }
        if (this.forEncryption) {
            byte[] byteArray = this.message.toByteArray();
            int length = byteArray.length;
            int r13 = r23 + length;
            if (r13 + 16 > bArr.length) {
                throw new OutputLengthException("output buffer is too short");
            }
            this.ISAPAEAD.isap_enc(byteArray, 0, length, bArr, r23, bArr.length);
            this.outputStream.write(bArr, r23, length);
            this.f11518ad = this.aadData.toByteArray();
            byte[] byteArray2 = this.outputStream.toByteArray();
            this.f11519c = byteArray2;
            byte[] bArr2 = new byte[16];
            this.mac = bArr2;
            ISAP_AEAD r14 = this.ISAPAEAD;
            byte[] bArr3 = this.f11518ad;
            r14.isap_mac(bArr3, bArr3.length, byteArray2, byteArray2.length, bArr2, 0);
            System.arraycopy(this.mac, 0, bArr, r13, 16);
            return length + 16;
        }
        this.f11518ad = this.aadData.toByteArray();
        byte[] byteArray3 = this.message.toByteArray();
        this.f11519c = byteArray3;
        byte[] bArr4 = new byte[16];
        this.mac = bArr4;
        int length2 = byteArray3.length - bArr4.length;
        if (length2 + r23 > bArr.length) {
            throw new OutputLengthException("output buffer is too short");
        }
        ISAP_AEAD r12 = this.ISAPAEAD;
        byte[] bArr5 = this.f11518ad;
        r12.isap_mac(bArr5, bArr5.length, byteArray3, length2, bArr4, 0);
        this.ISAPAEAD.reset();
        for (int r10 = 0; r10 < 16; r10++) {
            if (this.mac[r10] != this.f11519c[length2 + r10]) {
                throw new IllegalArgumentException("Mac does not match");
            }
        }
        this.ISAPAEAD.isap_enc(this.f11519c, 0, length2, bArr, r23, bArr.length);
        return length2;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return this.algorithmName;
    }

    public int getBlockSize() {
        return this.ISAP_rH_SZ;
    }

    public int getIVBytesSize() {
        return 16;
    }

    public int getKeyBytesSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        return this.mac;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getOutputSize(int r12) {
        return r12 + 16;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int r12) {
        return r12;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalArgumentException {
        this.forEncryption = z10;
        if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("ISAP AEAD init parameters must include an IV");
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        byte[] bArr = parametersWithIV.getIV();
        if (bArr == null || bArr.length != 16) {
            throw new IllegalArgumentException("ISAP AEAD requires exactly 12 bytes of IV");
        }
        if (!(parametersWithIV.getParameters() instanceof KeyParameter)) {
            throw new IllegalArgumentException("ISAP AEAD init parameters must include a key");
        }
        byte[] key = ((KeyParameter) parametersWithIV.getParameters()).getKey();
        if (key.length != 16) {
            throw new IllegalArgumentException("ISAP AEAD key must be 128 bits long");
        }
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 128, cipherParameters, Utils.getPurpose(z10)));
        byte[] bArr2 = new byte[bArr.length];
        this.npub = bArr2;
        this.f11520k = new byte[key.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        System.arraycopy(key, 0, this.f11520k, 0, key.length);
        this.ISAPAEAD.init();
        this.initialised = true;
        reset();
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b10) {
        this.aadData.write(b10);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADBytes(byte[] bArr, int r42, int r52) {
        if (r42 + r52 > bArr.length) {
            throw new DataLengthException("input buffer too short".concat(this.forEncryption ? "encryption" : "decryption"));
        }
        this.aadData.write(bArr, r42, r52);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processByte(byte b10, byte[] bArr, int r10) throws DataLengthException {
        return processBytes(new byte[]{b10}, 0, 1, bArr, r10);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processBytes(byte[] bArr, int r92, int r10, byte[] bArr2, int r12) throws DataLengthException {
        if (!this.initialised) {
            throw new IllegalArgumentException("Need call init function before encryption/decryption");
        }
        if (r92 + r10 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        this.message.write(bArr, r92, r10);
        if (!this.forEncryption || this.message.size() < this.ISAP_rH_SZ) {
            return 0;
        }
        int size = this.message.size();
        int r93 = this.ISAP_rH_SZ;
        int r82 = (size / r93) * r93;
        if (r12 + r82 > bArr2.length) {
            throw new OutputLengthException("output buffer is too short");
        }
        byte[] byteArray = this.message.toByteArray();
        this.ISAPAEAD.isap_enc(byteArray, 0, r82, bArr2, r12, bArr2.length);
        this.outputStream.write(bArr2, r12, r82);
        this.message.reset();
        this.message.write(byteArray, r82, byteArray.length - r82);
        return r82;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() {
        if (!this.initialised) {
            throw new IllegalArgumentException("Need call init function before encryption/decryption");
        }
        this.aadData.reset();
        this.ISAPAEAD.reset();
        this.message.reset();
        this.outputStream.reset();
    }
}
