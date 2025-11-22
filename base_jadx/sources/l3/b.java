package l3;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import h5.z;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public abstract class b extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final ExecutorService f9338a;

    public b() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new x3.a("firebase-iid-executor"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f9338a = Executors.unconfigurableExecutorService(threadPoolExecutor);
    }

    @WorkerThread
    public abstract int a(@NonNull Context context, @NonNull a aVar);

    @WorkerThread
    public void b(@NonNull Bundle bundle) {
    }

    @WorkerThread
    public final int c(@NonNull Context context, @NonNull Intent intent) {
        z zVarC;
        if (intent.getExtras() == null) {
            return 500;
        }
        String stringExtra = intent.getStringExtra("google.message_id");
        if (TextUtils.isEmpty(stringExtra)) {
            zVarC = h5.n.e(null);
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("google.message_id", stringExtra);
            u uVarA = u.a(context);
            zVarC = uVarA.c(new q(uVarA.b(), bundle));
        }
        int r52 = a(context, new a(intent));
        try {
            h5.n.b(zVarC, TimeUnit.SECONDS.toMillis(1L), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e10) {
            String strValueOf = String.valueOf(e10);
            StringBuilder sb2 = new StringBuilder(strValueOf.length() + 20);
            sb2.append("Message ack failed: ");
            sb2.append(strValueOf);
            Log.w("CloudMessagingReceiver", sb2.toString());
        }
        return r52;
    }

    @WorkerThread
    public final int d(@NonNull Context context, @NonNull Intent intent) throws PendingIntent.CanceledException {
        PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra("pending_intent");
        if (pendingIntent != null) {
            try {
                pendingIntent.send();
            } catch (PendingIntent.CanceledException unused) {
                Log.e("CloudMessagingReceiver", "Notification pending intent canceled");
            }
        }
        Bundle extras = intent.getExtras();
        if (extras != null) {
            extras.remove("pending_intent");
        } else {
            extras = new Bundle();
        }
        if ("com.google.firebase.messaging.NOTIFICATION_DISMISS".equals(intent.getAction())) {
            b(extras);
            return -1;
        }
        Log.e("CloudMessagingReceiver", "Unknown notification action");
        return 500;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(@NonNull Context context, @NonNull Intent intent) {
        if (intent == null) {
            return;
        }
        this.f9338a.execute(new i(this, intent, context, isOrderedBroadcast(), goAsync()));
    }
}
