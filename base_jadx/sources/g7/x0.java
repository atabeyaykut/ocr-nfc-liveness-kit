package g7;

import android.content.Intent;
import android.os.Binder;
import android.os.Process;
import android.util.Log;
import androidx.annotation.NonNull;
import g7.a1;
import g7.g;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class x0 extends Binder {

    /* renamed from: a, reason: collision with root package name */
    public final a f5944a;

    public interface a {
    }

    public x0(g.a aVar) {
        this.f5944a = aVar;
    }

    public final void a(final a1.a aVar) {
        if (Binder.getCallingUid() != Process.myUid()) {
            throw new SecurityException("Binding only allowed within app");
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "service received new intent via bind strategy");
        }
        Intent intent = aVar.f5835a;
        g gVar = g.this;
        gVar.getClass();
        h5.l lVar = new h5.l();
        gVar.f5857a.execute(new e(gVar, intent, lVar));
        lVar.f6841a.o(new Executor() { // from class: g7.w0
            @Override // java.util.concurrent.Executor
            public final void execute(@NonNull Runnable runnable) {
                runnable.run();
            }
        }, new h5.e() { // from class: g7.v0
            @Override // h5.e
            public final void b(@NonNull h5.k kVar) {
                aVar.f5836b.d(null);
            }
        });
    }
}
