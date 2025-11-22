package h6;

import android.util.Log;
import java.io.File;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class p implements Callable<h5.k<Void>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Boolean f6949a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ q f6950b;

    public p(q qVar, Boolean bool) {
        this.f6950b = qVar;
        this.f6949a = bool;
    }

    @Override // java.util.concurrent.Callable
    public final h5.k<Void> call() throws Exception {
        Boolean bool = this.f6949a;
        boolean zBooleanValue = bool.booleanValue();
        q qVar = this.f6950b;
        if (zBooleanValue) {
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", "Sending cached crash reports...", null);
            }
            boolean zBooleanValue2 = bool.booleanValue();
            c0 c0Var = qVar.f6953b.f6960b;
            if (!zBooleanValue2) {
                c0Var.getClass();
                throw new IllegalStateException("An invalid data collection token was used.");
            }
            c0Var.f.d(null);
            Executor executor = qVar.f6953b.f6962d.f6910a;
            return qVar.f6952a.n(executor, new o(this, executor));
        }
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            Log.v("FirebaseCrashlytics", "Deleting cached crash reports...", null);
        }
        t tVar = qVar.f6953b;
        Iterator it = m6.f.d(tVar.f.f10042a.listFiles(t.f6958p)).iterator();
        while (it.hasNext()) {
            ((File) it.next()).delete();
        }
        t tVar2 = qVar.f6953b;
        m6.f fVar = tVar2.f6968k.f6938b.f10040b;
        m6.e.a(m6.f.d(fVar.f10044c.listFiles()));
        m6.e.a(m6.f.d(fVar.f10045d.listFiles()));
        m6.e.a(m6.f.d(fVar.f10046e.listFiles()));
        tVar2.f6972o.d(null);
        return h5.n.e(null);
    }
}
