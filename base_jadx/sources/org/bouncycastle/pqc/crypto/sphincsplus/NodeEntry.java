package org.bouncycastle.pqc.crypto.sphincsplus;

/* loaded from: classes2.dex */
class NodeEntry {
    final int nodeHeight;
    final byte[] nodeValue;

    public NodeEntry(byte[] bArr, int r22) {
        this.nodeValue = bArr;
        this.nodeHeight = r22;
    }
}
