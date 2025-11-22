package i6;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class c implements Closeable {

    /* renamed from: g, reason: collision with root package name */
    public static final Logger f7288g = Logger.getLogger(c.class.getName());

    /* renamed from: a, reason: collision with root package name */
    public final RandomAccessFile f7289a;

    /* renamed from: b, reason: collision with root package name */
    public int f7290b;

    /* renamed from: c, reason: collision with root package name */
    public int f7291c;

    /* renamed from: d, reason: collision with root package name */
    public a f7292d;

    /* renamed from: e, reason: collision with root package name */
    public a f7293e;
    public final byte[] f;

    public static class a {

        /* renamed from: c, reason: collision with root package name */
        public static final a f7294c = new a(0, 0);

        /* renamed from: a, reason: collision with root package name */
        public final int f7295a;

        /* renamed from: b, reason: collision with root package name */
        public final int f7296b;

        public a(int r12, int r22) {
            this.f7295a = r12;
            this.f7296b = r22;
        }

        public final String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(a.class.getSimpleName());
            sb2.append("[position = ");
            sb2.append(this.f7295a);
            sb2.append(", length = ");
            return androidx.browser.browseractions.a.b(sb2, this.f7296b, "]");
        }
    }

    public c(File file) throws IOException {
        byte[] bArr = new byte[16];
        this.f = bArr;
        if (!file.exists()) {
            File file2 = new File(file.getPath() + ".tmp");
            RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "rwd");
            try {
                randomAccessFile.setLength(4096L);
                randomAccessFile.seek(0L);
                byte[] bArr2 = new byte[16];
                int[] r11 = {4096, 0, 0, 0};
                int r12 = 0;
                int r13 = 0;
                for (int r6 = 4; r12 < r6; r6 = 4) {
                    int r14 = r11[r12];
                    bArr2[r13] = (byte) (r14 >> 24);
                    bArr2[r13 + 1] = (byte) (r14 >> 16);
                    bArr2[r13 + 2] = (byte) (r14 >> 8);
                    bArr2[r13 + 3] = (byte) r14;
                    r13 += 4;
                    r12++;
                }
                randomAccessFile.write(bArr2);
                randomAccessFile.close();
                if (!file2.renameTo(file)) {
                    throw new IOException("Rename failed!");
                }
            } catch (Throwable th2) {
                randomAccessFile.close();
                throw th2;
            }
        }
        RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "rwd");
        this.f7289a = randomAccessFile2;
        randomAccessFile2.seek(0L);
        randomAccessFile2.readFully(bArr);
        int r02 = f(0, bArr);
        this.f7290b = r02;
        if (r02 > randomAccessFile2.length()) {
            throw new IOException("File is truncated. Expected length: " + this.f7290b + ", Actual length: " + randomAccessFile2.length());
        }
        this.f7291c = f(4, bArr);
        int r03 = f(8, bArr);
        int r22 = f(12, bArr);
        this.f7292d = e(r03);
        this.f7293e = e(r22);
    }

    public static int f(int r22, byte[] bArr) {
        return ((bArr[r22] & 255) << 24) + ((bArr[r22 + 1] & 255) << 16) + ((bArr[r22 + 2] & 255) << 8) + (bArr[r22 + 3] & 255);
    }

    public final void a(byte[] bArr) throws IOException {
        int r42;
        int length = bArr.length;
        synchronized (this) {
            if ((length | 0) >= 0) {
                if (length <= bArr.length - 0) {
                    c(length);
                    boolean zD = d();
                    if (zD) {
                        r42 = 16;
                    } else {
                        a aVar = this.f7293e;
                        r42 = m(aVar.f7295a + 4 + aVar.f7296b);
                    }
                    a aVar2 = new a(r42, length);
                    byte[] bArr2 = this.f;
                    bArr2[0] = (byte) (length >> 24);
                    bArr2[1] = (byte) (length >> 16);
                    bArr2[2] = (byte) (length >> 8);
                    bArr2[3] = (byte) length;
                    j(r42, bArr2, 4);
                    j(r42 + 4, bArr, length);
                    n(this.f7290b, this.f7291c + 1, zD ? r42 : this.f7292d.f7295a, r42);
                    this.f7293e = aVar2;
                    this.f7291c++;
                    if (zD) {
                        this.f7292d = aVar2;
                    }
                }
            }
            throw new IndexOutOfBoundsException();
        }
    }

    public final synchronized void b() throws IOException {
        n(4096, 0, 0, 0);
        this.f7291c = 0;
        a aVar = a.f7294c;
        this.f7292d = aVar;
        this.f7293e = aVar;
        if (this.f7290b > 4096) {
            RandomAccessFile randomAccessFile = this.f7289a;
            randomAccessFile.setLength(4096);
            randomAccessFile.getChannel().force(true);
        }
        this.f7290b = 4096;
    }

    public final void c(int r12) throws IOException {
        int r122 = r12 + 4;
        int r02 = this.f7290b - k();
        if (r02 >= r122) {
            return;
        }
        int r13 = this.f7290b;
        do {
            r02 += r13;
            r13 <<= 1;
        } while (r02 < r122);
        RandomAccessFile randomAccessFile = this.f7289a;
        randomAccessFile.setLength(r13);
        randomAccessFile.getChannel().force(true);
        a aVar = this.f7293e;
        int r03 = m(aVar.f7295a + 4 + aVar.f7296b);
        if (r03 < this.f7292d.f7295a) {
            FileChannel channel = randomAccessFile.getChannel();
            channel.position(this.f7290b);
            long j10 = r03 - 4;
            if (channel.transferTo(16L, j10, channel) != j10) {
                throw new AssertionError("Copied insufficient number of bytes!");
            }
        }
        int r123 = this.f7293e.f7295a;
        int r04 = this.f7292d.f7295a;
        if (r123 < r04) {
            int r22 = (this.f7290b + r123) - 16;
            n(r13, this.f7291c, r04, r22);
            this.f7293e = new a(r22, this.f7293e.f7296b);
        } else {
            n(r13, this.f7291c, r04, r123);
        }
        this.f7290b = r13;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() throws IOException {
        this.f7289a.close();
    }

    public final synchronized boolean d() {
        return this.f7291c == 0;
    }

    public final a e(int r42) throws IOException {
        if (r42 == 0) {
            return a.f7294c;
        }
        RandomAccessFile randomAccessFile = this.f7289a;
        randomAccessFile.seek(r42);
        return new a(r42, randomAccessFile.readInt());
    }

    public final synchronized void g() throws IOException {
        if (d()) {
            throw new NoSuchElementException();
        }
        if (this.f7291c == 1) {
            b();
        } else {
            a aVar = this.f7292d;
            int r02 = m(aVar.f7295a + 4 + aVar.f7296b);
            i(r02, 0, this.f, 4);
            int r22 = f(0, this.f);
            n(this.f7290b, this.f7291c - 1, r02, this.f7293e.f7295a);
            this.f7291c--;
            this.f7292d = new a(r02, r22);
        }
    }

    public final void i(int r6, int r72, byte[] bArr, int r92) throws IOException {
        int r62 = m(r6);
        int r02 = r62 + r92;
        int r12 = this.f7290b;
        RandomAccessFile randomAccessFile = this.f7289a;
        if (r02 <= r12) {
            randomAccessFile.seek(r62);
        } else {
            int r13 = r12 - r62;
            randomAccessFile.seek(r62);
            randomAccessFile.readFully(bArr, r72, r13);
            randomAccessFile.seek(16L);
            r72 += r13;
            r92 -= r13;
        }
        randomAccessFile.readFully(bArr, r72, r92);
    }

    public final void j(int r72, byte[] bArr, int r92) throws IOException {
        int r73 = m(r72);
        int r02 = r73 + r92;
        int r12 = this.f7290b;
        RandomAccessFile randomAccessFile = this.f7289a;
        int r32 = 0;
        if (r02 <= r12) {
            randomAccessFile.seek(r73);
        } else {
            int r13 = r12 - r73;
            randomAccessFile.seek(r73);
            randomAccessFile.write(bArr, 0, r13);
            randomAccessFile.seek(16L);
            r32 = 0 + r13;
            r92 -= r13;
        }
        randomAccessFile.write(bArr, r32, r92);
    }

    public final int k() {
        if (this.f7291c == 0) {
            return 16;
        }
        a aVar = this.f7293e;
        int r22 = aVar.f7295a;
        int r32 = this.f7292d.f7295a;
        return r22 >= r32 ? (r22 - r32) + 4 + aVar.f7296b + 16 : (((r22 + 4) + aVar.f7296b) + this.f7290b) - r32;
    }

    public final int m(int r22) {
        int r02 = this.f7290b;
        return r22 < r02 ? r22 : (r22 + 16) - r02;
    }

    public final void n(int r52, int r6, int r72, int r82) throws IOException {
        int r22 = 0;
        int[] r12 = {r52, r6, r72, r82};
        int r53 = 0;
        while (true) {
            byte[] bArr = this.f;
            if (r22 >= 4) {
                RandomAccessFile randomAccessFile = this.f7289a;
                randomAccessFile.seek(0L);
                randomAccessFile.write(bArr);
                return;
            } else {
                int r73 = r12[r22];
                bArr[r53] = (byte) (r73 >> 24);
                bArr[r53 + 1] = (byte) (r73 >> 16);
                bArr[r53 + 2] = (byte) (r73 >> 8);
                bArr[r53 + 3] = (byte) r73;
                r53 += 4;
                r22++;
            }
        }
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(c.class.getSimpleName());
        sb2.append("[fileLength=");
        sb2.append(this.f7290b);
        sb2.append(", size=");
        sb2.append(this.f7291c);
        sb2.append(", first=");
        sb2.append(this.f7292d);
        sb2.append(", last=");
        sb2.append(this.f7293e);
        sb2.append(", element lengths=[");
        try {
            synchronized (this) {
                int r12 = this.f7292d.f7295a;
                boolean z10 = true;
                for (int r42 = 0; r42 < this.f7291c; r42++) {
                    a aVarE = e(r12);
                    new b(aVarE);
                    int r52 = aVarE.f7296b;
                    if (z10) {
                        z10 = false;
                    } else {
                        sb2.append(", ");
                    }
                    sb2.append(r52);
                    r12 = m(aVarE.f7295a + 4 + aVarE.f7296b);
                }
            }
        } catch (IOException e10) {
            f7288g.log(Level.WARNING, "read error", (Throwable) e10);
        }
        sb2.append("]]");
        return sb2.toString();
    }

    public final class b extends InputStream {

        /* renamed from: a, reason: collision with root package name */
        public int f7297a;

        /* renamed from: b, reason: collision with root package name */
        public int f7298b;

        public b(a aVar) {
            this.f7297a = c.this.m(aVar.f7295a + 4);
            this.f7298b = aVar.f7296b;
        }

        @Override // java.io.InputStream
        public final int read() throws IOException {
            if (this.f7298b == 0) {
                return -1;
            }
            c cVar = c.this;
            cVar.f7289a.seek(this.f7297a);
            int r12 = cVar.f7289a.read();
            this.f7297a = cVar.m(this.f7297a + 1);
            this.f7298b--;
            return r12;
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int r42, int r52) throws IOException {
            if (bArr == null) {
                throw new NullPointerException("buffer");
            }
            if ((r42 | r52) < 0 || r52 > bArr.length - r42) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int r02 = this.f7298b;
            if (r02 <= 0) {
                return -1;
            }
            if (r52 > r02) {
                r52 = r02;
            }
            int r03 = this.f7297a;
            c cVar = c.this;
            cVar.i(r03, r42, bArr, r52);
            this.f7297a = cVar.m(this.f7297a + r52);
            this.f7298b -= r52;
            return r52;
        }
    }
}
