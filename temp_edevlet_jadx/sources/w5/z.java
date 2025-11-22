package w5;

import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;

/* loaded from: classes2.dex */
public final class z extends FilterOutputStream {

    /* renamed from: a, reason: collision with root package name */
    public final x f18792a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18793b;

    /* renamed from: c, reason: collision with root package name */
    public final ByteBuffer f18794c;

    /* renamed from: d, reason: collision with root package name */
    public final ByteBuffer f18795d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f18796e;

    public z(r rVar, FileOutputStream fileOutputStream, byte[] bArr) throws GeneralSecurityException, IOException {
        super(fileOutputStream);
        x xVarH = rVar.h(bArr);
        this.f18792a = xVarH;
        int r52 = rVar.f();
        this.f18793b = r52;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(r52);
        this.f18794c = byteBufferAllocate;
        this.f18795d = ByteBuffer.allocate(rVar.d());
        byteBufferAllocate.limit(r52 - rVar.c());
        ByteBuffer byteBufferB = xVarH.b();
        byte[] bArr2 = new byte[byteBufferB.remaining()];
        byteBufferB.get(bArr2);
        ((FilterOutputStream) this).out.write(bArr2);
        this.f18796e = true;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() throws IOException {
        if (this.f18796e) {
            try {
                this.f18794c.flip();
                this.f18795d.clear();
                this.f18792a.c(this.f18794c, this.f18795d);
                this.f18795d.flip();
                ((FilterOutputStream) this).out.write(this.f18795d.array(), this.f18795d.position(), this.f18795d.remaining());
                this.f18796e = false;
                super.close();
            } catch (GeneralSecurityException e10) {
                throw new IOException("ptBuffer.remaining():" + this.f18794c.remaining() + " ctBuffer.remaining():" + this.f18795d.remaining(), e10);
            }
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int r42) throws IOException {
        write(new byte[]{(byte) r42}, 0, 1);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final synchronized void write(byte[] bArr, int r6, int r72) throws IOException {
        if (!this.f18796e) {
            throw new IOException("Trying to write to closed stream");
        }
        while (r72 > this.f18794c.remaining()) {
            int r02 = this.f18794c.remaining();
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, r6, r02);
            r6 += r02;
            r72 -= r02;
            try {
                this.f18794c.flip();
                this.f18795d.clear();
                this.f18792a.a(this.f18794c, byteBufferWrap, this.f18795d);
                this.f18795d.flip();
                ((FilterOutputStream) this).out.write(this.f18795d.array(), this.f18795d.position(), this.f18795d.remaining());
                this.f18794c.clear();
                this.f18794c.limit(this.f18793b);
            } catch (GeneralSecurityException e10) {
                throw new IOException(e10);
            }
        }
        this.f18794c.put(bArr, r6, r72);
    }
}
