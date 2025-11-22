package q1;

import androidx.annotation.NonNull;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicReference<byte[]> f13291a = new AtomicReference<>();

    /* renamed from: q1.a$a, reason: collision with other inner class name */
    public static class C0222a extends InputStream {

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        public final ByteBuffer f13292a;

        /* renamed from: b, reason: collision with root package name */
        public int f13293b = -1;

        public C0222a(@NonNull ByteBuffer byteBuffer) {
            this.f13292a = byteBuffer;
        }

        @Override // java.io.InputStream
        public final int available() {
            return this.f13292a.remaining();
        }

        @Override // java.io.InputStream
        public final synchronized void mark(int r12) {
            this.f13293b = this.f13292a.position();
        }

        @Override // java.io.InputStream
        public final boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public final int read() {
            ByteBuffer byteBuffer = this.f13292a;
            if (byteBuffer.hasRemaining()) {
                return byteBuffer.get() & 255;
            }
            return -1;
        }

        @Override // java.io.InputStream
        public final int read(@NonNull byte[] bArr, int r42, int r52) {
            ByteBuffer byteBuffer = this.f13292a;
            if (!byteBuffer.hasRemaining()) {
                return -1;
            }
            int r53 = Math.min(r52, available());
            byteBuffer.get(bArr, r42, r53);
            return r53;
        }

        @Override // java.io.InputStream
        public final synchronized void reset() throws IOException {
            int r02 = this.f13293b;
            if (r02 == -1) {
                throw new IOException("Cannot reset to unset mark position");
            }
            this.f13292a.position(r02);
        }

        @Override // java.io.InputStream
        public final long skip(long j10) {
            ByteBuffer byteBuffer = this.f13292a;
            if (!byteBuffer.hasRemaining()) {
                return -1L;
            }
            long jMin = Math.min(j10, available());
            byteBuffer.position((int) (byteBuffer.position() + jMin));
            return jMin;
        }
    }

    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public final int f13294a;

        /* renamed from: b, reason: collision with root package name */
        public final int f13295b;

        /* renamed from: c, reason: collision with root package name */
        public final byte[] f13296c;

        public b(@NonNull byte[] bArr, int r22, int r32) {
            this.f13296c = bArr;
            this.f13294a = r22;
            this.f13295b = r32;
        }
    }

    @NonNull
    public static MappedByteBuffer a(@NonNull File file) throws Throwable {
        RandomAccessFile randomAccessFile;
        Throwable th2;
        FileChannel channel;
        FileChannel fileChannel = null;
        try {
            long length = file.length();
            if (length > 2147483647L) {
                throw new IOException("File too large to map into memory");
            }
            if (length == 0) {
                throw new IOException("File unsuitable for memory mapping");
            }
            randomAccessFile = new RandomAccessFile(file, "r");
            try {
                channel = randomAccessFile.getChannel();
                try {
                    MappedByteBuffer mappedByteBufferLoad = channel.map(FileChannel.MapMode.READ_ONLY, 0L, length).load();
                    try {
                        channel.close();
                    } catch (IOException unused) {
                    }
                    try {
                        randomAccessFile.close();
                    } catch (IOException unused2) {
                    }
                    return mappedByteBufferLoad;
                } catch (Throwable th3) {
                    th2 = th3;
                    Throwable th4 = th2;
                    fileChannel = channel;
                    th = th4;
                    if (fileChannel != null) {
                        try {
                            fileChannel.close();
                        } catch (IOException unused3) {
                        }
                    }
                    if (randomAccessFile == null) {
                        throw th;
                    }
                    try {
                        randomAccessFile.close();
                        throw th;
                    } catch (IOException unused4) {
                        throw th;
                    }
                }
            } catch (Throwable th5) {
                th2 = th5;
                channel = null;
            }
        } catch (Throwable th6) {
            th = th6;
            randomAccessFile = null;
        }
    }

    @NonNull
    public static ByteBuffer b(@NonNull InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        AtomicReference<byte[]> atomicReference = f13291a;
        byte[] andSet = atomicReference.getAndSet(null);
        if (andSet == null) {
            andSet = new byte[16384];
        }
        while (true) {
            int r12 = inputStream.read(andSet);
            if (r12 < 0) {
                atomicReference.set(andSet);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                return c(ByteBuffer.allocateDirect(byteArray.length).put(byteArray));
            }
            byteArrayOutputStream.write(andSet, 0, r12);
        }
    }

    public static ByteBuffer c(ByteBuffer byteBuffer) {
        return (ByteBuffer) byteBuffer.position(0);
    }

    public static void d(@NonNull ByteBuffer byteBuffer, @NonNull File file) throws Throwable {
        RandomAccessFile randomAccessFile;
        FileChannel channel = null;
        try {
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                channel = randomAccessFile.getChannel();
                channel.write(byteBuffer);
                channel.force(false);
                channel.close();
                randomAccessFile.close();
                try {
                    channel.close();
                } catch (IOException unused) {
                }
                try {
                    randomAccessFile.close();
                } catch (IOException unused2) {
                }
            } catch (Throwable th2) {
                th = th2;
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (IOException unused3) {
                    }
                }
                if (randomAccessFile == null) {
                    throw th;
                }
                try {
                    randomAccessFile.close();
                    throw th;
                } catch (IOException unused4) {
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            randomAccessFile = null;
        }
    }
}
