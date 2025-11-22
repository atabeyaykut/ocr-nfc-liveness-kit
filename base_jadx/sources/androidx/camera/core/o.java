package androidx.camera.core;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final /* synthetic */ class o implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f773a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f774b;

    public /* synthetic */ o(int r12, Object obj) {
        this.f773a = r12;
        this.f774b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f773a;
        Object obj = this.f774b;
        switch (r02) {
            case 0:
                ((CallbackToFutureAdapter.Completer) obj).set(null);
                break;
            case 1:
                ((ProcessingSurface) obj).release();
                break;
            case 2:
                ((ExecutorService) obj).shutdown();
                break;
            case 3:
                ((SurfaceRequest) obj).lambda$new$3();
                break;
            default:
                ((VideoCapture) obj).lambda$stopRecording$5();
                break;
        }
    }
}
