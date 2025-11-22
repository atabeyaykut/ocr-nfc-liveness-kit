package androidx.camera.view;

import androidx.camera.core.SurfaceRequest;

/* loaded from: classes.dex */
public final /* synthetic */ class m implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f856a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SurfaceRequest f857b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PreviewViewImplementation f858c;

    public /* synthetic */ m(PreviewViewImplementation previewViewImplementation, SurfaceRequest surfaceRequest, int r32) {
        this.f856a = r32;
        this.f858c = previewViewImplementation;
        this.f857b = surfaceRequest;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f856a;
        SurfaceRequest surfaceRequest = this.f857b;
        PreviewViewImplementation previewViewImplementation = this.f858c;
        switch (r02) {
            case 0:
                ((SurfaceViewImplementation) previewViewImplementation).lambda$onSurfaceRequested$0(surfaceRequest);
                break;
            default:
                ((TextureViewImplementation) previewViewImplementation).lambda$onSurfaceRequested$0(surfaceRequest);
                break;
        }
    }
}
