package org.bouncycastle.crypto.digests;

import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.crypto.OutputLengthException;

/* loaded from: classes2.dex */
public class AsconDigest implements ExtendedDigest {
    private final int ASCON_PB_ROUNDS;
    private final String algorithmName;
    AsconParameters asconParameters;

    /* renamed from: x0, reason: collision with root package name */
    private long f11440x0;

    /* renamed from: x1, reason: collision with root package name */
    private long f11441x1;

    /* renamed from: x2, reason: collision with root package name */
    private long f11442x2;

    /* renamed from: x3, reason: collision with root package name */
    private long f11443x3;

    /* renamed from: x4, reason: collision with root package name */
    private long f11444x4;
    private final ByteArrayOutputStream buffer = new ByteArrayOutputStream();
    private final int CRYPTO_BYTES = 32;

    /* renamed from: org.bouncycastle.crypto.digests.AsconDigest$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$digests$AsconDigest$AsconParameters;

        static {
            int[] r02 = new int[AsconParameters.values().length];
            $SwitchMap$org$bouncycastle$crypto$digests$AsconDigest$AsconParameters = r02;
            try {
                r02[AsconParameters.AsconHash.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$digests$AsconDigest$AsconParameters[AsconParameters.AsconHashA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum AsconParameters {
        AsconHash,
        AsconHashA
    }

    public AsconDigest(AsconParameters asconParameters) {
        String str;
        this.asconParameters = asconParameters;
        int r22 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$digests$AsconDigest$AsconParameters[asconParameters.ordinal()];
        if (r22 == 1) {
            this.ASCON_PB_ROUNDS = 12;
            str = "Ascon-Hash";
        } else {
            if (r22 != 2) {
                throw new IllegalArgumentException("Invalid parameter settings for Ascon Hash");
            }
            this.ASCON_PB_ROUNDS = 8;
            str = "Ascon-HashA";
        }
        this.algorithmName = str;
        reset();
    }

    private long LOADBYTES(byte[] bArr, int r92, int r10) {
        long j10 = 0;
        for (int r22 = 0; r22 < r10; r22++) {
            j10 |= (bArr[r22 + r92] & 255) << ((7 - r22) << 3);
        }
        return j10;
    }

    private void P(int r32) {
        if (r32 == 12) {
            ROUND(240L);
            ROUND(225L);
            ROUND(210L);
            ROUND(195L);
        }
        if (r32 >= 8) {
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

    private long ROR(long j10, int r52) {
        return (j10 << (64 - r52)) | (j10 >>> r52);
    }

    private void ROUND(long j10) {
        long j11 = this.f11440x0;
        long j12 = this.f11441x1;
        long j13 = this.f11442x2;
        long j14 = this.f11443x3;
        long j15 = this.f11444x4;
        long j16 = ((((j11 ^ j12) ^ j13) ^ j14) ^ j10) ^ ((((j11 ^ j13) ^ j15) ^ j10) & j12);
        long j17 = ((((j11 ^ j13) ^ j14) ^ j15) ^ j10) ^ (((j12 ^ j13) ^ j10) & (j12 ^ j14));
        long j18 = (((j12 ^ j13) ^ j15) ^ j10) ^ (j14 & j15);
        long j19 = ((j13 ^ (j11 ^ j12)) ^ j10) ^ ((~j11) & (j14 ^ j15));
        long j20 = ((j11 ^ j15) & j12) ^ ((j14 ^ j12) ^ j15);
        this.f11440x0 = (ROR(j16, 19) ^ j16) ^ ROR(j16, 28);
        this.f11441x1 = ROR(j17, 61) ^ (ROR(j17, 39) ^ j17);
        this.f11442x2 = ~(ROR(j18, 6) ^ (ROR(j18, 1) ^ j18));
        this.f11443x3 = (ROR(j19, 10) ^ j19) ^ ROR(j19, 17);
        this.f11444x4 = ROR(j20, 41) ^ (ROR(j20, 7) ^ j20);
    }

    private void STOREBYTES(byte[] bArr, int r6, long j10, int r92) {
        for (int r02 = 0; r02 < r92; r02++) {
            bArr[r02 + r6] = (byte) (j10 >>> ((7 - r02) << 3));
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r12) {
        long j10;
        if (r12 + 32 > bArr.length) {
            throw new OutputLengthException("output buffer is too short");
        }
        byte[] byteArray = this.buffer.toByteArray();
        int size = this.buffer.size();
        int r22 = 0;
        while (true) {
            j10 = this.f11440x0;
            if (size < 8) {
                break;
            }
            this.f11440x0 = j10 ^ LOADBYTES(byteArray, r22, 8);
            P(this.ASCON_PB_ROUNDS);
            r22 += 8;
            size -= 8;
        }
        long jLOADBYTES = j10 ^ LOADBYTES(byteArray, r22, size);
        this.f11440x0 = jLOADBYTES;
        this.f11440x0 = PAD(size) ^ jLOADBYTES;
        P(12);
        int r13 = 32;
        while (true) {
            long j11 = this.f11440x0;
            if (r13 <= 8) {
                STOREBYTES(bArr, r12, j11, r13);
                reset();
                return 32;
            }
            STOREBYTES(bArr, r12, j11, 8);
            P(this.ASCON_PB_ROUNDS);
            r12 += 8;
            r13 -= 8;
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return this.algorithmName;
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 32;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        long j10;
        this.buffer.reset();
        int r02 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$digests$AsconDigest$AsconParameters[this.asconParameters.ordinal()];
        if (r02 == 1) {
            this.f11440x0 = -1255492011513352131L;
            this.f11441x1 = -8380609354527731710L;
            this.f11442x2 = -5437372128236807582L;
            this.f11443x3 = 4834782570098516968L;
            j10 = 3787428097924915520L;
        } else {
            if (r02 != 2) {
                return;
            }
            this.f11440x0 = 92044056785660070L;
            this.f11441x1 = 8326807761760157607L;
            this.f11442x2 = 3371194088139667532L;
            this.f11443x3 = -2956994353054992515L;
            j10 = -6828509670848688761L;
        }
        this.f11444x4 = j10;
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
