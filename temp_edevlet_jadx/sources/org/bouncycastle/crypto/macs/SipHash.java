package org.bouncycastle.crypto.macs;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class SipHash implements Mac {

    /* renamed from: c, reason: collision with root package name */
    protected final int f11569c;

    /* renamed from: d, reason: collision with root package name */
    protected final int f11570d;

    /* renamed from: k0, reason: collision with root package name */
    protected long f11571k0;

    /* renamed from: k1, reason: collision with root package name */
    protected long f11572k1;

    /* renamed from: m, reason: collision with root package name */
    protected long f11573m;

    /* renamed from: v0, reason: collision with root package name */
    protected long f11574v0;

    /* renamed from: v1, reason: collision with root package name */
    protected long f11575v1;

    /* renamed from: v2, reason: collision with root package name */
    protected long f11576v2;

    /* renamed from: v3, reason: collision with root package name */
    protected long f11577v3;
    protected int wordCount;
    protected int wordPos;

    public SipHash() {
        this.f11573m = 0L;
        this.wordPos = 0;
        this.wordCount = 0;
        this.f11569c = 2;
        this.f11570d = 4;
    }

    public SipHash(int r32, int r42) {
        this.f11573m = 0L;
        this.wordPos = 0;
        this.wordCount = 0;
        this.f11569c = r32;
        this.f11570d = r42;
    }

    public static long rotateLeft(long j10, int r42) {
        return (j10 >>> (-r42)) | (j10 << r42);
    }

    public void applySipRounds(int r12) {
        long jRotateLeft = this.f11574v0;
        long jRotateLeft2 = this.f11575v1;
        long jRotateLeft3 = this.f11576v2;
        long jRotateLeft4 = this.f11577v3;
        for (int r82 = 0; r82 < r12; r82++) {
            long j10 = jRotateLeft + jRotateLeft2;
            long j11 = jRotateLeft3 + jRotateLeft4;
            long jRotateLeft5 = rotateLeft(jRotateLeft2, 13) ^ j10;
            long jRotateLeft6 = rotateLeft(jRotateLeft4, 16) ^ j11;
            long j12 = j11 + jRotateLeft5;
            jRotateLeft = rotateLeft(j10, 32) + jRotateLeft6;
            jRotateLeft2 = rotateLeft(jRotateLeft5, 17) ^ j12;
            jRotateLeft4 = rotateLeft(jRotateLeft6, 21) ^ jRotateLeft;
            jRotateLeft3 = rotateLeft(j12, 32);
        }
        this.f11574v0 = jRotateLeft;
        this.f11575v1 = jRotateLeft2;
        this.f11576v2 = jRotateLeft3;
        this.f11577v3 = jRotateLeft4;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int r42) throws IllegalStateException, DataLengthException {
        Pack.longToLittleEndian(doFinal(), bArr, r42);
        return 8;
    }

    public long doFinal() throws IllegalStateException, DataLengthException {
        this.f11573m = ((this.f11573m >>> ((7 - this.wordPos) << 3)) >>> 8) | ((((this.wordCount << 3) + r2) & 255) << 56);
        processMessageWord();
        this.f11576v2 ^= 255;
        applySipRounds(this.f11570d);
        long j10 = ((this.f11574v0 ^ this.f11575v1) ^ this.f11576v2) ^ this.f11577v3;
        reset();
        return j10;
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "SipHash-" + this.f11569c + "-" + this.f11570d;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException("'params' must be an instance of KeyParameter");
        }
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        if (key.length != 16) {
            throw new IllegalArgumentException("'params' must be a 128-bit key");
        }
        this.f11571k0 = Pack.littleEndianToLong(key, 0);
        this.f11572k1 = Pack.littleEndianToLong(key, 8);
        reset();
    }

    public void processMessageWord() {
        this.wordCount++;
        this.f11577v3 ^= this.f11573m;
        applySipRounds(this.f11569c);
        this.f11574v0 ^= this.f11573m;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        long j10 = this.f11571k0;
        this.f11574v0 = 8317987319222330741L ^ j10;
        long j11 = this.f11572k1;
        this.f11575v1 = 7237128888997146477L ^ j11;
        this.f11576v2 = j10 ^ 7816392313619706465L;
        this.f11577v3 = 8387220255154660723L ^ j11;
        this.f11573m = 0L;
        this.wordPos = 0;
        this.wordCount = 0;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b10) throws IllegalStateException {
        this.f11573m = (this.f11573m >>> 8) | ((b10 & 255) << 56);
        int r82 = this.wordPos + 1;
        this.wordPos = r82;
        if (r82 == 8) {
            processMessageWord();
            this.wordPos = 0;
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int r17, int r18) throws IllegalStateException, DataLengthException {
        int r32 = r18 & (-8);
        int r42 = this.wordPos;
        int r92 = 0;
        if (r42 == 0) {
            while (r92 < r32) {
                this.f11573m = Pack.littleEndianToLong(bArr, r17 + r92);
                processMessageWord();
                r92 += 8;
            }
            while (r92 < r18) {
                this.f11573m = (this.f11573m >>> 8) | ((bArr[r17 + r92] & 255) << 56);
                r92++;
            }
            this.wordPos = r18 - r32;
            return;
        }
        int r43 = r42 << 3;
        int r10 = 0;
        while (r10 < r32) {
            long jLittleEndianToLong = Pack.littleEndianToLong(bArr, r17 + r10);
            this.f11573m = (this.f11573m >>> (-r43)) | (jLittleEndianToLong << r43);
            processMessageWord();
            this.f11573m = jLittleEndianToLong;
            r10 += 8;
        }
        while (r10 < r18) {
            this.f11573m = (this.f11573m >>> 8) | ((bArr[r17 + r10] & 255) << 56);
            int r33 = this.wordPos + 1;
            this.wordPos = r33;
            if (r33 == 8) {
                processMessageWord();
                this.wordPos = 0;
            }
            r10++;
        }
    }
}
