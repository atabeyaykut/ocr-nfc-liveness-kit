package rc;

import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import java.util.Objects;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import rc.r;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final r f14373a;

    /* renamed from: b, reason: collision with root package name */
    public final List<w> f14374b;

    /* renamed from: c, reason: collision with root package name */
    public final List<i> f14375c;

    /* renamed from: d, reason: collision with root package name */
    public final m f14376d;

    /* renamed from: e, reason: collision with root package name */
    public final SocketFactory f14377e;
    public final SSLSocketFactory f;

    /* renamed from: g, reason: collision with root package name */
    public final HostnameVerifier f14378g;

    /* renamed from: h, reason: collision with root package name */
    public final f f14379h;

    /* renamed from: i, reason: collision with root package name */
    public final b f14380i;

    /* renamed from: j, reason: collision with root package name */
    public final Proxy f14381j;

    /* renamed from: k, reason: collision with root package name */
    public final ProxySelector f14382k;

    public a(String uriHost, int r13, m dns, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, f fVar, b proxyAuthenticator, List protocols, List connectionSpecs, ProxySelector proxySelector) {
        kotlin.jvm.internal.h.f(uriHost, "uriHost");
        kotlin.jvm.internal.h.f(dns, "dns");
        kotlin.jvm.internal.h.f(socketFactory, "socketFactory");
        kotlin.jvm.internal.h.f(proxyAuthenticator, "proxyAuthenticator");
        kotlin.jvm.internal.h.f(protocols, "protocols");
        kotlin.jvm.internal.h.f(connectionSpecs, "connectionSpecs");
        kotlin.jvm.internal.h.f(proxySelector, "proxySelector");
        this.f14376d = dns;
        this.f14377e = socketFactory;
        this.f = sSLSocketFactory;
        this.f14378g = hostnameVerifier;
        this.f14379h = fVar;
        this.f14380i = proxyAuthenticator;
        this.f14381j = null;
        this.f14382k = proxySelector;
        r.a aVar = new r.a();
        String str = "https";
        String str2 = sSLSocketFactory != null ? "https" : "http";
        if (mc.j.x(str2, "http")) {
            str = "http";
        } else if (!mc.j.x(str2, "https")) {
            throw new IllegalArgumentException("unexpected scheme: ".concat(str2));
        }
        aVar.f14525a = str;
        String strL0 = b8.f.l0(r.b.d(r.f14515l, uriHost, 0, 0, false, 7));
        if (strL0 == null) {
            throw new IllegalArgumentException("unexpected host: ".concat(uriHost));
        }
        aVar.f14528d = strL0;
        if (!(1 <= r13 && 65535 >= r13)) {
            throw new IllegalArgumentException(android.support.v4.media.a.d("unexpected port: ", r13).toString());
        }
        aVar.f14529e = r13;
        this.f14373a = aVar.a();
        this.f14374b = sc.c.v(protocols);
        this.f14375c = sc.c.v(connectionSpecs);
    }

    public final boolean a(a that) {
        kotlin.jvm.internal.h.f(that, "that");
        return kotlin.jvm.internal.h.a(this.f14376d, that.f14376d) && kotlin.jvm.internal.h.a(this.f14380i, that.f14380i) && kotlin.jvm.internal.h.a(this.f14374b, that.f14374b) && kotlin.jvm.internal.h.a(this.f14375c, that.f14375c) && kotlin.jvm.internal.h.a(this.f14382k, that.f14382k) && kotlin.jvm.internal.h.a(this.f14381j, that.f14381j) && kotlin.jvm.internal.h.a(this.f, that.f) && kotlin.jvm.internal.h.a(this.f14378g, that.f14378g) && kotlin.jvm.internal.h.a(this.f14379h, that.f14379h) && this.f14373a.f == that.f14373a.f;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (kotlin.jvm.internal.h.a(this.f14373a, aVar.f14373a) && a(aVar)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f14379h) + ((Objects.hashCode(this.f14378g) + ((Objects.hashCode(this.f) + ((Objects.hashCode(this.f14381j) + ((this.f14382k.hashCode() + androidx.camera.camera2.internal.c.c(this.f14375c, androidx.camera.camera2.internal.c.c(this.f14374b, (this.f14380i.hashCode() + ((this.f14376d.hashCode() + ((this.f14373a.hashCode() + 527) * 31)) * 31)) * 31, 31), 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder("Address{");
        r rVar = this.f14373a;
        sb2.append(rVar.f14520e);
        sb2.append(':');
        sb2.append(rVar.f);
        sb2.append(", ");
        Proxy proxy = this.f14381j;
        if (proxy != null) {
            str = "proxy=" + proxy;
        } else {
            str = "proxySelector=" + this.f14382k;
        }
        return androidx.camera.camera2.internal.c.h(sb2, str, "}");
    }
}
