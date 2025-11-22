package vc;

import androidx.core.location.LocationRequestCompat;
import ed.b0;
import ed.d0;
import ed.h;
import java.io.IOException;
import java.net.ConnectException;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.security.Principal;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import m9.t;
import rc.b0;
import rc.e0;
import rc.p;
import rc.q;
import rc.v;
import rc.w;
import rc.x;
import xc.b;
import yc.f;
import yc.r;
import yc.s;

/* loaded from: classes2.dex */
public final class i extends f.c {

    /* renamed from: b, reason: collision with root package name */
    public Socket f18525b;

    /* renamed from: c, reason: collision with root package name */
    public Socket f18526c;

    /* renamed from: d, reason: collision with root package name */
    public p f18527d;

    /* renamed from: e, reason: collision with root package name */
    public w f18528e;
    public yc.f f;

    /* renamed from: g, reason: collision with root package name */
    public d0 f18529g;

    /* renamed from: h, reason: collision with root package name */
    public b0 f18530h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f18531i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f18532j;

    /* renamed from: k, reason: collision with root package name */
    public int f18533k;

    /* renamed from: l, reason: collision with root package name */
    public int f18534l;

    /* renamed from: m, reason: collision with root package name */
    public int f18535m;

    /* renamed from: n, reason: collision with root package name */
    public int f18536n;

    /* renamed from: o, reason: collision with root package name */
    public final ArrayList f18537o;

    /* renamed from: p, reason: collision with root package name */
    public long f18538p;

    /* renamed from: q, reason: collision with root package name */
    public final e0 f18539q;

    public i(k connectionPool, e0 route) {
        kotlin.jvm.internal.h.f(connectionPool, "connectionPool");
        kotlin.jvm.internal.h.f(route, "route");
        this.f18539q = route;
        this.f18536n = 1;
        this.f18537o = new ArrayList();
        this.f18538p = LocationRequestCompat.PASSIVE_INTERVAL;
    }

    public static void d(v client, e0 failedRoute, IOException failure) {
        kotlin.jvm.internal.h.f(client, "client");
        kotlin.jvm.internal.h.f(failedRoute, "failedRoute");
        kotlin.jvm.internal.h.f(failure, "failure");
        if (failedRoute.f14435b.type() != Proxy.Type.DIRECT) {
            rc.a aVar = failedRoute.f14434a;
            aVar.f14382k.connectFailed(aVar.f14373a.g(), failedRoute.f14435b.address(), failure);
        }
        com.airbnb.epoxy.a aVar2 = client.B;
        synchronized (aVar2) {
            ((Set) aVar2.f2536b).add(failedRoute);
        }
    }

    @Override // yc.f.c
    public final synchronized void a(yc.f connection, yc.v settings) {
        kotlin.jvm.internal.h.f(connection, "connection");
        kotlin.jvm.internal.h.f(settings, "settings");
        this.f18536n = (settings.f19649a & 16) != 0 ? settings.f19650b[4] : Integer.MAX_VALUE;
    }

    @Override // yc.f.c
    public final void b(r stream) throws IOException {
        kotlin.jvm.internal.h.f(stream, "stream");
        stream.c(yc.b.REFUSED_STREAM, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00dc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(int r17, int r18, int r19, boolean r20, vc.e r21, rc.n r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: vc.i.c(int, int, int, boolean, vc.e, rc.n):void");
    }

    public final void e(int r52, int r6, e call, rc.n nVar) throws IOException {
        Socket socket;
        int r22;
        e0 e0Var = this.f18539q;
        Proxy proxy = e0Var.f14435b;
        rc.a aVar = e0Var.f14434a;
        Proxy.Type type = proxy.type();
        if (type != null && ((r22 = f.f18520a[type.ordinal()]) == 1 || r22 == 2)) {
            socket = aVar.f14377e.createSocket();
            kotlin.jvm.internal.h.c(socket);
        } else {
            socket = new Socket(proxy);
        }
        this.f18525b = socket;
        InetSocketAddress inetSocketAddress = this.f18539q.f14436c;
        nVar.getClass();
        kotlin.jvm.internal.h.f(call, "call");
        kotlin.jvm.internal.h.f(inetSocketAddress, "inetSocketAddress");
        socket.setSoTimeout(r6);
        try {
            zc.h.f20045c.getClass();
            zc.h.f20043a.e(socket, this.f18539q.f14436c, r52);
            try {
                this.f18529g = ed.v.b(ed.v.e(socket));
                this.f18530h = ed.v.a(ed.v.d(socket));
            } catch (NullPointerException e10) {
                if (kotlin.jvm.internal.h.a(e10.getMessage(), "throw with null exception")) {
                    throw new IOException(e10);
                }
            }
        } catch (ConnectException e11) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.f18539q.f14436c);
            connectException.initCause(e11);
            throw connectException;
        }
    }

