package rc;

import java.net.InetSocketAddress;
import java.net.Proxy;

/* loaded from: classes2.dex */
public final class e0 {

    /* renamed from: a, reason: collision with root package name */
    public final a f14434a;

    /* renamed from: b, reason: collision with root package name */
    public final Proxy f14435b;

    /* renamed from: c, reason: collision with root package name */
    public final InetSocketAddress f14436c;

    public e0(a address, Proxy proxy, InetSocketAddress socketAddress) {
        kotlin.jvm.internal.h.f(address, "address");
        kotlin.jvm.internal.h.f(socketAddress, "socketAddress");
        this.f14434a = address;
        this.f14435b = proxy;
        this.f14436c = socketAddress;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof e0) {
            e0 e0Var = (e0) obj;
            if (kotlin.jvm.internal.h.a(e0Var.f14434a, this.f14434a) && kotlin.jvm.internal.h.a(e0Var.f14435b, this.f14435b) && kotlin.jvm.internal.h.a(e0Var.f14436c, this.f14436c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f14436c.hashCode() + ((this.f14435b.hashCode() + ((this.f14434a.hashCode() + 527) * 31)) * 31);
    }

    public final String toString() {
        return "Route{" + this.f14436c + '}';
    }
}
