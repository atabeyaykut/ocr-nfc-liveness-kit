package h6;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class o implements h5.j<p6.a, Void> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Executor f6944a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p f6945b;

    public o(p pVar, Executor executor) {
        this.f6945b = pVar;
        this.f6944a = executor;
    }

    @Override // h5.j
    @NonNull
    public final h5.k<Void> c(@Nullable p6.a aVar) throws Exception {
        if (aVar == null) {
            Log.w("FirebaseCrashlytics", "Received null app settings at app startup. Cannot send cached reports", null);
        } else {
            p pVar = this.f6945b;
            t.b(pVar.f6950b.f6953b);
            q qVar = pVar.f6950b;
            qVar.f6953b.f6968k.d(this.f6944a);
            qVar.f6953b.f6972o.d(null);
        }
        return h5.n.e(null);
    }
}
