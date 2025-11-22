package org.bouncycastle.crypto.io;

import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Mac;

/* loaded from: classes2.dex */
public class MacOutputStream extends OutputStream {
    protected Mac mac;

    public MacOutputStream(Mac mac) {
        this.mac = mac;
    }

    public byte[] getMac() throws IllegalStateException, DataLengthException {
        byte[] bArr = new byte[this.mac.getMacSize()];
        this.mac.doFinal(bArr, 0);
        return bArr;
    }

    @Override // java.io.OutputStream
    public void write(int r22) throws IllegalStateException, IOException {
        this.mac.update((byte) r22);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int r32, int r42) throws IllegalStateException, DataLengthException, IOException {
        this.mac.update(bArr, r32, r42);
    }
}
