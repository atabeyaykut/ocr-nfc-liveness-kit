package o;

import android.annotation.SuppressLint;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import kotlin.jvm.internal.h;
import o.f;

@SuppressLint({"MissingPermission"})
/* loaded from: classes.dex */
public final class g implements f {

    /* renamed from: a, reason: collision with root package name */
    public final ConnectivityManager f11039a;

    /* renamed from: b, reason: collision with root package name */
    public final f.a f11040b;

    /* renamed from: c, reason: collision with root package name */
    public final a f11041c;

    public static final class a extends ConnectivityManager.NetworkCallback {
        public a() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onAvailable(Network network) {
            g.a(g.this, network, true);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onLost(Network network) {
            g.a(g.this, network, false);
        }
    }

    public g(ConnectivityManager connectivityManager, f.a aVar) {
        this.f11039a = connectivityManager;
        this.f11040b = aVar;
        a aVar2 = new a();
        this.f11041c = aVar2;
        connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().addCapability(12).build(), aVar2);
    }

    public static final void a(g gVar, Network network, boolean z10) {
        boolean z11;
        Network[] allNetworks = gVar.f11039a.getAllNetworks();
        int length = allNetworks.length;
        boolean z12 = false;
        int r32 = 0;
        while (true) {
            if (r32 >= length) {
                break;
            }
            Network network2 = allNetworks[r32];
            r32++;
            if (h.a(network2, network)) {
                z11 = z10;
            } else {
                NetworkCapabilities networkCapabilities = gVar.f11039a.getNetworkCapabilities(network2);
                z11 = networkCapabilities != null && networkCapabilities.hasCapability(12);
            }
            if (z11) {
                z12 = true;
                break;
            }
        }
        gVar.f11040b.a(z12);
    }

    @Override // o.f
    public final boolean b() {
        ConnectivityManager connectivityManager = this.f11039a;
        Network[] allNetworks = connectivityManager.getAllNetworks();
        int length = allNetworks.length;
        int r42 = 0;
        while (r42 < length) {
            Network network = allNetworks[r42];
            r42++;
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(network);
            if (networkCapabilities != null && networkCapabilities.hasCapability(12)) {
                return true;
            }
        }
        return false;
    }

    @Override // o.f
    public final void shutdown() {
        this.f11039a.unregisterNetworkCallback(this.f11041c);
    }
}