    public final void f(int r16, int r17, int r18, e eVar, rc.n nVar) throws IOException {
        x.a aVar = new x.a();
        e0 e0Var = this.f18539q;
        rc.r url = e0Var.f14434a.f14373a;
        kotlin.jvm.internal.h.f(url, "url");
        aVar.f14602a = url;
        aVar.d("CONNECT", null);
        rc.a aVar2 = e0Var.f14434a;
        aVar.c("Host", sc.c.u(aVar2.f14373a, true));
        aVar.c("Proxy-Connection", "Keep-Alive");
        aVar.c("User-Agent", "okhttp/4.9.3");
        x xVarA = aVar.a();
        b0.a aVar3 = new b0.a();
        aVar3.f14398a = xVarA;
        aVar3.f14399b = w.HTTP_1_1;
        aVar3.f14400c = 407;
        aVar3.f14401d = "Preemptive Authenticate";
        aVar3.f14403g = sc.c.f15382c;
        aVar3.f14407k = -1L;
        aVar3.f14408l = -1L;
        q.a aVar4 = aVar3.f;
        aVar4.getClass();
        q.f14511b.getClass();
        q.b.a("Proxy-Authenticate");
        q.b.b("OkHttp-Preemptive", "Proxy-Authenticate");
        aVar4.d("Proxy-Authenticate");
        aVar4.b("Proxy-Authenticate", "OkHttp-Preemptive");
        aVar2.f14380i.b(e0Var, aVar3.a());
        e(r16, r17, eVar, nVar);
        String str = "CONNECT " + sc.c.u(xVarA.f14598b, true) + " HTTP/1.1";
        d0 d0Var = this.f18529g;
        kotlin.jvm.internal.h.c(d0Var);
        ed.b0 b0Var = this.f18530h;
        kotlin.jvm.internal.h.c(b0Var);
        xc.b bVar = new xc.b(null, this, d0Var, b0Var);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        d0Var.h().g(r17, timeUnit);
        b0Var.h().g(r18, timeUnit);
        bVar.k(xVarA.f14600d, str);
        bVar.a();
        b0.a aVarC = bVar.c(false);
        kotlin.jvm.internal.h.c(aVarC);
        aVarC.f14398a = xVarA;
        rc.b0 b0VarA = aVarC.a();
        long j10 = sc.c.j(b0VarA);
        if (j10 != -1) {
            b.d dVarJ = bVar.j(j10);
            sc.c.s(dVarJ, Integer.MAX_VALUE, timeUnit);
            dVarJ.close();
        }
        int r52 = b0VarA.f14389e;
        if (r52 != 200) {
            if (r52 != 407) {
                throw new IOException(android.support.v4.media.a.d("Unexpected response code for CONNECT: ", r52));
            }
            aVar2.f14380i.b(e0Var, b0VarA);
            throw new IOException("Failed to authenticate with proxy");
        }
        if (!d0Var.f5301b.I() || !b0Var.f5295b.I()) {
            throw new IOException("TLS tunnel buffered too many bytes!");
        }
    }

