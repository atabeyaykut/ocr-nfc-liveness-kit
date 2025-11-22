package l3;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.MainThread;
import androidx.annotation.Nullable;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class o implements ServiceConnection {

    /* renamed from: c, reason: collision with root package name */
    public p f9368c;
    public final /* synthetic */ u f;

    /* renamed from: a, reason: collision with root package name */
    public int f9366a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final Messenger f9367b = new Messenger(new i4.b(Looper.getMainLooper(), new Handler.Callback() { // from class: l3.j
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            o oVar = this.f9355a;
            int r12 = message.arg1;
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                StringBuilder sb2 = new StringBuilder(41);
                sb2.append("Received response to request: ");
                sb2.append(r12);
                Log.d("MessengerIpcClient", sb2.toString());
            }
            synchronized (oVar) {
                r<?> rVar = oVar.f9370e.get(r12);
                if (rVar == null) {
                    StringBuilder sb3 = new StringBuilder(50);
                    sb3.append("Received response for unknown request: ");
                    sb3.append(r12);
                    Log.w("MessengerIpcClient", sb3.toString());
                    return true;
                }
                oVar.f9370e.remove(r12);
                oVar.c();
                Bundle data = message.getData();
                if (data.getBoolean("unsupported", false)) {
                    rVar.c(new s("Not supported by GmsCore", null));
                    return true;
                }
                rVar.a(data);
                return true;
            }
        }
    }));

    /* renamed from: d, reason: collision with root package name */
    public final ArrayDeque f9369d = new ArrayDeque();

    /* renamed from: e, reason: collision with root package name */
    public final SparseArray<r<?>> f9370e = new SparseArray<>();

    public final synchronized void a(int r22, @Nullable String str) {
        b(r22, str, null);
    }

    public final synchronized void b(int r52, @Nullable String str, @Nullable SecurityException securityException) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(str);
            Log.d("MessengerIpcClient", strValueOf.length() != 0 ? "Disconnected: ".concat(strValueOf) : new String("Disconnected: "));
        }
        int r53 = this.f9366a;
        if (r53 == 0) {
            throw new IllegalStateException();
        }
        if (r53 != 1 && r53 != 2) {
            if (r53 != 3) {
                return;
            }
            this.f9366a = 4;
            return;
        }
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Unbinding service");
        }
        this.f9366a = 4;
        v3.a.b().c(this.f.f9378a, this);
        s sVar = new s(str, securityException);
        Iterator it = this.f9369d.iterator();
        while (it.hasNext()) {
            ((r) it.next()).c(sVar);
        }
        this.f9369d.clear();
        for (int r6 = 0; r6 < this.f9370e.size(); r6++) {
            this.f9370e.valueAt(r6).c(sVar);
        }
        this.f9370e.clear();
    }

    public final synchronized void c() {
        if (this.f9366a == 2 && this.f9369d.isEmpty() && this.f9370e.size() == 0) {
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
            }
            this.f9366a = 3;
            v3.a.b().c(this.f.f9378a, this);
        }
    }

    public final synchronized boolean d(r<?> rVar) {
        int r02 = this.f9366a;
        int r22 = 0;
        int r32 = 2;
        if (r02 != 0) {
            if (r02 == 1) {
                this.f9369d.add(rVar);
                return true;
            }
            if (r02 != 2) {
                return false;
            }
            this.f9369d.add(rVar);
            this.f.f9379b.execute(new l(r22, this));
            return true;
        }
        this.f9369d.add(rVar);
        r3.r.l(this.f9366a == 0);
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Starting bind to GmsCore");
        }
        this.f9366a = 1;
        Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
        intent.setPackage("com.google.android.gms");
        try {
            if (v3.a.b().a(this.f.f9378a, intent, this, 1)) {
                this.f.f9379b.schedule(new x3.b(r32, this), 30L, TimeUnit.SECONDS);
            } else {
                a(0, "Unable to bind to service");
            }
        } catch (SecurityException e10) {
            b(0, "Unable to bind to service", e10);
        }
        return true;
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service connected");
        }
        this.f.f9379b.execute(new m(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service disconnected");
        }
        this.f.f9379b.execute(new k(0, this));
    }
}
