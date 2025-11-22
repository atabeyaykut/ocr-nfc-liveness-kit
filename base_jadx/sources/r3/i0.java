package r3;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.concurrent.TimeUnit;
import n3.e;

/* loaded from: classes.dex */
public final class i0 implements e.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ n3.e f13995a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ h5.l f13996b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ q f13997c;

    public i0(BasePendingResult basePendingResult, h5.l lVar, a6.a aVar) {
        this.f13995a = basePendingResult;
        this.f13996b = lVar;
        this.f13997c = aVar;
    }

    @Override // n3.e.a
    public final void a(Status status) {
        if (!(status.f2979b <= 0)) {
            this.f13996b.a(b.a(status));
            return;
        }
        n3.e eVar = this.f13995a;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        BasePendingResult basePendingResult = (BasePendingResult) eVar;
        r.k("Result has already been consumed.", true ^ basePendingResult.f2989g);
        try {
            if (!basePendingResult.f2985b.await(0L, timeUnit)) {
                basePendingResult.c(Status.f2976j);
            }
        } catch (InterruptedException unused) {
            basePendingResult.c(Status.f2974g);
        }
        r.k("Result is not ready.", basePendingResult.d());
        n3.h hVarF = basePendingResult.f();
        h5.l lVar = this.f13996b;
        this.f13997c.b(hVarF);
        lVar.b(null);
    }
}
