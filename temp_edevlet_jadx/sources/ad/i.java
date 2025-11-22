package ad;

import ad.l;
import java.util.List;
import javax.net.ssl.SSLSocket;
import org.bouncycastle.jsse.BCSSLParameters;
import org.bouncycastle.jsse.BCSSLSocket;
import rc.w;
import zc.h;

/* loaded from: classes2.dex */
public final class i implements m {

    /* renamed from: a, reason: collision with root package name */
    public static final a f262a = new a();

    public static final class a implements l.a {
        @Override // ad.l.a
        public final boolean a(SSLSocket sSLSocket) {
            zc.c.f.getClass();
            return zc.c.f20027e && (sSLSocket instanceof BCSSLSocket);
        }

        @Override // ad.l.a
        public final m b(SSLSocket sSLSocket) {
            return new i();
        }
    }

    @Override // ad.m
    public final boolean a(SSLSocket sSLSocket) {
        return sSLSocket instanceof BCSSLSocket;
    }

    @Override // ad.m
    public final boolean b() {
        zc.c.f.getClass();
        return zc.c.f20027e;
    }

    @Override // ad.m
    public final String c(SSLSocket sSLSocket) {
        String applicationProtocol = ((BCSSLSocket) sSLSocket).getApplicationProtocol();
        if (applicationProtocol == null || (applicationProtocol.hashCode() == 0 && applicationProtocol.equals(""))) {
            return null;
        }
        return applicationProtocol;
    }

    @Override // ad.m
    public final void d(SSLSocket sSLSocket, String str, List<? extends w> protocols) {
        kotlin.jvm.internal.h.f(protocols, "protocols");
        if (a(sSLSocket)) {
            BCSSLSocket bCSSLSocket = (BCSSLSocket) sSLSocket;
            BCSSLParameters sslParameters = bCSSLSocket.getParameters();
            kotlin.jvm.internal.h.e(sslParameters, "sslParameters");
            zc.h.f20045c.getClass();
            Object[] array = h.a.a(protocols).toArray(new String[0]);
            if (array == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            sslParameters.setApplicationProtocols((String[]) array);
            bCSSLSocket.setParameters(sslParameters);
        }
    }
}
