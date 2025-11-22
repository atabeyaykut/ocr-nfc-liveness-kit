package yc;

import ed.j0;
import ed.k0;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.bouncycastle.crypto.hpke.HPKE;
import yc.d;

/* loaded from: classes2.dex */
public final class q implements Closeable {

    /* renamed from: e, reason: collision with root package name */
    public static final Logger f19603e;

    /* renamed from: a, reason: collision with root package name */
    public final b f19604a;

    /* renamed from: b, reason: collision with root package name */
    public final d.a f19605b;

    /* renamed from: c, reason: collision with root package name */
    public final ed.g f19606c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f19607d;

    public static final class a {
        public static int a(int r22, int r32, int r42) throws IOException {
            if ((r32 & 8) != 0) {
                r22--;
            }
            if (r42 <= r22) {
                return r22 - r42;
            }
            throw new IOException(androidx.constraintlayout.core.a.c("PROTOCOL_ERROR padding ", r42, " > remaining length ", r22));
        }
    }

    public static final class b implements j0 {

        /* renamed from: a, reason: collision with root package name */
        public int f19608a;

        /* renamed from: b, reason: collision with root package name */
        public int f19609b;

        /* renamed from: c, reason: collision with root package name */
        public int f19610c;

        /* renamed from: d, reason: collision with root package name */
        public int f19611d;

        /* renamed from: e, reason: collision with root package name */
        public int f19612e;
        public final ed.g f;

        public b(ed.g gVar) {
            this.f = gVar;
        }

        @Override // ed.j0, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
        }

        @Override // ed.j0
        public final k0 h() {
            return this.f.h();
        }

