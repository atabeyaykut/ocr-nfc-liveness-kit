package org.bouncycastle.jcajce.io;

import java.io.IOException;
import java.io.OutputStream;
import javax.crypto.Mac;

/* loaded from: classes2.dex */
class MacUpdatingOutputStream extends OutputStream {
    private Mac mac;

    public MacUpdatingOutputStream(Mac mac) {
        this.mac = mac;
    }

    @Override // java.io.OutputStream
    public void write(int r22) throws IllegalStateException, IOException {
        this.mac.update((byte) r22);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IllegalStateException, IOException {
        this.mac.update(bArr);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int r32, int r42) throws IllegalStateException, IOException {
        this.mac.update(bArr, r32, r42);
    }
}
