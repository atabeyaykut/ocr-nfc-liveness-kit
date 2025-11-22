package t0;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class b implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public final InputStream f15486a;

    /* renamed from: b, reason: collision with root package name */
    public final Charset f15487b;

    /* renamed from: c, reason: collision with root package name */
    public byte[] f15488c;

    /* renamed from: d, reason: collision with root package name */
    public int f15489d;

    /* renamed from: e, reason: collision with root package name */
    public int f15490e;

    public class a extends ByteArrayOutputStream {
        public a(int r22) {
            super(r22);
        }

        @Override // java.io.ByteArrayOutputStream
        public final String toString() {
            int r02 = ((ByteArrayOutputStream) this).count;
            if (r02 > 0 && ((ByteArrayOutputStream) this).buf[r02 - 1] == 13) {
                r02--;
            }
            try {
                return new String(((ByteArrayOutputStream) this).buf, 0, r02, b.this.f15487b.name());
            } catch (UnsupportedEncodingException e10) {
                throw new AssertionError(e10);
            }
        }
    }

    public b(FileInputStream fileInputStream, Charset charset) {
        if (charset == null) {
            throw null;
        }
        if (!charset.equals(c.f15492a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f15486a = fileInputStream;
        this.f15487b = charset;
        this.f15488c = new byte[8192];
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String a() throws java.io.IOException {
        /*
            r8 = this;
            java.io.InputStream r0 = r8.f15486a
            monitor-enter(r0)
            byte[] r1 = r8.f15488c     // Catch: java.lang.Throwable -> Laa
            if (r1 == 0) goto La2
            int r2 = r8.f15489d     // Catch: java.lang.Throwable -> Laa
            int r3 = r8.f15490e     // Catch: java.lang.Throwable -> Laa
            r4 = 0
            r5 = -1
            if (r2 < r3) goto L23
            int r2 = r1.length     // Catch: java.lang.Throwable -> Laa
            java.io.InputStream r3 = r8.f15486a     // Catch: java.lang.Throwable -> Laa
            int r1 = r3.read(r1, r4, r2)     // Catch: java.lang.Throwable -> Laa
            if (r1 == r5) goto L1d
            r8.f15489d = r4     // Catch: java.lang.Throwable -> Laa
            r8.f15490e = r1     // Catch: java.lang.Throwable -> Laa
            goto L23
        L1d:
            java.io.EOFException r1 = new java.io.EOFException     // Catch: java.lang.Throwable -> Laa
            r1.<init>()     // Catch: java.lang.Throwable -> Laa
            throw r1     // Catch: java.lang.Throwable -> Laa
        L23:
            int r1 = r8.f15489d     // Catch: java.lang.Throwable -> Laa
        L25:
            int r2 = r8.f15490e     // Catch: java.lang.Throwable -> Laa
            r3 = 10
            if (r1 == r2) goto L54
            byte[] r2 = r8.f15488c     // Catch: java.lang.Throwable -> Laa
            r6 = r2[r1]     // Catch: java.lang.Throwable -> Laa
            if (r6 != r3) goto L51
            int r3 = r8.f15489d     // Catch: java.lang.Throwable -> Laa
            if (r1 == r3) goto L3e
            int r4 = r1 + (-1)
            r5 = r2[r4]     // Catch: java.lang.Throwable -> Laa
            r6 = 13
            if (r5 != r6) goto L3e
            goto L3f
        L3e:
            r4 = r1
        L3f:
            java.lang.String r5 = new java.lang.String     // Catch: java.lang.Throwable -> Laa
            int r4 = r4 - r3
            java.nio.charset.Charset r6 = r8.f15487b     // Catch: java.lang.Throwable -> Laa
            java.lang.String r6 = r6.name()     // Catch: java.lang.Throwable -> Laa
            r5.<init>(r2, r3, r4, r6)     // Catch: java.lang.Throwable -> Laa
            int r1 = r1 + 1
            r8.f15489d = r1     // Catch: java.lang.Throwable -> Laa
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Laa
            return r5
        L51:
            int r1 = r1 + 1
            goto L25
        L54:
            t0.b$a r1 = new t0.b$a     // Catch: java.lang.Throwable -> Laa
            int r2 = r8.f15490e     // Catch: java.lang.Throwable -> Laa
            int r6 = r8.f15489d     // Catch: java.lang.Throwable -> Laa
            int r2 = r2 - r6
            int r2 = r2 + 80
            r1.<init>(r2)     // Catch: java.lang.Throwable -> Laa
        L60:
            byte[] r2 = r8.f15488c     // Catch: java.lang.Throwable -> Laa
            int r6 = r8.f15489d     // Catch: java.lang.Throwable -> Laa
            int r7 = r8.f15490e     // Catch: java.lang.Throwable -> Laa
            int r7 = r7 - r6
            r1.write(r2, r6, r7)     // Catch: java.lang.Throwable -> Laa
            r8.f15490e = r5     // Catch: java.lang.Throwable -> Laa
            byte[] r2 = r8.f15488c     // Catch: java.lang.Throwable -> Laa
            int r6 = r2.length     // Catch: java.lang.Throwable -> Laa
            java.io.InputStream r7 = r8.f15486a     // Catch: java.lang.Throwable -> Laa
            int r2 = r7.read(r2, r4, r6)     // Catch: java.lang.Throwable -> Laa
            if (r2 == r5) goto L9c
            r8.f15489d = r4     // Catch: java.lang.Throwable -> Laa
            r8.f15490e = r2     // Catch: java.lang.Throwable -> Laa
            r2 = 0
        L7c:
            int r6 = r8.f15490e     // Catch: java.lang.Throwable -> Laa
            if (r2 == r6) goto L60
            byte[] r6 = r8.f15488c     // Catch: java.lang.Throwable -> Laa
            r7 = r6[r2]     // Catch: java.lang.Throwable -> Laa
            if (r7 != r3) goto L99
            int r3 = r8.f15489d     // Catch: java.lang.Throwable -> Laa
            if (r2 == r3) goto L8f
            int r4 = r2 - r3
            r1.write(r6, r3, r4)     // Catch: java.lang.Throwable -> Laa
        L8f:
            int r2 = r2 + 1
            r8.f15489d = r2     // Catch: java.lang.Throwable -> Laa
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> Laa
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Laa
            return r1
        L99:
            int r2 = r2 + 1
            goto L7c
        L9c:
            java.io.EOFException r1 = new java.io.EOFException     // Catch: java.lang.Throwable -> Laa
            r1.<init>()     // Catch: java.lang.Throwable -> Laa
            throw r1     // Catch: java.lang.Throwable -> Laa
        La2:
            java.io.IOException r1 = new java.io.IOException     // Catch: java.lang.Throwable -> Laa
            java.lang.String r2 = "LineReader is closed"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> Laa
            throw r1     // Catch: java.lang.Throwable -> Laa
        Laa:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Laa
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: t0.b.a():java.lang.String");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this.f15486a) {
            if (this.f15488c != null) {
                this.f15488c = null;
                this.f15486a.close();
            }
        }
    }
}
