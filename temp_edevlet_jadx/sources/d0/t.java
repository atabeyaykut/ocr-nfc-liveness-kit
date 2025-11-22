package d0;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.airbnb.lottie.LottieAnimationView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

/* loaded from: classes.dex */
public final class t<T> {

    /* renamed from: e, reason: collision with root package name */
    public static final ExecutorService f4628e = Executors.newCachedThreadPool();

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashSet f4629a;

    /* renamed from: b, reason: collision with root package name */
    public final LinkedHashSet f4630b;

    /* renamed from: c, reason: collision with root package name */
    public final Handler f4631c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public volatile r<T> f4632d;

    public class a extends FutureTask<r<T>> {
        public a(Callable<r<T>> callable) {
            super(callable);
        }

        @Override // java.util.concurrent.FutureTask
        public final void done() {
            t tVar = t.this;
            if (isCancelled()) {
                return;
            }
            try {
                tVar.d(get());
            } catch (InterruptedException | ExecutionException e10) {
                tVar.d(new r<>(e10));
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public t() {
        throw null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public t(Callable<r<T>> callable, boolean z10) {
        this.f4629a = new LinkedHashSet(1);
        this.f4630b = new LinkedHashSet(1);
        this.f4631c = new Handler(Looper.getMainLooper());
        this.f4632d = null;
        if (!z10) {
            f4628e.execute(new a(callable));
            return;
        }
        try {
            d(callable.call());
        } catch (Throwable th2) {
            d(new r<>(th2));
        }
    }

    public static void a(t tVar, Object obj) {
        synchronized (tVar) {
            Iterator it = new ArrayList(tVar.f4629a).iterator();
            while (it.hasNext()) {
                ((o) it.next()).onResult(obj);
            }
        }
    }

    public final synchronized void b(o oVar) {
        if (this.f4632d != null && this.f4632d.f4626b != null) {
            oVar.onResult(this.f4632d.f4626b);
        }
        this.f4630b.add(oVar);
    }

    public final synchronized void c(LottieAnimationView.c cVar) {
        this.f4630b.remove(cVar);
    }

    public final void d(@Nullable r<T> rVar) {
        if (this.f4632d != null) {
            throw new IllegalStateException("A task may only be set once.");
        }
        this.f4632d = rVar;
        this.f4631c.post(new s(this));
    }
}
