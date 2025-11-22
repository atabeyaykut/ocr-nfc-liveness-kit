package j3;

import android.util.Log;
import androidx.loader.content.AsyncTaskLoader;
import com.google.android.gms.auth.api.signin.internal.SignInHubActivity;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class f extends AsyncTaskLoader<Void> {

    /* renamed from: a, reason: collision with root package name */
    public final Semaphore f7988a;

    /* renamed from: b, reason: collision with root package name */
    public final Set<n3.d> f7989b;

    public f(SignInHubActivity signInHubActivity, Set set) {
        super(signInHubActivity);
        this.f7988a = new Semaphore(0);
        this.f7989b = set;
    }

    @Override // androidx.loader.content.AsyncTaskLoader
    public final Void loadInBackground() throws InterruptedException {
        Iterator<n3.d> it = this.f7989b.iterator();
        if (it.hasNext()) {
            it.next().getClass();
            throw new UnsupportedOperationException();
        }
        try {
            this.f7988a.tryAcquire(0, 5L, TimeUnit.SECONDS);
            return null;
        } catch (InterruptedException e10) {
            Log.i("GACSignInLoader", "Unexpected InterruptedException", e10);
            Thread.currentThread().interrupt();
            return null;
        }
    }

    @Override // androidx.loader.content.Loader
    public final void onStartLoading() {
        this.f7988a.drainPermits();
        forceLoad();
    }
}
