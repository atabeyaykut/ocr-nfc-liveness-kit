package vc;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import m9.p;
import m9.v;
import rc.e0;
import rc.r;

/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public List<? extends Proxy> f18548a;

    /* renamed from: b, reason: collision with root package name */
    public int f18549b;

    /* renamed from: c, reason: collision with root package name */
    public List<? extends InetSocketAddress> f18550c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f18551d;

    /* renamed from: e, reason: collision with root package name */
    public final rc.a f18552e;
    public final com.airbnb.epoxy.a f;

    /* renamed from: g, reason: collision with root package name */
    public final rc.d f18553g;

    /* renamed from: h, reason: collision with root package name */
    public final rc.n f18554h;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public int f18555a;

        /* renamed from: b, reason: collision with root package name */
        public final List<e0> f18556b;

        public a(ArrayList arrayList) {
            this.f18556b = arrayList;
        }

        public final boolean a() {
            return this.f18555a < this.f18556b.size();
        }
    }

    public m(rc.a address, com.airbnb.epoxy.a routeDatabase, e call, rc.n eventListener) {
        kotlin.jvm.internal.h.f(address, "address");
        kotlin.jvm.internal.h.f(routeDatabase, "routeDatabase");
        kotlin.jvm.internal.h.f(call, "call");
        kotlin.jvm.internal.h.f(eventListener, "eventListener");
        this.f18552e = address;
        this.f = routeDatabase;
        this.f18553g = call;
        this.f18554h = eventListener;
        v vVar = v.f10173a;
        this.f18548a = vVar;
        this.f18550c = vVar;
        this.f18551d = new ArrayList();
        Proxy proxy = address.f14381j;
        r url = address.f14373a;
        n nVar = new n(this, proxy, url);
        kotlin.jvm.internal.h.f(url, "url");
        this.f18548a = nVar.invoke();
        this.f18549b = 0;
    }

    public final boolean a() {
        return (this.f18549b < this.f18548a.size()) || (this.f18551d.isEmpty() ^ true);
    }

    public final a b() throws IOException {
        String domainName;
        int port;
        boolean zContains;
        String str;
        if (!a()) {
            throw new NoSuchElementException();
        }
        ArrayList arrayList = new ArrayList();
        do {
            if (!(this.f18549b < this.f18548a.size())) {
                break;
            }
            boolean z10 = this.f18549b < this.f18548a.size();
            rc.a aVar = this.f18552e;
            if (!z10) {
                throw new SocketException("No route to " + aVar.f14373a.f14520e + "; exhausted proxy configurations: " + this.f18548a);
            }
            List<? extends Proxy> list = this.f18548a;
            int r52 = this.f18549b;
            this.f18549b = r52 + 1;
            Proxy proxy = list.get(r52);
            ArrayList arrayList2 = new ArrayList();
            this.f18550c = arrayList2;
            if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
                r rVar = aVar.f14373a;
                domainName = rVar.f14520e;
                port = rVar.f;
            } else {
                SocketAddress socketAddressAddress = proxy.address();
                if (!(socketAddressAddress instanceof InetSocketAddress)) {
                    throw new IllegalArgumentException(("Proxy.address() is not an InetSocketAddress: " + socketAddressAddress.getClass()).toString());
                }
                InetSocketAddress socketHost = (InetSocketAddress) socketAddressAddress;
                kotlin.jvm.internal.h.f(socketHost, "$this$socketHost");
                InetAddress address = socketHost.getAddress();
                if (address != null) {
                    domainName = address.getHostAddress();
                    str = "address.hostAddress";
                } else {
                    domainName = socketHost.getHostName();
                    str = "hostName";
                }
                kotlin.jvm.internal.h.e(domainName, str);
                port = socketHost.getPort();
            }
            if (1 > port || 65535 < port) {
                throw new SocketException("No route to " + domainName + ':' + port + "; port is out of range");
            }
            if (proxy.type() == Proxy.Type.SOCKS) {
                arrayList2.add(InetSocketAddress.createUnresolved(domainName, port));
            } else {
                this.f18554h.getClass();
                rc.d call = this.f18553g;
                kotlin.jvm.internal.h.f(call, "call");
                kotlin.jvm.internal.h.f(domainName, "domainName");
                List<InetAddress> listB = aVar.f14376d.b(domainName);
                if (listB.isEmpty()) {
                    throw new UnknownHostException(aVar.f14376d + " returned no addresses for " + domainName);
                }
                Iterator<InetAddress> it = listB.iterator();
                while (it.hasNext()) {
                    arrayList2.add(new InetSocketAddress(it.next(), port));
                }
            }
            Iterator<? extends InetSocketAddress> it2 = this.f18550c.iterator();
            while (it2.hasNext()) {
                e0 e0Var = new e0(this.f18552e, proxy, it2.next());
                com.airbnb.epoxy.a aVar2 = this.f;
                synchronized (aVar2) {
                    zContains = ((Set) aVar2.f2536b).contains(e0Var);
                }
                if (zContains) {
                    this.f18551d.add(e0Var);
                } else {
                    arrayList.add(e0Var);
                }
            }
        } while (!(!arrayList.isEmpty()));
        if (arrayList.isEmpty()) {
            p.T0(this.f18551d, arrayList);
            this.f18551d.clear();
        }
        return new a(arrayList);
    }
}
