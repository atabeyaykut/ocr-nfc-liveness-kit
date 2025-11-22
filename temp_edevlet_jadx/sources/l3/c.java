package l3;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SimpleArrayMap;
import h5.z;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: h, reason: collision with root package name */
    public static int f9339h;

    /* renamed from: i, reason: collision with root package name */
    public static PendingIntent f9340i;

    /* renamed from: j, reason: collision with root package name */
    public static final Pattern f9341j = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)");

    /* renamed from: b, reason: collision with root package name */
    public final Context f9343b;

    /* renamed from: c, reason: collision with root package name */
    public final v f9344c;

    /* renamed from: d, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f9345d;
    public Messenger f;

    /* renamed from: g, reason: collision with root package name */
    public h f9347g;

    /* renamed from: a, reason: collision with root package name */
    public final SimpleArrayMap<String, h5.l<Bundle>> f9342a = new SimpleArrayMap<>();

    /* renamed from: e, reason: collision with root package name */
    public final Messenger f9346e = new Messenger(new e(this, Looper.getMainLooper()));

    public c(@NonNull Context context) {
        this.f9343b = context;
        this.f9344c = new v(context);
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
        scheduledThreadPoolExecutor.setKeepAliveTime(60L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f9345d = scheduledThreadPoolExecutor;
    }

    public static synchronized String b() {
        int r12;
        r12 = f9339h;
        f9339h = r12 + 1;
        return Integer.toString(r12);
    }

    public static synchronized void c(Context context, Intent intent) {
        if (f9340i == null) {
            Intent intent2 = new Intent();
            intent2.setPackage("com.google.example.invalidpackage");
            f9340i = PendingIntent.getBroadcast(context, 0, intent2, i4.a.f7284a);
        }
        intent.putExtra("app", f9340i);
    }

    @AnyThread
    public final z a(Bundle bundle) throws RemoteException {
        String strB = b();
        h5.l<Bundle> lVar = new h5.l<>();
        synchronized (this.f9342a) {
            this.f9342a.put(strB, lVar);
        }
        Intent intent = new Intent();
        intent.setPackage("com.google.android.gms");
        intent.setAction(this.f9344c.a() == 2 ? "com.google.iid.TOKEN_REQUEST" : "com.google.android.c2dm.intent.REGISTER");
        intent.putExtras(bundle);
        c(this.f9343b, intent);
        intent.putExtra("kid", android.support.v4.media.a.i(new StringBuilder(String.valueOf(strB).length() + 5), "|ID|", strB, "|"));
        if (Log.isLoggable("Rpc", 3)) {
            String strValueOf = String.valueOf(intent.getExtras());
            StringBuilder sb2 = new StringBuilder(strValueOf.length() + 8);
            sb2.append("Sending ");
            sb2.append(strValueOf);
            Log.d("Rpc", sb2.toString());
        }
        intent.putExtra("google.messenger", this.f9346e);
        if (this.f != null || this.f9347g != null) {
            Message messageObtain = Message.obtain();
            messageObtain.obj = intent;
            try {
                Messenger messenger = this.f;
                if (messenger != null) {
                    messenger.send(messageObtain);
                } else {
                    Messenger messenger2 = this.f9347g.f9349a;
                    messenger2.getClass();
                    messenger2.send(messageObtain);
                }
            } catch (RemoteException unused) {
                if (Log.isLoggable("Rpc", 3)) {
                    Log.d("Rpc", "Messenger failed, fallback to startService");
                }
            }
        } else if (this.f9344c.a() == 2) {
            this.f9343b.sendBroadcast(intent);
        } else {
            this.f9343b.startService(intent);
        }
        lVar.f6841a.o(y.f9389a, new g0.g(this, strB, this.f9345d.schedule(new x(0, lVar), 30L, TimeUnit.SECONDS)));
        return lVar.f6841a;
    }

    public final void d(@Nullable Bundle bundle, String str) {
        synchronized (this.f9342a) {
            h5.l<Bundle> lVarRemove = this.f9342a.remove(str);
            if (lVarRemove != null) {
                lVarRemove.b(bundle);
            } else {
                String strValueOf = String.valueOf(str);
                Log.w("Rpc", strValueOf.length() != 0 ? "Missing callback for ".concat(strValueOf) : new String("Missing callback for "));
            }
        }
    }
}
