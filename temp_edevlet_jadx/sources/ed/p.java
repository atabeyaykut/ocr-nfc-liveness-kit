package ed;

import androidx.core.location.LocationRequestCompat;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* loaded from: classes2.dex */
public final class p implements j0 {

    /* renamed from: a, reason: collision with root package name */
    public byte f5346a;

    /* renamed from: b, reason: collision with root package name */
    public final d0 f5347b;

    /* renamed from: c, reason: collision with root package name */
    public final Inflater f5348c;

    /* renamed from: d, reason: collision with root package name */
    public final q f5349d;

    /* renamed from: e, reason: collision with root package name */
    public final CRC32 f5350e;

    public p(j0 source) {
        kotlin.jvm.internal.h.f(source, "source");
        d0 d0Var = new d0(source);
        this.f5347b = d0Var;
        Inflater inflater = new Inflater(true);
        this.f5348c = inflater;
        this.f5349d = new q(d0Var, inflater);
        this.f5350e = new CRC32();
    }

    public static void a(int r42, int r52, String str) throws IOException {
        if (r52 == r42) {
            return;
        }
        String str2 = String.format("%s: actual 0x%08x != expected 0x%08x", Arrays.copyOf(new Object[]{str, Integer.valueOf(r52), Integer.valueOf(r42)}, 3));
        kotlin.jvm.internal.h.e(str2, "java.lang.String.format(this, *args)");
        throw new IOException(str2);
    }

    public final void b(long j10, long j11, e eVar) {
        e0 e0Var = eVar.f5303a;
        while (true) {
            kotlin.jvm.internal.h.c(e0Var);
            int r02 = e0Var.f5307c;
            int r12 = e0Var.f5306b;
            if (j10 < r02 - r12) {
                break;
            }
            j10 -= r02 - r12;
            e0Var = e0Var.f;
        }
        while (j11 > 0) {
            int r72 = (int) Math.min(e0Var.f5307c - r6, j11);
            this.f5350e.update(e0Var.f5305a, (int) (e0Var.f5306b + j10), r72);
            j11 -= r72;
            e0Var = e0Var.f;
            kotlin.jvm.internal.h.c(e0Var);
            j10 = 0;
        }
    }

    @Override // ed.j0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f5349d.close();
    }

    @Override // ed.j0
    public final k0 h() {
        return this.f5347b.h();
    }

    @Override // ed.j0
    public final long w(e sink, long j10) throws IOException {
        d0 d0Var;
        e eVar;
        long j11;
        kotlin.jvm.internal.h.f(sink, "sink");
        if (!(j10 >= 0)) {
            throw new IllegalArgumentException(kotlin.jvm.internal.h.k(Long.valueOf(j10), "byteCount < 0: ").toString());
        }
        if (j10 == 0) {
            return 0L;
        }
        byte b10 = this.f5346a;
        CRC32 crc32 = this.f5350e;
        d0 d0Var2 = this.f5347b;
        if (b10 == 0) {
            d0Var2.l0(10L);
            e eVar2 = d0Var2.f5301b;
            byte bF = eVar2.f(3L);
            boolean z10 = ((bF >> 1) & 1) == 1;
            if (z10) {
                eVar = eVar2;
                b(0L, 10L, d0Var2.f5301b);
            } else {
                eVar = eVar2;
            }
            a(8075, d0Var2.readShort(), "ID1ID2");
            d0Var2.skip(8L);
            if (((bF >> 2) & 1) == 1) {
                d0Var2.l0(2L);
                if (z10) {
                    b(0L, 2L, d0Var2.f5301b);
                }
                long jP = eVar.p();
                d0Var2.l0(jP);
                if (z10) {
                    b(0L, jP, d0Var2.f5301b);
                    j11 = jP;
                } else {
                    j11 = jP;
                }
                d0Var2.skip(j11);
            }
            if (((bF >> 3) & 1) == 1) {
                long jA = d0Var2.a((byte) 0, 0L, LocationRequestCompat.PASSIVE_INTERVAL);
                if (jA == -1) {
                    throw new EOFException();
                }
                if (z10) {
                    d0Var = d0Var2;
                    b(0L, jA + 1, d0Var2.f5301b);
                } else {
                    d0Var = d0Var2;
                }
                d0Var.skip(jA + 1);
            } else {
                d0Var = d0Var2;
            }
            if (((bF >> 4) & 1) == 1) {
                long jA2 = d0Var.a((byte) 0, 0L, LocationRequestCompat.PASSIVE_INTERVAL);
                if (jA2 == -1) {
                    throw new EOFException();
                }
                if (z10) {
                    b(0L, jA2 + 1, d0Var.f5301b);
                }
                d0Var.skip(jA2 + 1);
            }
            if (z10) {
                a(d0Var.b(), (short) crc32.getValue(), "FHCRC");
                crc32.reset();
            }
            this.f5346a = (byte) 1;
        } else {
            d0Var = d0Var2;
        }
        if (this.f5346a == 1) {
            long j12 = sink.f5304b;
            long jW = this.f5349d.w(sink, j10);
            if (jW != -1) {
                b(j12, jW, sink);
                return jW;
            }
            this.f5346a = (byte) 2;
        }
        if (this.f5346a == 2) {
            a(d0Var.b0(), (int) crc32.getValue(), "CRC");
            a(d0Var.b0(), (int) this.f5348c.getBytesWritten(), "ISIZE");
            this.f5346a = (byte) 3;
            if (!d0Var.I()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }
}
