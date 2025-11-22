package o;

import android.graphics.Bitmap;
import java.util.Date;
import mc.i;
import mc.j;
import rc.q;
import rc.x;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final x f11027a;

    /* renamed from: b, reason: collision with root package name */
    public final c f11028b;

    public static final class a {
        public static q a(q qVar, q qVar2) {
            q.a aVar = new q.a();
            int length = qVar.f14512a.length / 2;
            int r32 = 0;
            while (true) {
                boolean z10 = true;
                if (r32 >= length) {
                    break;
                }
                int r82 = r32 + 1;
                String strO = qVar.o(r32);
                String strW = qVar.w(r32);
                if (!j.x("Warning", strO) || !j.D(strW, "1", false)) {
                    if (!j.x("Content-Length", strO) && !j.x("Content-Encoding", strO) && !j.x("Content-Type", strO)) {
                        z10 = false;
                    }
                    if (z10 || !b(strO) || qVar2.l(strO) == null) {
                        aVar.a(strO, strW);
                    }
                }
                r32 = r82;
            }
            int length2 = qVar2.f14512a.length / 2;
            int r12 = 0;
            while (r12 < length2) {
                int r33 = r12 + 1;
                String strO2 = qVar2.o(r12);
                if (!(j.x("Content-Length", strO2) || j.x("Content-Encoding", strO2) || j.x("Content-Type", strO2)) && b(strO2)) {
                    aVar.a(strO2, qVar2.w(r12));
                }
                r12 = r33;
            }
            return aVar.c();
        }

        public static boolean b(String str) {
            return (j.x("Connection", str) || j.x("Keep-Alive", str) || j.x("Proxy-Authenticate", str) || j.x("Proxy-Authorization", str) || j.x("TE", str) || j.x("Trailers", str) || j.x("Transfer-Encoding", str) || j.x("Upgrade", str)) ? false : true;
        }
    }

    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public final x f11029a;

        /* renamed from: b, reason: collision with root package name */
        public final c f11030b;

        /* renamed from: c, reason: collision with root package name */
        public final Date f11031c;

        /* renamed from: d, reason: collision with root package name */
        public final String f11032d;

        /* renamed from: e, reason: collision with root package name */
        public final Date f11033e;
        public final String f;

        /* renamed from: g, reason: collision with root package name */
        public final Date f11034g;

        /* renamed from: h, reason: collision with root package name */
        public final long f11035h;

        /* renamed from: i, reason: collision with root package name */
        public final long f11036i;

        /* renamed from: j, reason: collision with root package name */
        public final String f11037j;

        /* renamed from: k, reason: collision with root package name */
        public final int f11038k;

        public b(x xVar, c cVar) {
            int r22;
            this.f11029a = xVar;
            this.f11030b = cVar;
            this.f11038k = -1;
            if (cVar != null) {
                this.f11035h = cVar.f11024c;
                this.f11036i = cVar.f11025d;
                q qVar = cVar.f;
                int length = qVar.f14512a.length / 2;
                int r23 = 0;
                while (r23 < length) {
                    int r32 = r23 + 1;
                    String strO = qVar.o(r23);
                    if (j.x(strO, "Date")) {
                        this.f11031c = qVar.m("Date");
                        this.f11032d = qVar.w(r23);
                    } else if (j.x(strO, "Expires")) {
                        this.f11034g = qVar.m("Expires");
                    } else if (j.x(strO, "Last-Modified")) {
                        this.f11033e = qVar.m("Last-Modified");
                        this.f = qVar.w(r23);
                    } else if (j.x(strO, "ETag")) {
                        this.f11037j = qVar.w(r23);
                    } else if (j.x(strO, "Age")) {
                        String strW = qVar.w(r23);
                        Bitmap.Config[] configArr = u.c.f17726a;
                        Long lU = i.u(strW);
                        if (lU == null) {
                            r22 = -1;
                        } else {
                            long jLongValue = lU.longValue();
                            r22 = jLongValue > 2147483647L ? Integer.MAX_VALUE : jLongValue < 0 ? 0 : (int) jLongValue;
                        }
                        this.f11038k = r22;
                    }
                    r23 = r32;
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:69:0x0132  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final o.d a() {
            /*
                Method dump skipped, instructions count: 520
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: o.d.b.a():o.d");
        }
    }

    public d(x xVar, c cVar) {
        this.f11027a = xVar;
        this.f11028b = cVar;
    }
}
