package org.bouncycastle.crypto.macs;

import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class SipHash128 extends SipHash {
    public SipHash128() {
    }

    public SipHash128(int r12, int r22) {
        super(r12, r22);
    }

    @Override // org.bouncycastle.crypto.macs.SipHash, org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int r10) throws IllegalStateException, DataLengthException {
        this.f11573m = ((this.f11573m >>> ((7 - this.wordPos) << 3)) >>> 8) | ((((this.wordCount << 3) + r2) & 255) << 56);
        processMessageWord();
        this.f11576v2 ^= 238;
        applySipRounds(this.f11570d);
        long j10 = this.f11574v0;
        long j11 = this.f11575v1;
        long j12 = ((j10 ^ j11) ^ this.f11576v2) ^ this.f11577v3;
        this.f11575v1 = j11 ^ 221;
        applySipRounds(this.f11570d);
        long j13 = ((this.f11574v0 ^ this.f11575v1) ^ this.f11576v2) ^ this.f11577v3;
        reset();
        Pack.longToLittleEndian(j12, bArr, r10);
        Pack.longToLittleEndian(j13, bArr, r10 + 8);
        return 16;
    }

    @Override // org.bouncycastle.crypto.macs.SipHash
    public long doFinal() throws IllegalStateException, DataLengthException {
        throw new UnsupportedOperationException("doFinal() is not supported");
    }

    @Override // org.bouncycastle.crypto.macs.SipHash, org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "SipHash128-" + this.f11569c + "-" + this.f11570d;
    }

    @Override // org.bouncycastle.crypto.macs.SipHash, org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.macs.SipHash, org.bouncycastle.crypto.Mac
    public void reset() {
        super.reset();
        this.f11575v1 ^= 238;
    }
}
