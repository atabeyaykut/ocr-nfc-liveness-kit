package org.bouncycastle.crypto.io;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Mac;

/* loaded from: classes2.dex */
public class MacInputStream extends FilterInputStream {
    protected Mac mac;

    public MacInputStream(InputStream inputStream, Mac mac) {
        super(inputStream);
        this.mac = mac;
    }

    public Mac getMac() {
        return this.mac;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IllegalStateException, IOException {
        int r02 = ((FilterInputStream) this).in.read();
        if (r02 >= 0) {
            this.mac.update((byte) r02);
        }
        return r02;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int r32, int r42) throws IllegalStateException, DataLengthException, IOException {
        int r43 = ((FilterInputStream) this).in.read(bArr, r32, r42);
        if (r43 >= 0) {
            this.mac.update(bArr, r32, r43);
        }
        return r43;
    }
}
