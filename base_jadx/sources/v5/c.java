package v5;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.util.Iterator;
import n5.l;
import n5.q;

/* loaded from: classes2.dex */
public final class c extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    public boolean f18238a = false;

    /* renamed from: b, reason: collision with root package name */
    public InputStream f18239b = null;

    /* renamed from: c, reason: collision with root package name */
    public final InputStream f18240c;

    /* renamed from: d, reason: collision with root package name */
    public final l<q> f18241d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f18242e;

    public c(l<q> lVar, InputStream inputStream, byte[] bArr) {
        this.f18241d = lVar;
        if (inputStream.markSupported()) {
            this.f18240c = inputStream;
        } else {
            this.f18240c = new BufferedInputStream(inputStream);
        }
        this.f18240c.mark(Integer.MAX_VALUE);
        this.f18242e = (byte[]) bArr.clone();
    }

    public final void a() throws IOException {
        this.f18240c.reset();
    }

    @Override // java.io.InputStream
    public final synchronized int available() throws IOException {
        InputStream inputStream = this.f18239b;
        if (inputStream == null) {
            return 0;
        }
        return inputStream.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() throws IOException {
        this.f18240c.close();
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.InputStream
    public final synchronized int read() throws IOException {
        byte[] bArr = new byte[1];
        if (read(bArr) != 1) {
            return -1;
        }
        return bArr[0];
    }

    @Override // java.io.InputStream
    public final synchronized int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public final synchronized int read(byte[] bArr, int r72, int r82) throws IOException {
        if (r82 == 0) {
            return 0;
        }
        InputStream inputStream = this.f18239b;
        if (inputStream != null) {
            return inputStream.read(bArr, r72, r82);
        }
        if (this.f18238a) {
            throw new IOException("No matching key found for the ciphertext in the stream.");
        }
        this.f18238a = true;
        Iterator<l.a<q>> it = this.f18241d.a(n5.b.f10566a).iterator();
        while (it.hasNext()) {
            try {
                InputStream inputStreamA = it.next().f10581a.a(this.f18240c, this.f18242e);
                int r32 = inputStreamA.read(bArr, r72, r82);
                if (r32 == 0) {
                    throw new IOException("Could not read bytes from the ciphertext stream");
                }
                this.f18239b = inputStreamA;
                this.f18240c.mark(0);
                return r32;
            } catch (IOException | GeneralSecurityException unused) {
                a();
            }
        }
        throw new IOException("No matching key found for the ciphertext in the stream.");
    }
}
