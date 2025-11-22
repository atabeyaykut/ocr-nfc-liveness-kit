package h6;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class l implements h5.j<p6.a, Void> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Executor f6930a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m f6931b;

    public l(m mVar, Executor executor) {
        this.f6931b = mVar;
        this.f6930a = executor;
    }

    @Override // h5.j
    @NonNull
    public final h5.k<Void> c(@Nullable p6.a aVar) throws Exception {
        if (aVar == null) {
            Log.w("FirebaseCrashlytics", "Received null app settings, cannot send reports at crash time.", null);
            return h5.n.e(null);
        }
        m mVar = this.f6931b;
        return h5.n.f(Arrays.asList(t.b(mVar.f6936e), mVar.f6936e.f6968k.d(this.f6930a)));
    }
}
