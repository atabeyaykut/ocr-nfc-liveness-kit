package org.bouncycastle.pqc.crypto.lms;

import org.bouncycastle.crypto.Digest;

/* loaded from: classes2.dex */
class SeedDerive {
    private final byte[] I;
    private final Digest digest;

    /* renamed from: j, reason: collision with root package name */
    private int f11922j;
    private final byte[] masterSeed;

    /* renamed from: q, reason: collision with root package name */
    private int f11923q;

    public SeedDerive(byte[] bArr, byte[] bArr2, Digest digest) {
        this.I = bArr;
        this.masterSeed = bArr2;
        this.digest = digest;
    }

    public void deriveSeed(byte[] bArr, boolean z10) {
        deriveSeed(bArr, z10, 0);
    }

    public void deriveSeed(byte[] bArr, boolean z10, int r32) {
        deriveSeed(bArr, r32);
        if (z10) {
            this.f11922j++;
        }
    }

    public byte[] deriveSeed(byte[] bArr, int r6) {
        if (bArr.length - r6 < this.digest.getDigestSize()) {
            throw new IllegalArgumentException("target length is less than digest size.");
        }
        Digest digest = this.digest;
        byte[] bArr2 = this.I;
        digest.update(bArr2, 0, bArr2.length);
        this.digest.update((byte) (this.f11923q >>> 24));
        this.digest.update((byte) (this.f11923q >>> 16));
        this.digest.update((byte) (this.f11923q >>> 8));
        this.digest.update((byte) this.f11923q);
        this.digest.update((byte) (this.f11922j >>> 8));
        this.digest.update((byte) this.f11922j);
        this.digest.update((byte) -1);
        Digest digest2 = this.digest;
        byte[] bArr3 = this.masterSeed;
        digest2.update(bArr3, 0, bArr3.length);
        this.digest.doFinal(bArr, r6);
        return bArr;
    }

    public byte[] getI() {
        return this.I;
    }

    public int getJ() {
        return this.f11922j;
    }

    public byte[] getMasterSeed() {
        return this.masterSeed;
    }

    public int getQ() {
        return this.f11923q;
    }

    public void setJ(int r12) {
        this.f11922j = r12;
    }

    public void setQ(int r12) {
        this.f11923q = r12;
    }
}
