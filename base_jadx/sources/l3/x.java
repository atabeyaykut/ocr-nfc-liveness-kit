package l3;

import android.util.Log;
import java.io.IOException;

/* loaded from: classes.dex */
public final /* synthetic */ class x implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9387a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f9388b;

    public /* synthetic */ x(int r12, Object obj) {
        this.f9387a = r12;
        this.f9388b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9387a) {
            case 0:
                if (((h5.l) this.f9388b).c(new IOException("TIMEOUT"))) {
                    Log.w("Rpc", "No response");
                    return;
                }
                return;
            default:
                synchronized (((h5.t) this.f9388b).f6863c) {
                    Object obj = ((h5.t) this.f9388b).f6864d;
                    if (((h5.d) obj) != null) {
                        ((h5.d) obj).a();
                    }
                }
                return;
        }
    }
}
