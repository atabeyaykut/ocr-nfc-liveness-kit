package ad;

import java.util.List;
import javax.net.ssl.SSLSocket;
import rc.w;

/* loaded from: classes2.dex */
public final class l implements m {

    /* renamed from: a, reason: collision with root package name */
    public m f267a;

    /* renamed from: b, reason: collision with root package name */
    public final a f268b;

    public interface a {
        boolean a(SSLSocket sSLSocket);

        m b(SSLSocket sSLSocket);
    }

    public l(a aVar) {
        this.f268b = aVar;
    }

    @Override // ad.m
    public final boolean a(SSLSocket sSLSocket) {
        return this.f268b.a(sSLSocket);
    }

    @Override // ad.m
    public final boolean b() {
        return true;
    }

    @Override // ad.m
    public final String c(SSLSocket sSLSocket) {
        m mVar;
        synchronized (this) {
            if (this.f267a == null && this.f268b.a(sSLSocket)) {
                this.f267a = this.f268b.b(sSLSocket);
            }
            mVar = this.f267a;
        }
        if (mVar != null) {
            return mVar.c(sSLSocket);
        }
        return null;
    }

    @Override // ad.m
    public final void d(SSLSocket sSLSocket, String str, List<? extends w> protocols) {
        m mVar;
        kotlin.jvm.internal.h.f(protocols, "protocols");
        synchronized (this) {
            if (this.f267a == null && this.f268b.a(sSLSocket)) {
                this.f267a = this.f268b.b(sSLSocket);
            }
            mVar = this.f267a;
        }
        if (mVar != null) {
            mVar.d(sSLSocket, str, protocols);
        }
    }
}
