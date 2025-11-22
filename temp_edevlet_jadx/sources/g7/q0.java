package g7;

import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class q0 {

    /* renamed from: d, reason: collision with root package name */
    @GuardedBy("TopicsStore.class")
    public static WeakReference<q0> f5903d;

    /* renamed from: a, reason: collision with root package name */
    public final SharedPreferences f5904a;

    /* renamed from: b, reason: collision with root package name */
    public n0 f5905b;

    /* renamed from: c, reason: collision with root package name */
    public final Executor f5906c;

    public q0(SharedPreferences sharedPreferences, ScheduledExecutorService scheduledExecutorService) {
        this.f5906c = scheduledExecutorService;
        this.f5904a = sharedPreferences;
    }

    @Nullable
    public final synchronized p0 a() {
        p0 p0Var;
        String strB = this.f5905b.b();
        Pattern pattern = p0.f5898d;
        if (!TextUtils.isEmpty(strB)) {
            String[] strArrSplit = strB.split("!", -1);
            if (strArrSplit.length == 2) {
                p0Var = new p0(strArrSplit[0], strArrSplit[1]);
            }
        }
        p0Var = null;
        return p0Var;
    }

    @WorkerThread
    public final synchronized void b() {
        this.f5905b = n0.a(this.f5904a, this.f5906c);
    }

    public final synchronized void c(p0 p0Var) {
        this.f5905b.c(p0Var.f5901c);
    }
}