    public final void g(b bVar, e call, rc.n nVar) throws Throwable {
        rc.a aVar = this.f18539q.f14434a;
        SSLSocketFactory sSLSocketFactory = aVar.f;
        w wVarA = w.HTTP_1_1;
        if (sSLSocketFactory == null) {
            List<w> list = aVar.f14374b;
            w wVar = w.H2_PRIOR_KNOWLEDGE;
            if (!list.contains(wVar)) {
                this.f18526c = this.f18525b;
                this.f18528e = wVarA;
                return;
            } else {
                this.f18526c = this.f18525b;
                this.f18528e = wVar;
                m();
                return;
            }
        }
        nVar.getClass();
        kotlin.jvm.internal.h.f(call, "call");
        rc.a aVar2 = this.f18539q.f14434a;
        SSLSocketFactory sSLSocketFactory2 = aVar2.f;
        SSLSocket sSLSocket = null;
        String strF = null;
        try {
            kotlin.jvm.internal.h.c(sSLSocketFactory2);
            Socket socket = this.f18525b;
            rc.r rVar = aVar2.f14373a;
            Socket socketCreateSocket = sSLSocketFactory2.createSocket(socket, rVar.f14520e, rVar.f, true);
            if (socketCreateSocket == null) {
                throw new NullPointerException("null cannot be cast to non-null type javax.net.ssl.SSLSocket");
            }
            SSLSocket sSLSocket2 = (SSLSocket) socketCreateSocket;
            try {
                rc.i iVarA = bVar.a(sSLSocket2);
                if (iVarA.f14471b) {
                    zc.h.f20045c.getClass();
                    zc.h.f20043a.d(sSLSocket2, aVar2.f14373a.f14520e, aVar2.f14374b);
                }
                sSLSocket2.startHandshake();
                SSLSession sslSocketSession = sSLSocket2.getSession();
                p.a aVar3 = p.f14504e;
                kotlin.jvm.internal.h.e(sslSocketSession, "sslSocketSession");
                aVar3.getClass();
                p pVarA = p.a.a(sslSocketSession);
                HostnameVerifier hostnameVerifier = aVar2.f14378g;
                kotlin.jvm.internal.h.c(hostnameVerifier);
                if (hostnameVerifier.verify(aVar2.f14373a.f14520e, sslSocketSession)) {
                    rc.f fVar = aVar2.f14379h;
                    kotlin.jvm.internal.h.c(fVar);
                    this.f18527d = new p(pVarA.f14506b, pVarA.f14507c, pVarA.f14508d, new g(fVar, pVarA, aVar2));
                    fVar.a(aVar2.f14373a.f14520e, new h(this));
                    if (iVarA.f14471b) {
                        zc.h.f20045c.getClass();
                        strF = zc.h.f20043a.f(sSLSocket2);
                    }
                    this.f18526c = sSLSocket2;
                    this.f18529g = ed.v.b(ed.v.e(sSLSocket2));
                    this.f18530h = ed.v.a(ed.v.d(sSLSocket2));
                    if (strF != null) {
                        wVarA = w.a.a(strF);
                    }
                    this.f18528e = wVarA;
                    zc.h.f20045c.getClass();
                    zc.h.f20043a.a(sSLSocket2);
                    if (this.f18528e == w.HTTP_2) {
                        m();
                        return;
                    }
                    return;
                }
                List<Certificate> listA = pVarA.a();
                if (!(!listA.isEmpty())) {
                    throw new SSLPeerUnverifiedException("Hostname " + aVar2.f14373a.f14520e + " not verified (no certificates)");
                }
                Certificate certificate = listA.get(0);
                if (certificate == null) {
                    throw new NullPointerException("null cannot be cast to non-null type java.security.cert.X509Certificate");
                }
                X509Certificate x509Certificate = (X509Certificate) certificate;
                StringBuilder sb2 = new StringBuilder("\n              |Hostname ");
                sb2.append(aVar2.f14373a.f14520e);
                sb2.append(" not verified:\n              |    certificate: ");
                rc.f.f14438d.getClass();
                StringBuilder sb3 = new StringBuilder("sha256/");
                ed.h hVar = ed.h.f5315d;
                PublicKey publicKey = x509Certificate.getPublicKey();
                kotlin.jvm.internal.h.e(publicKey, "publicKey");
                byte[] encoded = publicKey.getEncoded();
                kotlin.jvm.internal.h.e(encoded, "publicKey.encoded");
                sb3.append(h.a.c(encoded).q("SHA-256").n());
                sb2.append(sb3.toString());
                sb2.append("\n              |    DN: ");
                Principal subjectDN = x509Certificate.getSubjectDN();
                kotlin.jvm.internal.h.e(subjectDN, "cert.subjectDN");
                sb2.append(subjectDN.getName());
                sb2.append("\n              |    subjectAltNames: ");
                sb2.append(t.m1(cd.d.a(x509Certificate, 2), cd.d.a(x509Certificate, 7)));
                sb2.append("\n              ");
                throw new SSLPeerUnverifiedException(mc.f.s(sb2.toString()));
            } catch (Throwable th2) {
                th = th2;
                sSLSocket = sSLSocket2;
                if (sSLSocket != null) {
                    zc.h.f20045c.getClass();
                    zc.h.f20043a.a(sSLSocket);
                }
                if (sSLSocket != null) {
                    sc.c.d(sSLSocket);
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public final synchronized void h() {
        this.f18534l++;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00d9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00da A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean i(rc.a r9, java.util.List<rc.e0> r10) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: vc.i.i(rc.a, java.util.List):boolean");
    }

    public final boolean j(boolean z10) throws SocketException {
        long j10;
        byte[] bArr = sc.c.f15380a;
        long jNanoTime = System.nanoTime();
        Socket socket = this.f18525b;
        kotlin.jvm.internal.h.c(socket);
        Socket socket2 = this.f18526c;
        kotlin.jvm.internal.h.c(socket2);
        d0 d0Var = this.f18529g;
        kotlin.jvm.internal.h.c(d0Var);
        if (socket.isClosed() || socket2.isClosed() || socket2.isInputShutdown() || socket2.isOutputShutdown()) {
            return false;
        }
        yc.f fVar = this.f;
        if (fVar != null) {
            return fVar.d(jNanoTime);
        }
        synchronized (this) {
            j10 = jNanoTime - this.f18538p;
        }
        if (j10 < 10000000000L || !z10) {
            return true;
        }
        try {
            int soTimeout = socket2.getSoTimeout();
            try {
                socket2.setSoTimeout(1);
                boolean z11 = !d0Var.I();
                socket2.setSoTimeout(soTimeout);
                return z11;
            } catch (Throwable th2) {
                socket2.setSoTimeout(soTimeout);
                throw th2;
            }
        } catch (SocketTimeoutException unused) {
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    public final wc.d k(v vVar, wc.f fVar) throws SocketException {
        Socket socket = this.f18526c;
        kotlin.jvm.internal.h.c(socket);
        d0 d0Var = this.f18529g;
        kotlin.jvm.internal.h.c(d0Var);
        ed.b0 b0Var = this.f18530h;
        kotlin.jvm.internal.h.c(b0Var);
        yc.f fVar2 = this.f;
        if (fVar2 != null) {
            return new yc.p(vVar, this, fVar, fVar2);
        }
        int r32 = fVar.f18874h;
        socket.setSoTimeout(r32);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        d0Var.h().g(r32, timeUnit);
        b0Var.h().g(fVar.f18875i, timeUnit);
        return new xc.b(vVar, this, d0Var, b0Var);
    }

    public final synchronized void l() {
        this.f18531i = true;
    }

    public final void m() throws IOException {
        String strConcat;
        Socket socket = this.f18526c;
        kotlin.jvm.internal.h.c(socket);
        d0 d0Var = this.f18529g;
        kotlin.jvm.internal.h.c(d0Var);
        ed.b0 b0Var = this.f18530h;
        kotlin.jvm.internal.h.c(b0Var);
        socket.setSoTimeout(0);
        uc.d dVar = uc.d.f17927h;
        f.b bVar = new f.b(dVar);
        String peerName = this.f18539q.f14434a.f14373a.f14520e;
        kotlin.jvm.internal.h.f(peerName, "peerName");
        bVar.f19564a = socket;
        if (bVar.f19570h) {
            strConcat = sc.c.f + ' ' + peerName;
        } else {
            strConcat = "MockWebServer ".concat(peerName);
        }
        bVar.f19565b = strConcat;
        bVar.f19566c = d0Var;
        bVar.f19567d = b0Var;
        bVar.f19568e = this;
        bVar.f19569g = 0;
        yc.f fVar = new yc.f(bVar);
        this.f = fVar;
        yc.v vVar = yc.f.E;
        this.f18536n = (vVar.f19649a & 16) != 0 ? vVar.f19650b[4] : Integer.MAX_VALUE;
        s sVar = fVar.B;
        synchronized (sVar) {
            if (sVar.f19639c) {
                throw new IOException("closed");
            }
            if (sVar.f) {
                Logger logger = s.f19636g;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(sc.c.h(">> CONNECTION " + yc.e.f19537a.t(), new Object[0]));
                }
                sVar.f19641e.C(yc.e.f19537a);
                sVar.f19641e.flush();
            }
        }
        fVar.B.i(fVar.f19558t);
        if (fVar.f19558t.a() != 65535) {
            fVar.B.j(0, r1 - 65535);
        }
        dVar.f().c(new uc.b(fVar.C, fVar.f19545d), 0L);
    }

    public final String toString() {
        Object obj;
        StringBuilder sb2 = new StringBuilder("Connection{");
        e0 e0Var = this.f18539q;
        sb2.append(e0Var.f14434a.f14373a.f14520e);
        sb2.append(':');
        sb2.append(e0Var.f14434a.f14373a.f);
        sb2.append(", proxy=");
        sb2.append(e0Var.f14435b);
        sb2.append(" hostAddress=");
        sb2.append(e0Var.f14436c);
        sb2.append(" cipherSuite=");
        p pVar = this.f18527d;
        if (pVar == null || (obj = pVar.f14507c) == null) {
            obj = "none";
        }
        sb2.append(obj);
        sb2.append(" protocol=");
        sb2.append(this.f18528e);
        sb2.append('}');
        return sb2.toString();
    }
}
