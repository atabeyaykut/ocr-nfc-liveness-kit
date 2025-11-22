package ed;

import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes2.dex */
public abstract class i implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public boolean f5319a;

    /* renamed from: b, reason: collision with root package name */
    public int f5320b;

    public static final class a implements j0 {

        /* renamed from: a, reason: collision with root package name */
        public final i f5321a;

        /* renamed from: b, reason: collision with root package name */
        public long f5322b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f5323c;

        public a(i fileHandle, long j10) {
            kotlin.jvm.internal.h.f(fileHandle, "fileHandle");
            this.f5321a = fileHandle;
            this.f5322b = j10;
        }

        @Override // ed.j0, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (this.f5323c) {
                return;
            }
            this.f5323c = true;
            synchronized (this.f5321a) {
                i iVar = this.f5321a;
                int r22 = iVar.f5320b - 1;
                iVar.f5320b = r22;
                if (r22 == 0 && iVar.f5319a) {
                    l9.m mVar = l9.m.f9594a;
                    iVar.a();
                }
            }
        }

        @Override // ed.j0
        public final k0 h() {
            return k0.f5333d;
        }

        @Override // ed.j0
        public final long w(e sink, long j10) throws IOException {
            long j11;
            long j12;
            kotlin.jvm.internal.h.f(sink, "sink");
            int r32 = 1;
            if (!(!this.f5323c)) {
                throw new IllegalStateException("closed".toString());
            }
            long j13 = this.f5322b;
            i iVar = this.f5321a;
            iVar.getClass();
            if (!(j10 >= 0)) {
                throw new IllegalArgumentException(kotlin.jvm.internal.h.k(Long.valueOf(j10), "byteCount < 0: ").toString());
            }
            long j14 = j13 + j10;
            long j15 = j13;
            while (true) {
                if (j15 >= j14) {
                    j11 = j13;
                    break;
                }
                e0 e0VarB = sink.B(r32);
                byte[] bArr = e0VarB.f5305a;
                j11 = j13;
                int r33 = iVar.b(e0VarB.f5307c, (int) Math.min(j14 - j15, 8192 - r7), j15, bArr);
                if (r33 == -1) {
                    if (e0VarB.f5306b == e0VarB.f5307c) {
                        sink.f5303a = e0VarB.a();
                        f0.a(e0VarB);
                    }
                    if (j11 == j15) {
                        j12 = -1;
                    }
                } else {
                    e0VarB.f5307c += r33;
                    long j16 = r33;
                    j15 += j16;
                    sink.f5304b += j16;
                    j13 = j11;
                    r32 = 1;
                }
            }
            j12 = j15 - j11;
            if (j12 != -1) {
                this.f5322b += j12;
            }
            return j12;
        }
    }

    public abstract void a() throws IOException;

    public abstract int b(int r12, int r22, long j10, byte[] bArr) throws IOException;

    public abstract long c() throws IOException;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this) {
            if (this.f5319a) {
                return;
            }
            this.f5319a = true;
            if (this.f5320b != 0) {
                return;
            }
            l9.m mVar = l9.m.f9594a;
            a();
        }
    }

    public final a d(long j10) throws IOException {
        synchronized (this) {
            if (!(!this.f5319a)) {
                throw new IllegalStateException("closed".toString());
            }
            this.f5320b++;
        }
        return new a(this, j10);
    }

    public final long size() throws IOException {
        synchronized (this) {
            if (!(!this.f5319a)) {
                throw new IllegalStateException("closed".toString());
            }
            l9.m mVar = l9.m.f9594a;
        }
        return c();
    }
}
