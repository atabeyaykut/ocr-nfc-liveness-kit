package c5;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.MainThread;
import androidx.annotation.WorkerThread;

/* loaded from: classes.dex */
public final class l3 extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final o7 f1694a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f1695b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1696c;

    public l3(o7 o7Var) {
        this.f1694a = o7Var;
    }

    @WorkerThread
    public final void a() {
        o7 o7Var = this.f1694a;
        o7Var.b();
        o7Var.l().b();
        o7Var.l().b();
        if (this.f1695b) {
            o7Var.m().f1513p.a("Unregistering connectivity change receiver");
            this.f1695b = false;
            this.f1696c = false;
            try {
                o7Var.f1828m.f1628a.unregisterReceiver(this);
            } catch (IllegalArgumentException e10) {
                o7Var.m().f.b(e10, "Failed to unregister the network broadcast receiver");
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    @MainThread
    public final void onReceive(Context context, Intent intent) throws IllegalStateException {
        o7 o7Var = this.f1694a;
        o7Var.b();
        String action = intent.getAction();
        o7Var.m().f1513p.b(action, "NetworkBroadcastReceiver received action");
        if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            o7Var.m().f1508j.b(action, "NetworkBroadcastReceiver received unknown action");
            return;
        }
        j3 j3Var = o7Var.f1819b;
        o7.I(j3Var);
        boolean zG = j3Var.g();
        if (this.f1696c != zG) {
            this.f1696c = zG;
            o7Var.l().p(new k3(this, zG));
        }
    }
}
