package x0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import x0.q;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f18941a;

    /* renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    public final HashMap f18942b;

    /* renamed from: c, reason: collision with root package name */
    public final ReferenceQueue<q<?>> f18943c;

    /* renamed from: d, reason: collision with root package name */
    public q.a f18944d;

    @VisibleForTesting
    public static final class a extends WeakReference<q<?>> {

        /* renamed from: a, reason: collision with root package name */
        public final v0.f f18945a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f18946b;

        /* renamed from: c, reason: collision with root package name */
        @Nullable
        public w<?> f18947c;

        public a(@NonNull v0.f fVar, @NonNull q<?> qVar, @NonNull ReferenceQueue<? super q<?>> referenceQueue, boolean z10) {
            w<?> wVar;
            super(qVar, referenceQueue);
            q1.l.b(fVar);
            this.f18945a = fVar;
            if (qVar.f19074a && z10) {
                wVar = qVar.f19076c;
                q1.l.b(wVar);
            } else {
                wVar = null;
            }
            this.f18947c = wVar;
            this.f18946b = qVar.f19074a;
        }
    }

    public c() {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new x0.a());
        this.f18942b = new HashMap();
        this.f18943c = new ReferenceQueue<>();
        this.f18941a = false;
        executorServiceNewSingleThreadExecutor.execute(new b(this));
    }

    public final synchronized void a(v0.f fVar, q<?> qVar) {
        a aVar = (a) this.f18942b.put(fVar, new a(fVar, qVar, this.f18943c, this.f18941a));
        if (aVar != null) {
            aVar.f18947c = null;
            aVar.clear();
        }
    }

    public final void b(@NonNull a aVar) {
        w<?> wVar;
        synchronized (this) {
            this.f18942b.remove(aVar.f18945a);
            if (aVar.f18946b && (wVar = aVar.f18947c) != null) {
                this.f18944d.a(aVar.f18945a, new q<>(wVar, true, false, aVar.f18945a, this.f18944d));
            }
        }
    }
}
