package ad;

import ad.l;
import java.util.List;
import javax.net.ssl.SSLSocket;
import org.conscrypt.Conscrypt;
import rc.w;
import zc.d;
import zc.h;

/* loaded from: classes2.dex */
public final class k implements m {

    /* renamed from: a, reason: collision with root package name */
    public static final a f266a = new a();

    public static final class a implements l.a {
        @Override // ad.l.a
        public final boolean a(SSLSocket sSLSocket) {
            zc.d.f.getClass();
            return d.a.b() && Conscrypt.isConscrypt(sSLSocket);
        }

        @Override // ad.l.a
        public final m b(SSLSocket sSLSocket) {
            return new k();
        }
    }

    @Override // ad.m
    public final boolean a(SSLSocket sSLSocket) {
        return Conscrypt.isConscrypt(sSLSocket);
    }

    @Override // ad.m
    public final boolean b() {
        zc.d.f.getClass();
        return zc.d.f20029e;
    }

    @Override // ad.m
    public final String c(SSLSocket sSLSocket) {
        if (a(sSLSocket)) {
            return Conscrypt.getApplicationProtocol(sSLSocket);
        }
        return null;
    }

    @Override // ad.m
    public final void d(SSLSocket sSLSocket, String str, List<? extends w> protocols) {
        kotlin.jvm.internal.h.f(protocols, "protocols");
        if (a(sSLSocket)) {
            Conscrypt.setUseSessionTickets(sSLSocket, true);
            zc.h.f20045c.getClass();
            Object[] array = h.a.a(protocols).toArray(new String[0]);
            if (array == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            Conscrypt.setApplicationProtocols(sSLSocket, (String[]) array);
        }
    }
}
