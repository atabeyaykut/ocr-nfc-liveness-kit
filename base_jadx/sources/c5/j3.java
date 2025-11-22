package c5;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;

/* loaded from: classes.dex */
public final class j3 extends j7 {
    public j3(o7 o7Var) {
        super(o7Var);
    }

    @Override // c5.j7
    public final void e() {
    }

    public final boolean g() {
        c();
        ConnectivityManager connectivityManager = (ConnectivityManager) ((i4) this.f2115a).f1628a.getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = null;
        if (connectivityManager != null) {
            try {
                activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            } catch (SecurityException unused) {
            }
        }
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }
}
