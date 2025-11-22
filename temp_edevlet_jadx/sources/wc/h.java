package wc;

import androidx.browser.trusted.sharing.ShareTarget;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.List;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import l9.m;
import m9.t;
import rc.a0;
import rc.b0;
import rc.d0;
import rc.e0;
import rc.r;
import rc.s;
import rc.v;
import rc.x;
import vc.k;
import vc.l;
import vc.m;

/* loaded from: classes2.dex */
public final class h implements s {

    /* renamed from: a, reason: collision with root package name */
    public final v f18879a;

    public h(v client) {
        kotlin.jvm.internal.h.f(client, "client");
        this.f18879a = client;
    }

    public static int d(b0 b0Var, int r22) throws NumberFormatException {
        String strB = b0.b(b0Var, "Retry-After");
        if (strB == null) {
            return r22;
        }
        Pattern patternCompile = Pattern.compile("\\d+");
        kotlin.jvm.internal.h.e(patternCompile, "compile(pattern)");
        if (!patternCompile.matcher(strB).matches()) {
            return Integer.MAX_VALUE;
        }
        Integer numValueOf = Integer.valueOf(strB);
        kotlin.jvm.internal.h.e(numValueOf, "Integer.valueOf(header)");
        return numValueOf.intValue();
    }

    @Override // rc.s
    public final b0 a(f fVar) throws IOException {
        List list;
        int r29;
        List listN1;
        boolean z10;
        vc.c cVar;
        SSLSocketFactory sSLSocketFactory;
        HostnameVerifier hostnameVerifier;
        rc.f fVar2;
        x xVar = fVar.f;
        vc.e eVar = fVar.f18869b;
        boolean z11 = true;
        List list2 = m9.v.f10173a;
        int r92 = 0;
        b0 b0Var = null;
        x request = xVar;
        boolean z12 = true;
        while (true) {
            eVar.getClass();
            kotlin.jvm.internal.h.f(request, "request");
            if (!(eVar.f18505j == null)) {
                throw new IllegalStateException("Check failed.".toString());
            }
            synchronized (eVar) {
                if (!(eVar.f18507l ^ z11)) {
                    throw new IllegalStateException("cannot make a new request because the previous response is still open: please call response.close()".toString());
                }
                if (!(eVar.f18506k ^ z11)) {
                    throw new IllegalStateException("Check failed.".toString());
                }
                m mVar = m.f9594a;
            }
            if (z12) {
                k kVar = eVar.f18498a;
                r rVar = request.f14598b;
                boolean z13 = rVar.f14516a;
                v vVar = eVar.f18512r;
                if (z13) {
                    SSLSocketFactory sSLSocketFactory2 = vVar.f14563q;
                    if (sSLSocketFactory2 == null) {
                        throw new IllegalStateException("CLEARTEXT-only client");
                    }
                    HostnameVerifier hostnameVerifier2 = vVar.f14567v;
                    fVar2 = vVar.w;
                    sSLSocketFactory = sSLSocketFactory2;
                    hostnameVerifier = hostnameVerifier2;
                } else {
                    sSLSocketFactory = null;
                    hostnameVerifier = null;
                    fVar2 = null;
                }
                list = list2;
                r29 = r92;
                eVar.f = new vc.d(kVar, new rc.a(rVar.f14520e, rVar.f, vVar.f14559l, vVar.f14562p, sSLSocketFactory, hostnameVerifier, fVar2, vVar.f14561n, vVar.f14566t, vVar.f14565s, vVar.f14560m), eVar, eVar.f18499b);
            } else {
                list = list2;
                r29 = r92;
            }
            try {
                if (eVar.f18509n) {
                    throw new IOException("Canceled");
                }
                try {
                    b0 b0VarC = fVar.c(request);
                    if (b0Var != null) {
                        b0.a aVar = new b0.a(b0VarC);
                        b0.a aVar2 = new b0.a(b0Var);
                        aVar2.f14403g = null;
                        b0 b0VarA = aVar2.a();
                        if (!(b0VarA.f14391h == null)) {
                            throw new IllegalArgumentException("priorResponse.body != null".toString());
                        }
                        aVar.f14406j = b0VarA;
                        b0VarC = aVar.a();
                    }
                    b0Var = b0VarC;
                    cVar = eVar.f18505j;
                    request = b(b0Var, cVar);
                } catch (IOException e10) {
                    if (!c(e10, eVar, request, !(e10 instanceof yc.a))) {
                        sc.c.y(e10, list);
                        throw e10;
                    }
                    listN1 = t.n1(e10, list);
                    z10 = true;
                    eVar.e(z10);
                    list = listN1;
                    r92 = r29;
                    z12 = false;
                    list2 = list;
                    z11 = true;
                } catch (l e11) {
                    List list3 = list;
                    if (!c(e11.f18546a, eVar, request, false)) {
                        IOException iOException = e11.f18547b;
                        sc.c.y(iOException, list3);
                        throw iOException;
                    }
                    listN1 = t.n1(e11.f18547b, list3);
                    z10 = true;
                    eVar.e(z10);
                    list = listN1;
                    r92 = r29;
                    z12 = false;
                    list2 = list;
                    z11 = true;
                }
                if (request == null) {
                    if (cVar != null && cVar.f18475a) {
                        if (!(!eVar.f18504h)) {
                            throw new IllegalStateException("Check failed.".toString());
                        }
                        eVar.f18504h = true;
                        eVar.f18500c.i();
                    }
                    eVar.e(false);
                    return b0Var;
                }
                d0 d0Var = b0Var.f14391h;
                if (d0Var != null) {
                    sc.c.c(d0Var);
                }
                r92 = r29 + 1;
                if (r92 > 20) {
                    throw new ProtocolException("Too many follow-up requests: " + r92);
                }
                eVar.e(true);
                z12 = true;
                list2 = list;
                z11 = true;
            } catch (Throwable th2) {
                eVar.e(true);
                throw th2;
            }
        }
    }

