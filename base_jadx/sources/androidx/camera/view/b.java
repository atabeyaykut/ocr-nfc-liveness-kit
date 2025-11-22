package androidx.camera.view;

import androidx.core.content.res.ResourcesCompat;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f834a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f835b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f836c;

    public /* synthetic */ b(int r12, int r22, Object obj) {
        this.f834a = r22;
        this.f836c = obj;
        this.f835b = r12;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f834a;
        int r12 = this.f835b;
        Object obj = this.f836c;
        switch (r02) {
            case 0:
                ((CameraController) obj).lambda$setEnabledUseCases$2(r12);
                break;
            default:
                ((ResourcesCompat.FontCallback) obj).lambda$callbackFailAsync$1(r12);
                break;
        }
    }
}
