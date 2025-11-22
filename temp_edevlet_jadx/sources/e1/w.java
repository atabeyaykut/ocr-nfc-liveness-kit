package e1;

import androidx.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class w extends FilterInputStream {

    /* renamed from: a, reason: collision with root package name */
    public volatile byte[] f5089a;

    /* renamed from: b, reason: collision with root package name */
    public int f5090b;

    /* renamed from: c, reason: collision with root package name */
    public int f5091c;

    /* renamed from: d, reason: collision with root package name */
    public int f5092d;

    /* renamed from: e, reason: collision with root package name */
    public int f5093e;
    public final y0.b f;

    public static class a extends IOException {
        public a(String str) {
            super(str);
        }
    }

    public w(@NonNull InputStream inputStream, @NonNull y0.b bVar) {
        super(inputStream);
        this.f5092d = -1;
        this.f = bVar;
        this.f5089a = (byte[]) bVar.c(byte[].class, 65536);
    }

    public static void c() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    public final int a(InputStream inputStream, byte[] bArr) throws IOException {
        int r02 = this.f5092d;
        if (r02 != -1) {
            int r32 = this.f5093e - r02;
            int r42 = this.f5091c;
            if (r32 < r42) {
                if (r02 == 0 && r42 > bArr.length && this.f5090b == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= r42) {
                        r42 = length;
                    }
                    byte[] bArr2 = (byte[]) this.f.c(byte[].class, r42);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f5089a = bArr2;
                    this.f.put(bArr);
                    bArr = bArr2;
                } else if (r02 > 0) {
                    System.arraycopy(bArr, r02, bArr, 0, bArr.length - r02);
                }
                int r03 = this.f5093e - this.f5092d;
                this.f5093e = r03;
                this.f5092d = 0;
                this.f5090b = 0;
                int r6 = inputStream.read(bArr, r03, bArr.length - r03);
                int r72 = this.f5093e;
                if (r6 > 0) {
                    r72 += r6;
                }
                this.f5090b = r72;
                return r6;
            }
        }
        int r62 = inputStream.read(bArr);
        if (r62 > 0) {
            this.f5092d = -1;
            this.f5093e = 0;
            this.f5090b = r62;
        }
        return r62;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int available() throws IOException {
        InputStream inputStream;
        inputStream = ((FilterInputStream) this).in;
        if (this.f5089a == null || inputStream == null) {
            c();
            throw null;
        }
        return (this.f5090b - this.f5093e) + inputStream.available();
    }

    public final synchronized void b() {
        if (this.f5089a != null) {
            this.f.put(this.f5089a);
            this.f5089a = null;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f5089a != null) {
            this.f.put(this.f5089a);
            this.f5089a = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int r22) {
        this.f5091c = Math.max(this.f5091c, r22);
        this.f5092d = this.f5093e;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read() throws IOException {
        byte[] bArr = this.f5089a;
        InputStream inputStream = ((FilterInputStream) this).in;
        if (bArr == null || inputStream == null) {
            c();
            throw null;
        }
        if (this.f5093e >= this.f5090b && a(inputStream, bArr) == -1) {
            return -1;
        }
        if (bArr != this.f5089a && (bArr = this.f5089a) == null) {
            c();
            throw null;
        }
        int r12 = this.f5090b;
        int r22 = this.f5093e;
        if (r12 - r22 <= 0) {
            return -1;
        }
        this.f5093e = r22 + 1;
        return bArr[r22] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read(@NonNull byte[] bArr, int r82, int r92) throws IOException {
        int r32;
        int r42;
        byte[] bArr2 = this.f5089a;
        if (bArr2 == null) {
            c();
            throw null;
        }
        if (r92 == 0) {
            return 0;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream == null) {
            c();
            throw null;
        }
        int r33 = this.f5093e;
        int r43 = this.f5090b;
        if (r33 < r43) {
            int r44 = r43 - r33;
            if (r44 >= r92) {
                r44 = r92;
            }
            System.arraycopy(bArr2, r33, bArr, r82, r44);
            this.f5093e += r44;
            if (r44 == r92 || inputStream.available() == 0) {
                return r44;
            }
            r82 += r44;
            r32 = r92 - r44;
        } else {
            r32 = r92;
        }
        while (true) {
            if (this.f5092d == -1 && r32 >= bArr2.length) {
                r42 = inputStream.read(bArr, r82, r32);
                if (r42 == -1) {
                    return r32 != r92 ? r92 - r32 : -1;
                }
            } else {
                if (a(inputStream, bArr2) == -1) {
                    return r32 != r92 ? r92 - r32 : -1;
                }
                if (bArr2 != this.f5089a && (bArr2 = this.f5089a) == null) {
                    c();
                    throw null;
                }
                int r45 = this.f5090b;
                int r52 = this.f5093e;
                r42 = r45 - r52;
                if (r42 >= r32) {
                    r42 = r32;
                }
                System.arraycopy(bArr2, r52, bArr, r82, r42);
                this.f5093e += r42;
            }
            r32 -= r42;
            if (r32 == 0) {
                return r92;
            }
            if (inputStream.available() == 0) {
                return r92 - r32;
            }
            r82 += r42;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() throws IOException {
        if (this.f5089a == null) {
            throw new IOException("Stream is closed");
        }
        int r12 = this.f5092d;
        if (-1 == r12) {
            throw new a("Mark has been invalidated, pos: " + this.f5093e + " markLimit: " + this.f5091c);
        }
        this.f5093e = r12;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized long skip(long j10) throws IOException {
        if (j10 < 1) {
            return 0L;
        }
        byte[] bArr = this.f5089a;
        if (bArr == null) {
            c();
            throw null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream == null) {
            c();
            throw null;
        }
        int r12 = this.f5090b;
        int r52 = this.f5093e;
        if (r12 - r52 >= j10) {
            this.f5093e = (int) (r52 + j10);
            return j10;
        }
        long j11 = r12 - r52;
        this.f5093e = r12;
        if (this.f5092d == -1 || j10 > this.f5091c) {
            long jSkip = inputStream.skip(j10 - j11);
            if (jSkip > 0) {
                this.f5092d = -1;
            }
            return j11 + jSkip;
        }
        if (a(inputStream, bArr) == -1) {
            return j11;
        }
        int r02 = this.f5090b;
        int r13 = this.f5093e;
        if (r02 - r13 >= j10 - j11) {
            this.f5093e = (int) ((r13 + j10) - j11);
            return j10;
        }
        long j12 = (j11 + r02) - r13;
        this.f5093e = r02;
        return j12;
    }
}
