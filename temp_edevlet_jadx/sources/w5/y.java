package w5;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class y extends FilterInputStream {

    /* renamed from: a, reason: collision with root package name */
    public final ByteBuffer f18781a;

    /* renamed from: b, reason: collision with root package name */
    public final ByteBuffer f18782b;

    /* renamed from: c, reason: collision with root package name */
    public final int f18783c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f18784d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f18785e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f18786g;

    /* renamed from: h, reason: collision with root package name */
    public final byte[] f18787h;

    /* renamed from: j, reason: collision with root package name */
    public int f18788j;

    /* renamed from: k, reason: collision with root package name */
    public final w f18789k;

    /* renamed from: l, reason: collision with root package name */
    public final int f18790l;

    /* renamed from: m, reason: collision with root package name */
    public final int f18791m;

    public y(r rVar, InputStream inputStream, byte[] bArr) throws GeneralSecurityException, IOException {
        super(inputStream);
        this.f18789k = rVar.g();
        this.f18783c = rVar.e();
        this.f18787h = Arrays.copyOf(bArr, bArr.length);
        int r32 = rVar.d();
        this.f18790l = r32;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(r32 + 1);
        this.f18781a = byteBufferAllocate;
        byteBufferAllocate.limit(0);
        this.f18791m = r32 - rVar.c();
        ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(rVar.f() + 16);
        this.f18782b = byteBufferAllocate2;
        byteBufferAllocate2.limit(0);
        this.f18784d = false;
        this.f18785e = false;
        this.f = false;
        this.f18788j = 0;
        this.f18786g = false;
    }

    public final void a() throws IOException {
        byte b10;
        while (!this.f18785e && this.f18781a.remaining() > 0) {
            int r02 = ((FilterInputStream) this).in.read(this.f18781a.array(), this.f18781a.position(), this.f18781a.remaining());
            if (r02 > 0) {
                ByteBuffer byteBuffer = this.f18781a;
                byteBuffer.position(byteBuffer.position() + r02);
            } else if (r02 == -1) {
                this.f18785e = true;
            } else if (r02 == 0) {
                throw new IOException("Could not read bytes from the ciphertext stream");
            }
        }
        if (this.f18785e) {
            b10 = 0;
        } else {
            ByteBuffer byteBuffer2 = this.f18781a;
            b10 = byteBuffer2.get(byteBuffer2.position() - 1);
            ByteBuffer byteBuffer3 = this.f18781a;
            byteBuffer3.position(byteBuffer3.position() - 1);
        }
        this.f18781a.flip();
        this.f18782b.clear();
        try {
            this.f18789k.b(this.f18781a, this.f18788j, this.f18785e, this.f18782b);
            this.f18788j++;
            this.f18782b.flip();
            this.f18781a.clear();
            if (this.f18785e) {
                return;
            }
            this.f18781a.clear();
            this.f18781a.limit(this.f18790l + 1);
            this.f18781a.put(b10);
        } catch (GeneralSecurityException e10) {
            this.f18786g = true;
            this.f18782b.limit(0);
            throw new IOException(e10.getMessage() + "\n" + toString() + "\nsegmentNr:" + this.f18788j + " endOfCiphertext:" + this.f18785e, e10);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int available() {
        return this.f18782b.remaining();
    }

    public final void b() throws IOException {
        if (this.f18784d) {
            this.f18786g = true;
            this.f18782b.limit(0);
            throw new IOException("Decryption failed.");
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(this.f18783c);
        while (byteBufferAllocate.remaining() > 0) {
            int r32 = ((FilterInputStream) this).in.read(byteBufferAllocate.array(), byteBufferAllocate.position(), byteBufferAllocate.remaining());
            if (r32 == -1) {
                this.f18786g = true;
                this.f18782b.limit(0);
                throw new IOException("Ciphertext is too short");
            }
            if (r32 == 0) {
                throw new IOException("Could not read bytes from the ciphertext stream");
            }
            byteBufferAllocate.position(byteBufferAllocate.position() + r32);
        }
        byteBufferAllocate.flip();
        try {
            this.f18789k.a(byteBufferAllocate, this.f18787h);
            this.f18784d = true;
        } catch (GeneralSecurityException e10) {
            throw new IOException(e10);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() throws IOException {
        super.close();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int r12) {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        byte[] bArr = new byte[1];
        int r32 = read(bArr, 0, 1);
        if (r32 == 1) {
            return bArr[0] & 255;
        }
        if (r32 == -1) {
            return r32;
        }
        throw new IOException("Reading failed");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read(byte[] bArr, int r82, int r92) throws IOException {
        if (this.f18786g) {
            throw new IOException("Decryption failed.");
        }
        if (!this.f18784d) {
            b();
            this.f18781a.clear();
            this.f18781a.limit(this.f18791m + 1);
        }
        if (this.f) {
            return -1;
        }
        int r02 = 0;
        while (true) {
            if (r02 >= r92) {
                break;
            }
            if (this.f18782b.remaining() == 0) {
                if (this.f18785e) {
                    this.f = true;
                    break;
                }
                a();
            }
            int r32 = Math.min(this.f18782b.remaining(), r92 - r02);
            this.f18782b.get(bArr, r02 + r82, r32);
            r02 += r32;
        }
        if (r02 == 0 && this.f) {
            return -1;
        }
        return r02;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j10) throws IOException {
        int r6;
        long j11 = this.f18790l;
        if (j10 <= 0) {
            return 0L;
        }
        int r12 = (int) Math.min(j11, j10);
        byte[] bArr = new byte[r12];
        long j12 = j10;
        while (j12 > 0 && (r6 = read(bArr, 0, (int) Math.min(r12, j12))) > 0) {
            j12 -= r6;
        }
        return j10 - j12;
    }

    public final synchronized String toString() {
        return "StreamingAeadDecryptingStream\nsegmentNr:" + this.f18788j + "\nciphertextSegmentSize:" + this.f18790l + "\nheaderRead:" + this.f18784d + "\nendOfCiphertext:" + this.f18785e + "\nendOfPlaintext:" + this.f + "\ndecryptionErrorOccured:" + this.f18786g + "\nciphertextSgement position:" + this.f18781a.position() + " limit:" + this.f18781a.limit() + "\nplaintextSegment position:" + this.f18782b.position() + " limit:" + this.f18782b.limit();
    }
}