    public final x b(b0 b0Var, vc.c cVar) throws IOException {
        String strB;
        r.a aVar;
        rc.b bVar;
        vc.i iVar;
        a0 a0Var = null;
        e0 e0Var = (cVar == null || (iVar = cVar.f18476b) == null) ? null : iVar.f18539q;
        int r22 = b0Var.f14389e;
        String str = b0Var.f14386b.f14599c;
        if (r22 != 307 && r22 != 308) {
            if (r22 == 401) {
                bVar = this.f18879a.f14555g;
            } else {
                if (r22 == 421) {
                    if (cVar == null || !(!kotlin.jvm.internal.h.a(cVar.f18479e.f18495h.f14373a.f14520e, cVar.f18476b.f18539q.f14434a.f14373a.f14520e))) {
                        return null;
                    }
                    vc.i iVar2 = cVar.f18476b;
                    synchronized (iVar2) {
                        iVar2.f18532j = true;
                    }
                    return b0Var.f14386b;
                }
                if (r22 == 503) {
                    b0 b0Var2 = b0Var.f14394l;
                    if ((b0Var2 == null || b0Var2.f14389e != 503) && d(b0Var, Integer.MAX_VALUE) == 0) {
                        return b0Var.f14386b;
                    }
                    return null;
                }
                if (r22 == 407) {
                    kotlin.jvm.internal.h.c(e0Var);
                    if (e0Var.f14435b.type() != Proxy.Type.HTTP) {
                        throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                    }
                    bVar = this.f18879a.f14561n;
                } else {
                    if (r22 == 408) {
                        if (!this.f18879a.f) {
                            return null;
                        }
                        b0 b0Var3 = b0Var.f14394l;
                        if ((b0Var3 == null || b0Var3.f14389e != 408) && d(b0Var, 0) <= 0) {
                            return b0Var.f14386b;
                        }
                        return null;
                    }
                    switch (r22) {
                        case 300:
                        case 301:
                        case 302:
                        case 303:
                            break;
                        default:
                            return null;
                    }
                }
            }
            bVar.b(e0Var, b0Var);
            return null;
        }
        v vVar = this.f18879a;
        if (!vVar.f14556h || (strB = b0.b(b0Var, "Location")) == null) {
            return null;
        }
        x xVar = b0Var.f14386b;
        r rVar = xVar.f14598b;
        rVar.getClass();
        try {
            aVar = new r.a();
            aVar.c(rVar, strB);
        } catch (IllegalArgumentException unused) {
            aVar = null;
        }
        r rVarA = aVar != null ? aVar.a() : null;
        if (rVarA == null) {
            return null;
        }
        if (!kotlin.jvm.internal.h.a(rVarA.f14517b, xVar.f14598b.f14517b) && !vVar.f14557j) {
            return null;
        }
        x.a aVar2 = new x.a(xVar);
        if (a0.b.o(str)) {
            boolean zA = kotlin.jvm.internal.h.a(str, "PROPFIND");
            int r11 = b0Var.f14389e;
            boolean z10 = zA || r11 == 308 || r11 == 307;
            if ((true ^ kotlin.jvm.internal.h.a(str, "PROPFIND")) && r11 != 308 && r11 != 307) {
                str = ShareTarget.METHOD_GET;
            } else if (z10) {
                a0Var = xVar.f14601e;
            }
            aVar2.d(str, a0Var);
            if (!z10) {
                aVar2.f14604c.d("Transfer-Encoding");
                aVar2.f14604c.d("Content-Length");
                aVar2.f14604c.d("Content-Type");
            }
        }
        if (!sc.c.a(xVar.f14598b, rVarA)) {
            aVar2.f14604c.d("Authorization");
        }
        aVar2.f14602a = rVarA;
        return aVar2.a();
    }

    public final boolean c(IOException iOException, vc.e eVar, x xVar, boolean z10) {
        boolean zA;
        vc.m mVar;
        vc.i iVar;
        if (!this.f18879a.f) {
            return false;
        }
        if (z10 && (iOException instanceof FileNotFoundException)) {
            return false;
        }
        if (!(!(iOException instanceof ProtocolException) && (!(iOException instanceof InterruptedIOException) ? ((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException) : !((iOException instanceof SocketTimeoutException) && !z10)))) {
            return false;
        }
        vc.d dVar = eVar.f;
        kotlin.jvm.internal.h.c(dVar);
        int r52 = dVar.f18491c;
        if (r52 == 0 && dVar.f18492d == 0 && dVar.f18493e == 0) {
            zA = false;
        } else if (dVar.f != null) {
            zA = true;
        } else {
            e0 e0Var = null;
            if (r52 <= 1 && dVar.f18492d <= 1 && dVar.f18493e <= 0 && (iVar = dVar.f18496i.f18503g) != null) {
                synchronized (iVar) {
                    if (iVar.f18533k == 0 && sc.c.a(iVar.f18539q.f14434a.f14373a, dVar.f18495h.f14373a)) {
                        e0Var = iVar.f18539q;
                    }
                }
            }
            if (e0Var != null) {
                dVar.f = e0Var;
            } else {
                m.a aVar = dVar.f18489a;
                if ((aVar == null || !aVar.a()) && (mVar = dVar.f18490b) != null) {
                    zA = mVar.a();
                }
            }
            zA = true;
        }
        return zA;
    }
}
