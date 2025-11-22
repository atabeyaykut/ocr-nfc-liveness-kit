package mb;

import java.io.ByteArrayInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import mb.p;

/* loaded from: classes2.dex */
public abstract class a implements p {

    /* renamed from: mb.a$a, reason: collision with other inner class name */
    public static abstract class AbstractC0188a<BuilderType extends AbstractC0188a> implements p.a {

        /* renamed from: mb.a$a$a, reason: collision with other inner class name */
        public static final class C0189a extends FilterInputStream {

            /* renamed from: a, reason: collision with root package name */
            public int f10254a;

            public C0189a(ByteArrayInputStream byteArrayInputStream, int r22) {
                super(byteArrayInputStream);
                this.f10254a = r22;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public final int available() throws IOException {
                return Math.min(super.available(), this.f10254a);
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public final int read() throws IOException {
                if (this.f10254a <= 0) {
                    return -1;
                }
                int r02 = super.read();
                if (r02 >= 0) {
                    this.f10254a--;
                }
                return r02;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public final int read(byte[] bArr, int r32, int r42) throws IOException {
                int r02 = this.f10254a;
                if (r02 <= 0) {
                    return -1;
                }
                int r22 = super.read(bArr, r32, Math.min(r42, r02));
                if (r22 >= 0) {
                    this.f10254a -= r22;
                }
                return r22;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public final long skip(long j10) throws IOException {
                long jSkip = super.skip(Math.min(j10, this.f10254a));
                if (jSkip >= 0) {
                    this.f10254a = (int) (this.f10254a - jSkip);
                }
                return jSkip;
            }
        }

        @Override // mb.p.a
        /* renamed from: h, reason: merged with bridge method [inline-methods] */
        public abstract BuilderType E(d dVar, f fVar) throws IOException;
    }
}
