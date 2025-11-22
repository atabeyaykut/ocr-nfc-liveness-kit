package t8;

import android.app.Application;
import com.google.errorprone.annotations.ForOverride;
import zf.d1;

/* loaded from: classes2.dex */
public abstract class b extends Application implements d {

    /* renamed from: a, reason: collision with root package name */
    public volatile c<Object> f15644a;

    @ForOverride
    public abstract d1 a();

    public final void b() {
        if (this.f15644a == null) {
            synchronized (this) {
                if (this.f15644a == null) {
                    a().a(this);
                    if (this.f15644a == null) {
                        throw new IllegalStateException("The AndroidInjector returned from applicationInjector() did not inject the DaggerApplication");
                    }
                }
            }
        }
    }

    @Override // t8.d
    public final c c() {
        b();
        return this.f15644a;
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        b();
    }
}
