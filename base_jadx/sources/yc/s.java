package yc;

import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import yc.d;

/* loaded from: classes2.dex */
public final class s implements Closeable {

    /* renamed from: g, reason: collision with root package name */
    public static final Logger f19636g = Logger.getLogger(e.class.getName());

    /* renamed from: a, reason: collision with root package name */
    public final ed.e f19637a;

    /* renamed from: b, reason: collision with root package name */
    public int f19638b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f19639c;

    /* renamed from: d, reason: collision with root package name */
    public final d.b f19640d;

    /* renamed from: e, reason: collision with root package name */
    public final ed.f f19641e;
    public final boolean f;

    public s(ed.f fVar, boolean z10) {
        this.f19641e = fVar;
        this.f = z10;
        ed.e eVar = new ed.e();
        this.f19637a = eVar;
        this.f19638b = 16384;
        this.f19640d = new d.b(eVar);
    }

    public final synchronized void a(v peerSettings) throws IOException {
        kotlin.jvm.internal.h.f(peerSettings, "peerSettings");
        if (this.f19639c) {
            throw new IOException("closed");
        }
        int r02 = this.f19638b;
        int r12 = peerSettings.f19649a;
        if ((r12 & 32) != 0) {
            r02 = peerSettings.f19650b[5];
        }
        this.f19638b = r02;
        if (((r12 & 2) != 0 ? peerSettings.f19650b[1] : -1) != -1) {
            d.b bVar = this.f19640d;
            int r6 = (r12 & 2) != 0 ? peerSettings.f19650b[1] : -1;
            bVar.getClass();
            int r62 = Math.min(r6, 16384);
            int r13 = bVar.f19531c;
            if (r13 != r62) {
                if (r62 < r13) {
                    bVar.f19529a = Math.min(bVar.f19529a, r62);
                }
                bVar.f19530b = true;
                bVar.f19531c = r62;
                int r14 = bVar.f19534g;
                if (r62 < r14) {
                    if (r62 == 0) {
                        m9.i.m0(bVar.f19532d, null);
                        bVar.f19533e = bVar.f19532d.length - 1;
                        bVar.f = 0;
                        bVar.f19534g = 0;
                    } else {
                        bVar.a(r14 - r62);
                    }
                }
            }
        }
        c(0, 0, 4, 1);
        this.f19641e.flush();
    }

    public final synchronized void b(boolean z10, int r32, ed.e eVar, int r52) throws IOException {
        if (this.f19639c) {
            throw new IOException("closed");
        }
        c(r32, r52, 0, z10 ? 1 : 0);
        if (r52 > 0) {
            kotlin.jvm.internal.h.c(eVar);
            this.f19641e.M(eVar, r52);
        }
    }

    public final void c(int r42, int r52, int r6, int r72) throws IOException {
        Level level = Level.FINE;
        Logger logger = f19636g;
        if (logger.isLoggable(level)) {
            e.f19541e.getClass();
            logger.fine(e.a(r42, r52, r6, r72, false));
        }
        if (!(r52 <= this.f19638b)) {
            throw new IllegalArgumentException(("FRAME_SIZE_ERROR length > " + this.f19638b + ": " + r52).toString());
        }
        if (!((((int) 2147483648L) & r42) == 0)) {
            throw new IllegalArgumentException(android.support.v4.media.a.d("reserved bit set: ", r42).toString());
        }
        byte[] bArr = sc.c.f15380a;
        ed.f writeMedium = this.f19641e;
        kotlin.jvm.internal.h.f(writeMedium, "$this$writeMedium");
        writeMedium.writeByte((r52 >>> 16) & 255);
        writeMedium.writeByte((r52 >>> 8) & 255);
        writeMedium.writeByte(r52 & 255);
        writeMedium.writeByte(r6 & 255);
        writeMedium.writeByte(r72 & 255);
        writeMedium.writeInt(r42 & Integer.MAX_VALUE);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() throws IOException {
        this.f19639c = true;
        this.f19641e.close();
    }

    public final synchronized void d(int r52, b bVar, byte[] bArr) throws IOException {
        if (this.f19639c) {
            throw new IOException("closed");
        }
        if (!(bVar.f19511a != -1)) {
            throw new IllegalArgumentException("errorCode.httpCode == -1".toString());
        }
        c(0, bArr.length + 8, 7, 0);
        this.f19641e.writeInt(r52);
        this.f19641e.writeInt(bVar.f19511a);
        if (!(bArr.length == 0)) {
            this.f19641e.write(bArr);
        }
        this.f19641e.flush();
    }

    public final synchronized void e(int r72, boolean z10, ArrayList arrayList) throws IOException {
        if (this.f19639c) {
            throw new IOException("closed");
        }
        this.f19640d.d(arrayList);
        long j10 = this.f19637a.f5304b;
        long jMin = Math.min(this.f19638b, j10);
        int r42 = j10 == jMin ? 4 : 0;
        if (z10) {
            r42 |= 1;
        }
        c(r72, (int) jMin, 1, r42);
        this.f19641e.M(this.f19637a, jMin);
        if (j10 > jMin) {
            k(r72, j10 - jMin);
        }
    }

    public final synchronized void f(int r42, int r52, boolean z10) throws IOException {
        if (this.f19639c) {
            throw new IOException("closed");
        }
        c(0, 8, 6, z10 ? 1 : 0);
        this.f19641e.writeInt(r42);
        this.f19641e.writeInt(r52);
        this.f19641e.flush();
    }

    public final synchronized void flush() throws IOException {
        if (this.f19639c) {
            throw new IOException("closed");
        }
        this.f19641e.flush();
    }

    public final synchronized void g(int r42, b errorCode) throws IOException {
        kotlin.jvm.internal.h.f(errorCode, "errorCode");
        if (this.f19639c) {
            throw new IOException("closed");
        }
        if (!(errorCode.f19511a != -1)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        c(r42, 4, 3, 0);
        this.f19641e.writeInt(errorCode.f19511a);
        this.f19641e.flush();
    }

    public final synchronized void i(v settings) throws IOException {
        kotlin.jvm.internal.h.f(settings, "settings");
        if (this.f19639c) {
            throw new IOException("closed");
        }
        c(0, Integer.bitCount(settings.f19649a) * 6, 4, 0);
        int r02 = 0;
        while (r02 < 10) {
            boolean z10 = true;
            if (((1 << r02) & settings.f19649a) == 0) {
                z10 = false;
            }
            if (z10) {
                this.f19641e.writeShort(r02 != 4 ? r02 != 7 ? r02 : 4 : 3);
                this.f19641e.writeInt(settings.f19650b[r02]);
            }
            r02++;
        }
        this.f19641e.flush();
    }

    public final synchronized void j(int r6, long j10) throws IOException {
        if (this.f19639c) {
            throw new IOException("closed");
        }
        if (!(j10 != 0 && j10 <= 2147483647L)) {
            throw new IllegalArgumentException(("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: " + j10).toString());
        }
        c(r6, 4, 8, 0);
        this.f19641e.writeInt((int) j10);
        this.f19641e.flush();
    }

    public final void k(int r72, long j10) throws IOException {
        while (j10 > 0) {
            long jMin = Math.min(this.f19638b, j10);
            j10 -= jMin;
            c(r72, (int) jMin, 9, j10 == 0 ? 4 : 0);
            this.f19641e.M(this.f19637a, jMin);
        }
    }
}
