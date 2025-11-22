package org.bouncycastle.crypto.digests;

import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.Xof;

/* loaded from: classes2.dex */
public class AsconXof implements Xof {
    private final int ASCON_PB_ROUNDS;
    private final String algorithmName;
    AsconParameters asconParameters;

    /* renamed from: x0, reason: collision with root package name */
    private long f11445x0;

    /* renamed from: x1, reason: collision with root package name */
    private long f11446x1;

    /* renamed from: x2, reason: collision with root package name */
    private long f11447x2;

    /* renamed from: x3, reason: collision with root package name */
    private long f11448x3;

    /* renamed from: x4, reason: collision with root package name */
    private long f11449x4;
    private final ByteArrayOutputStream buffer = new ByteArrayOutputStream();
    private final int CRYPTO_BYTES = 32;

    /* renamed from: org.bouncycastle.crypto.digests.AsconXof$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$digests$AsconXof$AsconParameters;

        static {
            int[] r02 = new int[AsconParameters.values().length];
            $SwitchMap$org$bouncycastle$crypto$digests$AsconXof$AsconParameters = r02;
            try {
                r02[AsconParameters.AsconXof.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$digests$AsconXof$AsconParameters[AsconParameters.AsconXofA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum AsconParameters {
        AsconXof,
        AsconXofA
    }

    public AsconXof(AsconParameters asconParameters) {
        String str;
        this.asconParameters = asconParameters;
        int r22 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$digests$AsconXof$AsconParameters[asconParameters.ordinal()];
        if (r22 == 1) {
            this.ASCON_PB_ROUNDS = 12;
            str = "Ascon-Xof";
        } else {
            if (r22 != 2) {
                throw new IllegalArgumentException("Invalid parameter settings for Ascon Hash");
            }
            this.ASCON_PB_ROUNDS = 8;
            str = "Ascon-XofA";
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
        long j11 = this.f11445x0;
        long j12 = this.f11446x1;
        long j13 = this.f11447x2;
        long j14 = this.f11448x3;
        long j15 = this.f11449x4;
        long j16 = ((((j11 ^ j12) ^ j13) ^ j14) ^ j10) ^ ((((j11 ^ j13) ^ j15) ^ j10) & j12);
        long j17 = ((((j11 ^ j13) ^ j14) ^ j15) ^ j10) ^ (((j12 ^ j13) ^ j10) & (j12 ^ j14));
        long j18 = (((j12 ^ j13) ^ j15) ^ j10) ^ (j14 & j15);
        long j19 = ((j13 ^ (j11 ^ j12)) ^ j10) ^ ((~j11) & (j14 ^ j15));
        long j20 = ((j11 ^ j15) & j12) ^ ((j14 ^ j12) ^ j15);
        this.f11445x0 = (ROR(j16, 19) ^ j16) ^ ROR(j16, 28);
        this.f11446x1 = ROR(j17, 61) ^ (ROR(j17, 39) ^ j17);
        this.f11447x2 = ~(ROR(j18, 6) ^ (ROR(j18, 1) ^ j18));
        this.f11448x3 = (ROR(j19, 10) ^ j19) ^ ROR(j19, 17);
        this.f11449x4 = ROR(j20, 41) ^ (ROR(j20, 7) ^ j20);
    }

    private void STOREBYTES(byte[] bArr, int r6, long j10, int r92) {
        for (int r02 = 0; r02 < r92; r02++) {
            bArr[r02 + r6] = (byte) (j10 >>> ((7 - r02) << 3));
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r32) {
        return doOutput(bArr, r32, getDigestSize());
    }

    @Override // org.bouncycastle.crypto.Xof
    public int doFinal(byte[] bArr, int r22, int r32) {
        return doOutput(bArr, r22, r32);
    }

    @Override // org.bouncycastle.crypto.Xof
    public int doOutput(byte[] bArr, int r11, int r12) {
        long j10;
        if (r11 + 32 > bArr.length) {
            throw new OutputLengthException("output buffer is too short");
        }
        byte[] byteArray = this.buffer.toByteArray();
        int size = this.buffer.size();
        int r13 = 0;
        while (true) {
            j10 = this.f11445x0;
            if (size < 8) {
                break;
            }
            this.f11445x0 = j10 ^ LOADBYTES(byteArray, r13, 8);
            P(this.ASCON_PB_ROUNDS);
            r13 += 8;
            size -= 8;
        }
        long jLOADBYTES = j10 ^ LOADBYTES(byteArray, r13, size);
        this.f11445x0 = jLOADBYTES;
        this.f11445x0 = PAD(size) ^ jLOADBYTES;
        P(12);
        int r02 = 32;
        while (true) {
            long j11 = this.f11445x0;
            if (r02 <= 8) {
                STOREBYTES(bArr, r11, j11, r02);
                reset();
                return 32;
            }
            STOREBYTES(bArr, r11, j11, 8);
            P(this.ASCON_PB_ROUNDS);
            r11 += 8;
            r02 -= 8;
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
        int r02 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$digests$AsconXof$AsconParameters[this.asconParameters.ordinal()];
        if (r02 == 1) {
            this.f11445x0 = -5368810569253202922L;
            this.f11446x1 = 3121280575360345120L;
            this.f11447x2 = 7395939140700676632L;
            this.f11448x3 = 6533890155656471820L;
            j10 = 5710016986865767350L;
        } else {
            if (r02 != 2) {
                return;
            }
            this.f11445x0 = 4940560291654768690L;
            this.f11446x1 = -3635129828240960206L;
            this.f11447x2 = -597534922722107095L;
            this.f11448x3 = 2623493988082852443L;
            j10 = -6283826724160825537L;
        }
        this.f11449x4 = j10;
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
