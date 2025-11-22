package r3;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import androidx.core.os.EnvironmentCompat;

/* loaded from: classes.dex */
public final class i1 implements Handler.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ j1 f13998a;

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int r12 = message.what;
        if (r12 == 0) {
            synchronized (this.f13998a.f14005d) {
                try {
                    f1 f1Var = (f1) message.obj;
                    h1 h1Var = (h1) this.f13998a.f14005d.get(f1Var);
                    if (h1Var != null && h1Var.f13986a.isEmpty()) {
                        if (h1Var.f13988c) {
                            h1Var.f13991g.f.removeMessages(1, h1Var.f13990e);
                            j1 j1Var = h1Var.f13991g;
                            j1Var.f14007g.c(j1Var.f14006e, h1Var);
                            h1Var.f13988c = false;
                            h1Var.f13987b = 2;
                        }
                        this.f13998a.f14005d.remove(f1Var);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return true;
        }
        if (r12 != 1) {
            return false;
        }
        synchronized (this.f13998a.f14005d) {
            f1 f1Var2 = (f1) message.obj;
            h1 h1Var2 = (h1) this.f13998a.f14005d.get(f1Var2);
            if (h1Var2 != null && h1Var2.f13987b == 3) {
                String strValueOf = String.valueOf(f1Var2);
                Log.e("GmsClientSupervisor", "Timeout waiting for ServiceConnection callback ".concat(strValueOf), new Exception());
                ComponentName componentName = h1Var2.f;
                if (componentName == null) {
                    f1Var2.getClass();
                    componentName = null;
                }
                if (componentName == null) {
                    String str = f1Var2.f13964b;
                    r.i(str);
                    componentName = new ComponentName(str, EnvironmentCompat.MEDIA_UNKNOWN);
                }
                h1Var2.onServiceDisconnected(componentName);
            }
        }
        return true;
    }
}
