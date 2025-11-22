package ad;

import android.annotation.SuppressLint;
import android.net.ssl.SSLSockets;
import android.os.Build;
import java.io.IOException;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import rc.w;
import zc.h;

@SuppressLint({"NewApi"})
/* loaded from: classes2.dex */
public final class c implements m {

    /* renamed from: a, reason: collision with root package name */
    public static final a f250a = new a();

    public static final class a {
    }

    @Override // ad.m
    public final boolean a(SSLSocket sSLSocket) {
        return SSLSockets.isSupportedSocket(sSLSocket);
    }

    @Override // ad.m
    public final boolean b() {
        f250a.getClass();
        zc.h.f20045c.getClass();
        return h.a.c() && Build.VERSION.SDK_INT >= 29;
    }

    @Override // ad.m
    @SuppressLint({"NewApi"})
    public final String c(SSLSocket sSLSocket) {
        String applicationProtocol = sSLSocket.getApplicationProtocol();
        if (applicationProtocol == null || (applicationProtocol.hashCode() == 0 && applicationProtocol.equals(""))) {
            return null;
        }
        return applicationProtocol;
    }

    @Override // ad.m
    @SuppressLint({"NewApi"})
    public final void d(SSLSocket sSLSocket, String str, List<? extends w> protocols) throws IOException {
        kotlin.jvm.internal.h.f(protocols, "protocols");
        try {
            SSLSockets.setUseSessionTickets(sSLSocket, true);
            SSLParameters sslParameters = sSLSocket.getSSLParameters();
            kotlin.jvm.internal.h.e(sslParameters, "sslParameters");
            zc.h.f20045c.getClass();
            Object[] array = h.a.a(protocols).toArray(new String[0]);
            if (array == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            sslParameters.setApplicationProtocols((String[]) array);
            sSLSocket.setSSLParameters(sslParameters);
        } catch (IllegalArgumentException e10) {
            throw new IOException("Android internal error", e10);
        }
    }
}
