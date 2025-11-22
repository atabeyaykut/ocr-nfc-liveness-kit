package vc;

import java.net.Proxy;
import java.net.URI;
import java.util.List;
import rc.r;

/* loaded from: classes2.dex */
public final class n extends kotlin.jvm.internal.j implements x9.a<List<? extends Proxy>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m f18557a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Proxy f18558b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ r f18559c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(m mVar, Proxy proxy, r rVar) {
        super(0);
        this.f18557a = mVar;
        this.f18558b = proxy;
        this.f18559c = rVar;
    }

    @Override // x9.a
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final List<Proxy> invoke() {
        Proxy proxy = this.f18558b;
        if (proxy != null) {
            return b8.f.S(proxy);
        }
        URI r02 = this.f18559c.g();
        if (r02.getHost() == null) {
            return sc.c.k(Proxy.NO_PROXY);
        }
        List<Proxy> listSelect = this.f18557a.f18552e.f14382k.select(r02);
        List<Proxy> list = listSelect;
        return list == null || list.isEmpty() ? sc.c.k(Proxy.NO_PROXY) : sc.c.v(listSelect);
    }
}
