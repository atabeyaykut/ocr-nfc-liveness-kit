package h6;

import android.content.Context;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* loaded from: classes2.dex */
public final class x {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6978a;

    /* renamed from: b, reason: collision with root package name */
    public final c0 f6979b;

    /* renamed from: c, reason: collision with root package name */
    public final long f6980c;

    /* renamed from: d, reason: collision with root package name */
    public x0.t f6981d;

    /* renamed from: e, reason: collision with root package name */
    public x0.t f6982e;
    public t f;

    /* renamed from: g, reason: collision with root package name */
    public final g0 f6983g;

    /* renamed from: h, reason: collision with root package name */
    public final m6.f f6984h;

    /* renamed from: i, reason: collision with root package name */
    @VisibleForTesting
    public final g6.b f6985i;

    /* renamed from: j, reason: collision with root package name */
    public final f6.a f6986j;

    /* renamed from: k, reason: collision with root package name */
    public final ExecutorService f6987k;

    /* renamed from: l, reason: collision with root package name */
    public final f f6988l;

    /* renamed from: m, reason: collision with root package name */
    public final e6.a f6989m;

    public class a implements Callable<Boolean> {
        public a() {
        }

        @Override // java.util.concurrent.Callable
        public final Boolean call() throws Exception {
            try {
                x0.t tVar = x.this.f6981d;
                m6.f fVar = (m6.f) tVar.f19088b;
                String str = (String) tVar.f19087a;
                fVar.getClass();
                boolean zDelete = new File(fVar.f10042a, str).delete();
                if (!zDelete) {
                    Log.w("FirebaseCrashlytics", "Initialization marker file was not properly removed.", null);
                }
                return Boolean.valueOf(zDelete);
            } catch (Exception e10) {
                Log.e("FirebaseCrashlytics", "Problem encountered deleting Crashlytics initialization marker.", e10);
                return Boolean.FALSE;
            }
        }
    }

    public x(x5.c cVar, g0 g0Var, e6.c cVar2, c0 c0Var, androidx.camera.camera2.interop.c cVar3, androidx.camera.camera2.interop.d dVar, m6.f fVar, ExecutorService executorService) {
        this.f6979b = c0Var;
        cVar.a();
        this.f6978a = cVar.f19165a;
        this.f6983g = g0Var;
        this.f6989m = cVar2;
        this.f6985i = cVar3;
        this.f6986j = dVar;
        this.f6987k = executorService;
        this.f6984h = fVar;
        this.f6988l = new f(executorService);
        this.f6980c = System.currentTimeMillis();
    }

    public static h5.k a(final x xVar, o6.d dVar) throws IOException {
        h5.k kVarD;
        if (!Boolean.TRUE.equals(xVar.f6988l.f6913d.get())) {
            throw new IllegalStateException("Not running on background worker thread as intended.");
        }
        xVar.f6981d.a();
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            Log.v("FirebaseCrashlytics", "Initialization marker file was created.", null);
        }
        try {
            try {
                xVar.f6985i.a(new g6.a() { // from class: h6.u
                    @Override // g6.a
                    public final void a(String str) {
                        x xVar2 = this.f6973a;
                        xVar2.getClass();
                        long jCurrentTimeMillis = System.currentTimeMillis() - xVar2.f6980c;
                        t tVar = xVar2.f;
                        tVar.getClass();
                        tVar.f6962d.a(new r(tVar, jCurrentTimeMillis, str));
                    }
                });
                o6.c cVar = (o6.c) dVar;
                if (cVar.f11255h.get().a().f12829a) {
                    if (!xVar.f.d(cVar)) {
                        Log.w("FirebaseCrashlytics", "Previous sessions could not be finalized.", null);
                    }
                    kVarD = xVar.f.e(cVar.f11256i.get().f6841a);
                } else {
                    if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                        Log.d("FirebaseCrashlytics", "Collection of crash reports disabled in Crashlytics settings.", null);
                    }
                    kVarD = h5.n.d(new RuntimeException("Collection of crash reports disabled in Crashlytics settings."));
                }
            } catch (Exception e10) {
                Log.e("FirebaseCrashlytics", "Crashlytics encountered a problem during asynchronous initialization.", e10);
                kVarD = h5.n.d(e10);
            }
            return kVarD;
        } finally {
            xVar.b();
        }
    }

    public final void b() {
        this.f6988l.a(new a());
    }
}
