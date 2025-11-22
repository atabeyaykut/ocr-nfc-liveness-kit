package r3;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.IBinder;
import android.os.StrictMode;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class h1 implements ServiceConnection, k1 {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f13986a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public int f13987b = 2;

    /* renamed from: c, reason: collision with root package name */
    public boolean f13988c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public IBinder f13989d;

    /* renamed from: e, reason: collision with root package name */
    public final f1 f13990e;
    public ComponentName f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ j1 f13991g;

    public h1(j1 j1Var, f1 f1Var) {
        this.f13991g = j1Var;
        this.f13990e = f1Var;
    }

    public final void a(String str, @Nullable Executor executor) {
        this.f13987b = 3;
        StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
        if (Build.VERSION.SDK_INT >= 31) {
            StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder(vmPolicy).permitUnsafeIntentLaunch().build());
        }
        try {
            j1 j1Var = this.f13991g;
            v3.a aVar = j1Var.f14007g;
            Context context = j1Var.f14006e;
            boolean zD = aVar.d(context, str, this.f13990e.a(context), this, this.f13990e.f13965c, executor);
            this.f13988c = zD;
            if (zD) {
                this.f13991g.f.sendMessageDelayed(this.f13991g.f.obtainMessage(1, this.f13990e), this.f13991g.f14009i);
            } else {
                this.f13987b = 2;
                try {
                    j1 j1Var2 = this.f13991g;
                    j1Var2.f14007g.c(j1Var2.f14006e, this);
                } catch (IllegalArgumentException unused) {
                }
            }
        } finally {
            StrictMode.setVmPolicy(vmPolicy);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.f13991g.f14005d) {
            this.f13991g.f.removeMessages(1, this.f13990e);
            this.f13989d = iBinder;
            this.f = componentName;
            Iterator it = this.f13986a.values().iterator();
            while (it.hasNext()) {
                ((ServiceConnection) it.next()).onServiceConnected(componentName, iBinder);
            }
            this.f13987b = 1;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.f13991g.f14005d) {
            this.f13991g.f.removeMessages(1, this.f13990e);
            this.f13989d = null;
            this.f = componentName;
            Iterator it = this.f13986a.values().iterator();
            while (it.hasNext()) {
                ((ServiceConnection) it.next()).onServiceDisconnected(componentName);
            }
            this.f13987b = 2;
        }
    }
}