        @Override // ed.j0
        public final long w(ed.e sink, long j10) throws IOException {
            int r02;
            int r22;
            kotlin.jvm.internal.h.f(sink, "sink");
            do {
                int r03 = this.f19611d;
                ed.g gVar = this.f;
                if (r03 != 0) {
                    long jW = gVar.w(sink, Math.min(j10, r03));
                    if (jW == -1) {
                        return -1L;
                    }
                    this.f19611d -= (int) jW;
                    return jW;
                }
                gVar.skip(this.f19612e);
                this.f19612e = 0;
                if ((this.f19609b & 4) != 0) {
                    return -1L;
                }
                r02 = this.f19610c;
                int r12 = sc.c.r(gVar);
                this.f19611d = r12;
                this.f19608a = r12;
                int r13 = gVar.readByte() & 255;
                this.f19609b = gVar.readByte() & 255;
                Logger logger = q.f19603e;
                if (logger.isLoggable(Level.FINE)) {
                    e eVar = e.f19541e;
                    int r52 = this.f19610c;
                    int r6 = this.f19608a;
                    int r72 = this.f19609b;
                    eVar.getClass();
                    logger.fine(e.a(r52, r6, r13, r72, true));
                }
                r22 = gVar.readInt() & Integer.MAX_VALUE;
                this.f19610c = r22;
                if (r13 != 9) {
                    throw new IOException(r13 + " != TYPE_CONTINUATION");
                }
            } while (r22 == r02);
            throw new IOException("TYPE_CONTINUATION streamId changed");
        }
    }

    public interface c {
        void a(int r12, List list) throws IOException;

        void b();

        void c(int r12, int r22, ed.g gVar, boolean z10) throws IOException;

        void d(v vVar);

        void e(int r12, long j10);

        void g(int r12, int r22, boolean z10);

        void h(int r12, yc.b bVar);

        void j(List list, boolean z10, int r32);

        void k(int r12, yc.b bVar, ed.h hVar);

        void priority();
    }

    static {
        Logger logger = Logger.getLogger(e.class.getName());
        kotlin.jvm.internal.h.e(logger, "Logger.getLogger(Http2::class.java.name)");
        f19603e = logger;
    }

    public q(ed.g gVar, boolean z10) {
        this.f19606c = gVar;
        this.f19607d = z10;
        b bVar = new b(gVar);
        this.f19604a = bVar;
        this.f19605b = new d.a(bVar);
    }

    public final boolean a(boolean z10, c handler) throws IOException {
        int r6;
        ed.g gVar = this.f19606c;
        kotlin.jvm.internal.h.f(handler, "handler");
        try {
            gVar.l0(9L);
            int r22 = sc.c.r(gVar);
            if (r22 > 16384) {
                throw new IOException(android.support.v4.media.a.d("FRAME_SIZE_ERROR: ", r22));
            }
            int r42 = gVar.readByte() & 255;
            int r52 = gVar.readByte() & 255;
            int r62 = gVar.readInt() & Integer.MAX_VALUE;
            Level level = Level.FINE;
            Logger logger = f19603e;
            if (logger.isLoggable(level)) {
                e.f19541e.getClass();
                logger.fine(e.a(r62, r22, r42, r52, true));
            }
            if (z10 && r42 != 4) {
                StringBuilder sb2 = new StringBuilder("Expected a SETTINGS frame but was ");
                e.f19541e.getClass();
                String[] strArr = e.f19538b;
                sb2.append(r42 < strArr.length ? strArr[r42] : sc.c.h("0x%02x", Integer.valueOf(r42)));
                throw new IOException(sb2.toString());
            }
            yc.b bVar = null;
            switch (r42) {
                case 0:
                    if (r62 == 0) {
                        throw new IOException("PROTOCOL_ERROR: TYPE_DATA streamId == 0");
                    }
                    boolean z11 = (r52 & 1) != 0;
                    if ((r52 & 32) != 0) {
                        throw new IOException("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA");
                    }
                    int r12 = (r52 & 8) != 0 ? gVar.readByte() & 255 : 0;
                    handler.c(r62, a.a(r22, r52, r12), gVar, z11);
                    gVar.skip(r12);
                    return true;
                case 1:
                    if (r62 == 0) {
                        throw new IOException("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0");
                    }
                    boolean z12 = (r52 & 1) != 0;
                    int r13 = (r52 & 8) != 0 ? gVar.readByte() & 255 : 0;
                    if ((r52 & 32) != 0) {
                        d(handler, r62);
                        r22 -= 5;
                    }
                    handler.j(c(a.a(r22, r52, r13), r13, r52, r62), z12, r62);
                    return true;
                case 2:
                    if (r22 != 5) {
                        throw new IOException(androidx.appcompat.graphics.drawable.a.f("TYPE_PRIORITY length: ", r22, " != 5"));
                    }
                    if (r62 == 0) {
                        throw new IOException("TYPE_PRIORITY streamId == 0");
                    }
                    d(handler, r62);
                    return true;
                case 3:
                    if (r22 != 4) {
                        throw new IOException(androidx.appcompat.graphics.drawable.a.f("TYPE_RST_STREAM length: ", r22, " != 4"));
                    }
                    if (r62 == 0) {
                        throw new IOException("TYPE_RST_STREAM streamId == 0");
                    }
                    int r02 = gVar.readInt();
                    yc.b[] bVarArrValues = yc.b.values();
                    int length = bVarArrValues.length;
                    int r32 = 0;
                    while (true) {
                        if (r32 < length) {
                            yc.b bVar2 = bVarArrValues[r32];
                            if (bVar2.f19511a == r02) {
                                bVar = bVar2;
                            } else {
                                r32++;
                            }
                        }
                    }
                    if (bVar == null) {
                        throw new IOException(android.support.v4.media.a.d("TYPE_RST_STREAM unexpected error code: ", r02));
                    }
                    handler.h(r62, bVar);
                    return true;
                case 4:
                    if (r62 != 0) {
                        throw new IOException("TYPE_SETTINGS streamId != 0");
                    }
                    if ((r52 & 1) != 0) {
                        if (r22 != 0) {
                            throw new IOException("FRAME_SIZE_ERROR ack frame should be empty!");
                        }
                        handler.b();
                    } else {
                        if (r22 % 6 != 0) {
                            throw new IOException(android.support.v4.media.a.d("TYPE_SETTINGS length % 6 != 0: ", r22));
                        }
                        v vVar = new v();
                        ca.b bVarJ0 = b8.f.j0(b8.f.r0(0, r22), 6);
                        int r23 = bVarJ0.f2246a;
                        int r43 = bVarJ0.f2247b;
                        int r14 = bVarJ0.f2248c;
                        if (r14 < 0 ? r23 >= r43 : r23 <= r43) {
                            while (true) {
                                short s7 = gVar.readShort();
                                byte[] bArr = sc.c.f15380a;
                                int r53 = s7 & HPKE.aead_EXPORT_ONLY;
                                r6 = gVar.readInt();
                                if (r53 != 2) {
                                    if (r53 == 3) {
                                        r53 = 4;
                                    } else if (r53 != 4) {
                                        if (r53 == 5 && (r6 < 16384 || r6 > 16777215)) {
                                        }
                                    } else {
                                        if (r6 < 0) {
                                            throw new IOException("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1");
                                        }
                                        r53 = 7;
                                    }
                                } else if (r6 != 0 && r6 != 1) {
                                    throw new IOException("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1");
                                }
                                vVar.b(r53, r6);
                                if (r23 != r43) {
                                    r23 += r14;
                                }
                            }
                            throw new IOException(android.support.v4.media.a.d("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: ", r6));
                        }
                        handler.d(vVar);
                    }
                    return true;
                case 5:
                    if (r62 == 0) {
                        throw new IOException("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0");
                    }
                    int r15 = (r52 & 8) != 0 ? gVar.readByte() & 255 : 0;
                    handler.a(gVar.readInt() & Integer.MAX_VALUE, c(a.a(r22 - 4, r52, r15), r15, r52, r62));
                    return true;
                case 6:
                    if (r22 != 8) {
                        throw new IOException(android.support.v4.media.a.d("TYPE_PING length != 8: ", r22));
                    }
                    if (r62 != 0) {
                        throw new IOException("TYPE_PING streamId != 0");
                    }
                    handler.g(gVar.readInt(), gVar.readInt(), (r52 & 1) != 0);
                    return true;
                case 7:
                    if (r22 < 8) {
                        throw new IOException(android.support.v4.media.a.d("TYPE_GOAWAY length < 8: ", r22));
                    }
                    if (r62 != 0) {
                        throw new IOException("TYPE_GOAWAY streamId != 0");
                    }
                    int r16 = gVar.readInt();
                    int r33 = gVar.readInt();
                    int r24 = r22 - 8;
                    yc.b[] bVarArrValues2 = yc.b.values();
                    int length2 = bVarArrValues2.length;
                    int r63 = 0;
                    while (true) {
                        if (r63 < length2) {
                            yc.b bVar3 = bVarArrValues2[r63];
                            if (bVar3.f19511a == r33) {
                                bVar = bVar3;
                            } else {
                                r63++;
                            }
                        }
                    }
                    if (bVar == null) {
                        throw new IOException(android.support.v4.media.a.d("TYPE_GOAWAY unexpected error code: ", r33));
                    }
                    ed.h hVarZ = ed.h.f5315d;
                    if (r24 > 0) {
                        hVarZ = gVar.z(r24);
                    }
                    handler.k(r16, bVar, hVarZ);
                    return true;
                case 8:
                    if (r22 != 4) {
                        throw new IOException(android.support.v4.media.a.d("TYPE_WINDOW_UPDATE length !=4: ", r22));
                    }
                    long j10 = gVar.readInt() & 2147483647L;
                    if (j10 == 0) {
                        throw new IOException("windowSizeIncrement was 0");
                    }
                    handler.e(r62, j10);
                    return true;
                default:
                    gVar.skip(r22);
                    return true;
            }
        } catch (EOFException unused) {
            return false;
        }
    }

    public final void b(c handler) throws IOException {
        kotlin.jvm.internal.h.f(handler, "handler");
        if (this.f19607d) {
            if (!a(true, handler)) {
                throw new IOException("Required SETTINGS preface not received");
            }
            return;
        }
        ed.h hVar = e.f19537a;
        ed.h hVarZ = this.f19606c.z(hVar.f5316a.length);
        Level level = Level.FINE;
        Logger logger = f19603e;
        if (logger.isLoggable(level)) {
            logger.fine(sc.c.h("<< CONNECTION " + hVarZ.t(), new Object[0]));
        }
        if (!kotlin.jvm.internal.h.a(hVar, hVarZ)) {
            throw new IOException("Expected a connection header but was ".concat(hVarZ.G()));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x006f, code lost:
    
        throw new java.io.IOException("Header index too large " + (r4 + 1));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<yc.c> c(int r3, int r4, int r5, int r6) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: yc.q.c(int, int, int, int):java.util.List");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f19606c.close();
    }

    public final void d(c cVar, int r22) throws IOException {
        ed.g gVar = this.f19606c;
        gVar.readInt();
        gVar.readByte();
        byte[] bArr = sc.c.f15380a;
        cVar.priority();
    }
}
