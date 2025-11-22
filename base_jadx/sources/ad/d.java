package ad;

import android.net.http.X509TrustManagerExtensions;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes2.dex */
public final class d extends cd.c {

    /* renamed from: a, reason: collision with root package name */
    public final X509TrustManager f251a;

    /* renamed from: b, reason: collision with root package name */
    public final X509TrustManagerExtensions f252b;

    public d(X509TrustManager x509TrustManager, X509TrustManagerExtensions x509TrustManagerExtensions) {
        this.f251a = x509TrustManager;
        this.f252b = x509TrustManagerExtensions;
    }

    @Override // cd.c
    public final List a(String hostname, List chain) throws CertificateException, SSLPeerUnverifiedException {
        kotlin.jvm.internal.h.f(chain, "chain");
        kotlin.jvm.internal.h.f(hostname, "hostname");
        Object[] array = chain.toArray(new X509Certificate[0]);
        if (array == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        try {
            List<X509Certificate> listCheckServerTrusted = this.f252b.checkServerTrusted((X509Certificate[]) array, "RSA", hostname);
            kotlin.jvm.internal.h.e(listCheckServerTrusted, "x509TrustManagerExtensio…ficates, \"RSA\", hostname)");
            return listCheckServerTrusted;
        } catch (CertificateException e10) {
            SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e10.getMessage());
            sSLPeerUnverifiedException.initCause(e10);
            throw sSLPeerUnverifiedException;
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof d) && ((d) obj).f251a == this.f251a;
    }

    public final int hashCode() {
        return System.identityHashCode(this.f251a);
    }
}
