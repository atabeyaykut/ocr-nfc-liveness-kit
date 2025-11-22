package y6;

import android.content.Context;
import androidx.annotation.NonNull;
import c6.t;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class c implements e {

    /* renamed from: b, reason: collision with root package name */
    public static final a f19321b = new ThreadFactory() { // from class: y6.a
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return new Thread(runnable, "heartbeat-information-executor");
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public final a7.b<f> f19322a;

    public c(final Context context) {
        t tVar = new t(new a7.b() { // from class: y6.b
            @Override // a7.b
            public final Object get() {
                f fVar;
                Context context2 = context;
                f fVar2 = f.f19323b;
                synchronized (f.class) {
                    if (f.f19323b == null) {
                        f.f19323b = new f(context2);
                    }
                    fVar = f.f19323b;
                }
                return fVar;
            }
        });
        new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), f19321b);
        this.f19322a = tVar;
    }

    @Override // y6.e
    @NonNull
    public final int a(@NonNull String str) {
        boolean zA;
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean zA2 = this.f19322a.get().a(jCurrentTimeMillis, str);
        f fVar = this.f19322a.get();
        synchronized (fVar) {
            zA = fVar.a(jCurrentTimeMillis, "fire-global");
        }
        if (zA2 && zA) {
            return 4;
        }
        if (zA) {
            return 3;
        }
        return zA2 ? 2 : 1;
    }
}
