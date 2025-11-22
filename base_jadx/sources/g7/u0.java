package g7;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class u0 {

    /* renamed from: a, reason: collision with root package name */
    public static final long f5936a = TimeUnit.MINUTES.toMillis(1);

    /* renamed from: b, reason: collision with root package name */
    public static final Object f5937b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static g5.a f5938c;

    public static void a(Context context) {
        if (f5938c == null) {
            g5.a aVar = new g5.a(context);
            f5938c = aVar;
            synchronized (aVar.f5811a) {
                aVar.f5816g = true;
            }
        }
    }

    public static void b(@NonNull Intent intent) {
        synchronized (f5937b) {
            try {
                if (f5938c != null && intent.getBooleanExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false)) {
                    intent.putExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false);
                    f5938c.c();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static ComponentName c(@NonNull Context context, @NonNull Intent intent) {
        synchronized (f5937b) {
            a(context);
            boolean booleanExtra = intent.getBooleanExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false);
            intent.putExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", true);
            ComponentName componentNameStartService = context.startService(intent);
            if (componentNameStartService == null) {
                return null;
            }
            if (!booleanExtra) {
                f5938c.a(f5936a);
            }
            return componentNameStartService;
        }
    }
}
