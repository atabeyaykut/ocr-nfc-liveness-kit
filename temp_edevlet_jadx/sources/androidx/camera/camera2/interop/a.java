package androidx.camera.camera2.interop;

import android.view.Surface;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.SurfaceRequest;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Consumer;
import c6.u;
import java.util.Set;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f646a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f647b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f648c;

    public /* synthetic */ a(int r12, Object obj, Object obj2) {
        this.f646a = r12;
        this.f647b = obj;
        this.f648c = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        Set set;
        a7.b bVar;
        switch (this.f646a) {
            case 0:
                ((Camera2CameraControl) this.f647b).lambda$addCaptureRequestOptions$3((CallbackToFutureAdapter.Completer) this.f648c);
                return;
            case 1:
                ((ImageCapture) this.f647b).lambda$sendImageCaptureRequest$5((ImageCapture.OnImageCapturedCallback) this.f648c);
                return;
            case 2:
                SurfaceRequest.lambda$provideSurface$4((Consumer) this.f647b, (Surface) this.f648c);
                return;
            default:
                u uVar = (u) this.f647b;
                a7.b bVar2 = (a7.b) this.f648c;
                synchronized (uVar) {
                    if (uVar.f2228b == null) {
                        set = uVar.f2227a;
                        bVar = bVar2;
                    } else {
                        set = uVar.f2228b;
                        bVar = bVar2.get();
                    }
                    set.add(bVar);
                }
                return;
        }
    }
}
