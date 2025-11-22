package org.bouncycastle.util.io;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes2.dex */
public abstract class SimpleOutputStream extends OutputStream {
    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
    }

    @Override // java.io.OutputStream
    public void write(int r42) throws IOException {
        write(new byte[]{(byte) r42}, 0, 1);
    }
}
