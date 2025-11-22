package androidx.camera.camera2.interop;

import a7.a;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import c6.x;

/* loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f659a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f660b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f661c;

    public /* synthetic */ g(int r12, Object obj, Object obj2) {
        this.f659a = r12;
        this.f660b = obj;
        this.f661c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.InterfaceC0008a<T> interfaceC0008a;
        switch (this.f659a) {
            case 0:
                ((Camera2CameraControl) this.f660b).lambda$setCaptureRequestOptions$1((CallbackToFutureAdapter.Completer) this.f661c);
                return;
            default:
                x xVar = (x) this.f660b;
                a7.b<T> bVar = (a7.b) this.f661c;
                if (xVar.f2232b != x.f2230d) {
                    throw new IllegalStateException("provide() can be called only once.");
                }
                synchronized (xVar) {
                    interfaceC0008a = xVar.f2231a;
                    xVar.f2231a = null;
                    xVar.f2232b = bVar;
                }
                interfaceC0008a.a(bVar);
                return;
        }
    }
}
