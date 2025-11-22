package yc;

import ed.h0;
import ed.j0;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import rc.b0;
import rc.q;
import rc.x;
import wc.i;
import yc.r;

/* loaded from: classes2.dex */
public final class p implements wc.d {

    /* renamed from: g, reason: collision with root package name */
    public static final List<String> f19596g = sc.c.k("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", ":method", ":path", ":scheme", ":authority");

    /* renamed from: h, reason: collision with root package name */
    public static final List<String> f19597h = sc.c.k("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade");

    /* renamed from: a, reason: collision with root package name */
    public volatile r f19598a;

    /* renamed from: b, reason: collision with root package name */
    public final rc.w f19599b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f19600c;

    /* renamed from: d, reason: collision with root package name */
    public final vc.i f19601d;

    /* renamed from: e, reason: collision with root package name */
    public final wc.f f19602e;
    public final f f;

    public p(rc.v vVar, vc.i connection, wc.f fVar, f fVar2) {
        kotlin.jvm.internal.h.f(connection, "connection");
        this.f19601d = connection;
        this.f19602e = fVar;
        this.f = fVar2;
        rc.w wVar = rc.w.H2_PRIOR_KNOWLEDGE;
        this.f19599b = vVar.f14566t.contains(wVar) ? wVar : rc.w.HTTP_2;
    }

    @Override // wc.d
    public final void a() throws IOException {
        r rVar = this.f19598a;
        kotlin.jvm.internal.h.c(rVar);
        rVar.g().close();
    }

