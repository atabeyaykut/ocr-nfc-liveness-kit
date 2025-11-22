package androidx.camera.camera2.internal;

import androidx.camera.camera2.internal.Camera2CapturePipeline;
import androidx.concurrent.futures.CallbackToFutureAdapter;

/* loaded from: classes.dex */
public final /* synthetic */ class v implements CallbackToFutureAdapter.Resolver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f620a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f621b;

    public /* synthetic */ v(int r12, Object obj) {
        this.f620a = r12;
        this.f621b = obj;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        int r02 = this.f620a;
        Object obj = this.f621b;
        switch (r02) {
            case 0:
                return ((Camera2CameraImpl) obj).lambda$release$3(completer);
            default:
                return ((Camera2CapturePipeline.ResultListener) obj).lambda$new$0(completer);
        }
    }
}
