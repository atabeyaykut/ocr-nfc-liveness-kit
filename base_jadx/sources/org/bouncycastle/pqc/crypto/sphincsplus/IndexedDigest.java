package org.bouncycastle.pqc.crypto.sphincsplus;

/* loaded from: classes2.dex */
class IndexedDigest {
    final byte[] digest;
    final int idx_leaf;
    final long idx_tree;

    public IndexedDigest(long j10, int r32, byte[] bArr) {
        this.idx_tree = j10;
        this.idx_leaf = r32;
        this.digest = bArr;
    }
}
