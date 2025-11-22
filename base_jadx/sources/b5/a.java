package b5;

import android.os.BadParcelableException;
import android.os.NetworkOnMainThreadException;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.NonNull;
import c5.b5;
import com.google.android.gms.internal.measurement.d2;
import com.google.android.gms.internal.measurement.p1;
import com.google.android.gms.internal.measurement.z1;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final d2 f1141a;

    /* renamed from: b5.a$a, reason: collision with other inner class name */
    public interface InterfaceC0045a extends b5 {
    }

    public a(d2 d2Var) {
        this.f1141a = d2Var;
    }

    public final void a(@NonNull InterfaceC0045a interfaceC0045a) {
        d2 d2Var = this.f1141a;
        d2Var.getClass();
        synchronized (d2Var.f3437c) {
            for (int r22 = 0; r22 < d2Var.f3437c.size(); r22++) {
                if (interfaceC0045a.equals(((Pair) d2Var.f3437c.get(r22)).first)) {
                    Log.w("FA", "OnEventListener already registered.");
                    return;
                }
            }
            z1 z1Var = new z1(interfaceC0045a);
            d2Var.f3437c.add(new Pair(interfaceC0045a, z1Var));
            if (d2Var.f != null) {
                try {
                    d2Var.f.registerOnMeasurementEventListener(z1Var);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                    Log.w("FA", "Failed to register event listener on calling thread. Trying again on the dynamite thread.");
                }
            }
            d2Var.b(new p1(d2Var, z1Var, 1));
        }
    }
}
