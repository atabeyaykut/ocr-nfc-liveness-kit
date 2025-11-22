package ad;

import ad.l;
import javax.net.ssl.SSLSocket;

/* loaded from: classes2.dex */
public final class g implements l.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f256a = "com.google.android.gms.org.conscrypt";

    @Override // ad.l.a
    public final boolean a(SSLSocket sSLSocket) {
        return mc.j.D(sSLSocket.getClass().getName(), this.f256a + '.', false);
    }

    @Override // ad.l.a
    public final m b(SSLSocket sSLSocket) {
        Class<?> cls = sSLSocket.getClass();
        Class<?> superclass = cls;
        while (!kotlin.jvm.internal.h.a(superclass.getSimpleName(), "OpenSSLSocketImpl")) {
            superclass = superclass.getSuperclass();
            if (superclass == null) {
                throw new AssertionError(androidx.appcompat.graphics.drawable.a.g("No OpenSSLSocketImpl superclass of socket of type ", cls));
            }
        }
        return new h(superclass);
    }
}