    @Override // wc.d
    public final void b(x xVar) throws IOException {
        int r12;
        r rVar;
        boolean z10;
        if (this.f19598a != null) {
            return;
        }
        boolean z11 = xVar.f14601e != null;
        rc.q qVar = xVar.f14600d;
        ArrayList arrayList = new ArrayList((qVar.f14512a.length / 2) + 4);
        arrayList.add(new c(c.f, xVar.f14599c));
        ed.h hVar = c.f19514g;
        rc.r url = xVar.f14598b;
        kotlin.jvm.internal.h.f(url, "url");
        String strB = url.b();
        String strD = url.d();
        if (strD != null) {
            strB = strB + '?' + strD;
        }
        arrayList.add(new c(hVar, strB));
        String strL = xVar.f14600d.l("Host");
        if (strL != null) {
            arrayList.add(new c(c.f19516i, strL));
        }
        arrayList.add(new c(c.f19515h, url.f14517b));
        int length = qVar.f14512a.length / 2;
        for (int r52 = 0; r52 < length; r52++) {
            String strO = qVar.o(r52);
            Locale locale = Locale.US;
            kotlin.jvm.internal.h.e(locale, "Locale.US");
            if (strO == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
            String lowerCase = strO.toLowerCase(locale);
            kotlin.jvm.internal.h.e(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            if (!f19596g.contains(lowerCase) || (kotlin.jvm.internal.h.a(lowerCase, "te") && kotlin.jvm.internal.h.a(qVar.w(r52), "trailers"))) {
                arrayList.add(new c(lowerCase, qVar.w(r52)));
            }
        }
        f fVar = this.f;
        fVar.getClass();
        boolean z12 = !z11;
        synchronized (fVar.B) {
            synchronized (fVar) {
                if (fVar.f > 1073741823) {
                    fVar.f(b.REFUSED_STREAM);
                }
                if (fVar.f19547g) {
                    throw new a();
                }
                r12 = fVar.f;
                fVar.f = r12 + 2;
                rVar = new r(r12, fVar, z12, false, null);
                z10 = !z11 || fVar.f19561y >= fVar.f19562z || rVar.f19615c >= rVar.f19616d;
                if (rVar.i()) {
                    fVar.f19544c.put(Integer.valueOf(r12), rVar);
                }
                l9.m mVar = l9.m.f9594a;
            }
            fVar.B.e(r12, z12, arrayList);
        }
        if (z10) {
            fVar.B.flush();
        }
        this.f19598a = rVar;
        if (this.f19600c) {
            r rVar2 = this.f19598a;
            kotlin.jvm.internal.h.c(rVar2);
            rVar2.e(b.CANCEL);
            throw new IOException("Canceled");
        }
        r rVar3 = this.f19598a;
        kotlin.jvm.internal.h.c(rVar3);
        r.c cVar = rVar3.f19620i;
        long j10 = this.f19602e.f18874h;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        cVar.g(j10, timeUnit);
        r rVar4 = this.f19598a;
        kotlin.jvm.internal.h.c(rVar4);
        rVar4.f19621j.g(this.f19602e.f18875i, timeUnit);
    }

    @Override // wc.d
    public final b0.a c(boolean z10) throws NumberFormatException, IOException {
        rc.q qVar;
        r rVar = this.f19598a;
        kotlin.jvm.internal.h.c(rVar);
        synchronized (rVar) {
            rVar.f19620i.h();
            while (rVar.f19617e.isEmpty() && rVar.f19622k == null) {
                try {
                    rVar.l();
                } catch (Throwable th2) {
                    rVar.f19620i.l();
                    throw th2;
                }
            }
            rVar.f19620i.l();
            if (!(!rVar.f19617e.isEmpty())) {
                IOException iOException = rVar.f19623l;
                if (iOException != null) {
                    throw iOException;
                }
                b bVar = rVar.f19622k;
                kotlin.jvm.internal.h.c(bVar);
                throw new w(bVar);
            }
            rc.q qVarRemoveFirst = rVar.f19617e.removeFirst();
            kotlin.jvm.internal.h.e(qVarRemoveFirst, "headersQueue.removeFirst()");
            qVar = qVarRemoveFirst;
        }
        rc.w protocol = this.f19599b;
        kotlin.jvm.internal.h.f(protocol, "protocol");
        q.a aVar = new q.a();
        int length = qVar.f14512a.length / 2;
        wc.i iVarA = null;
        for (int r52 = 0; r52 < length; r52++) {
            String strO = qVar.o(r52);
            String strW = qVar.w(r52);
            if (kotlin.jvm.internal.h.a(strO, ":status")) {
                iVarA = i.a.a("HTTP/1.1 " + strW);
            } else if (!f19597h.contains(strO)) {
                aVar.b(strO, strW);
            }
        }
        if (iVarA == null) {
            throw new ProtocolException("Expected ':status' header not present");
        }
        b0.a aVar2 = new b0.a();
        aVar2.f14399b = protocol;
        aVar2.f14400c = iVarA.f18881b;
        String message = iVarA.f18882c;
        kotlin.jvm.internal.h.f(message, "message");
        aVar2.f14401d = message;
        aVar2.f = aVar.c().u();
        if (z10 && aVar2.f14400c == 100) {
            return null;
        }
        return aVar2;
    }

    @Override // wc.d
    public final void cancel() {
        this.f19600c = true;
        r rVar = this.f19598a;
        if (rVar != null) {
            rVar.e(b.CANCEL);
        }
    }

    @Override // wc.d
    public final vc.i d() {
        return this.f19601d;
    }

    @Override // wc.d
    public final long e(b0 b0Var) {
        if (wc.e.a(b0Var)) {
            return sc.c.j(b0Var);
        }
        return 0L;
    }

    @Override // wc.d
    public final h0 f(x xVar, long j10) {
        r rVar = this.f19598a;
        kotlin.jvm.internal.h.c(rVar);
        return rVar.g();
    }

    @Override // wc.d
    public final void g() throws IOException {
        this.f.flush();
    }

    @Override // wc.d
    public final j0 h(b0 b0Var) {
        r rVar = this.f19598a;
        kotlin.jvm.internal.h.c(rVar);
        return rVar.f19618g;
    }
}
