package a3;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import c3.b;
import java.util.Objects;
import u2.s;

/* loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m f64a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s f65b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f66c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Runnable f67d;

    public /* synthetic */ f(m mVar, u2.j jVar, int r32, Runnable runnable) {
        this.f64a = mVar;
        this.f65b = jVar;
        this.f66c = r32;
        this.f67d = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final s sVar = this.f65b;
        final int r12 = this.f66c;
        Runnable runnable = this.f67d;
        final m mVar = this.f64a;
        c3.b bVar = mVar.f;
        int r52 = 1;
        try {
            try {
                b3.d dVar = mVar.f86c;
                Objects.requireNonNull(dVar);
                bVar.a(new androidx.camera.core.impl.utils.futures.a(r52, dVar));
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) mVar.f84a.getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                    mVar.a(sVar, r12);
                } else {
                    bVar.a(new b.a() { // from class: a3.g
                        @Override // c3.b.a
                        public final Object execute() {
                            mVar.f87d.b(sVar, r12 + 1);
                            return null;
                        }
                    });
                }
            } catch (c3.a unused) {
                mVar.f87d.b(sVar, r12 + 1);
            }
        } finally {
            runnable.run();
        }
    }
}
