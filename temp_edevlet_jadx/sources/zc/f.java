package zc;

import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import mc.i;
import rc.w;
import zc.h;

/* loaded from: classes2.dex */
public final class f extends h {

    /* renamed from: d, reason: collision with root package name */
    public static final boolean f20039d;

    /* renamed from: e, reason: collision with root package name */
    public static final a f20040e = new a();

    public static final class a {
    }

    static {
        String property = System.getProperty("java.specification.version");
        Integer numT = property != null ? i.t(property) : null;
        boolean z10 = true;
        if (numT == null) {
            try {
                SSLSocket.class.getMethod("getApplicationProtocol", new Class[0]);
            } catch (NoSuchMethodException unused) {
            }
        } else if (numT.intValue() < 9) {
            z10 = false;
        }
        f20039d = z10;
    }

    @Override // zc.h
    public final void d(SSLSocket sSLSocket, String str, List<w> protocols) {
        kotlin.jvm.internal.h.f(protocols, "protocols");
        SSLParameters sslParameters = sSLSocket.getSSLParameters();
        h.f20045c.getClass();
        ArrayList arrayListA = h.a.a(protocols);
        kotlin.jvm.internal.h.e(sslParameters, "sslParameters");
        Object[] array = arrayListA.toArray(new String[0]);
        if (array == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        sslParameters.setApplicationProtocols((String[]) array);
        sSLSocket.setSSLParameters(sslParameters);
    }

    @Override // zc.h
    public final String f(SSLSocket sSLSocket) {
        try {
            String applicationProtocol = sSLSocket.getApplicationProtocol();
            if (applicationProtocol != null) {
                if (applicationProtocol.hashCode() != 0) {
                    return applicationProtocol;
                }
                if (!applicationProtocol.equals("")) {
                    return applicationProtocol;
                }
            }
        } catch (UnsupportedOperationException unused) {
        }
        return null;
    }
}
