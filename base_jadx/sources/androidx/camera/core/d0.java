package androidx.camera.core;

import androidx.camera.core.ImageCapture;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final /* synthetic */ class d0 implements CallbackToFutureAdapter.Resolver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f687a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f688b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f689c;

    public /* synthetic */ d0(int r12, Object obj, Object obj2) {
        this.f687a = r12;
        this.f688b = obj;
        this.f689c = obj2;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        int r02 = this.f687a;
        Object obj = this.f689c;
        Object obj2 = this.f688b;
        switch (r02) {
            case 0:
                return ((ImageCapture) obj2).lambda$takePictureInternal$9((ImageCapture.ImageCaptureRequest) obj, completer);
            default:
                return SurfaceRequest.lambda$new$0((AtomicReference) obj2, (String) obj, completer);
        }
    }
}
