package androidx.camera.camera2.internal;

import androidx.camera.core.ZoomState;
import androidx.concurrent.futures.CallbackToFutureAdapter;

/* loaded from: classes.dex */
public final /* synthetic */ class y implements CallbackToFutureAdapter.Resolver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f638a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f639b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f640c;

    public /* synthetic */ y(int r12, Object obj, Object obj2) {
        this.f638a = r12;
        this.f639b = obj;
        this.f640c = obj2;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        int r02 = this.f638a;
        Object obj = this.f640c;
        Object obj2 = this.f639b;
        switch (r02) {
            case 0:
                return ((Camera2CameraImpl) obj2).lambda$isUseCaseAttached$10((String) obj, completer);
            default:
                return ((ZoomControl) obj2).lambda$setLinearZoom$3((ZoomState) obj, completer);
        }
    }
}
