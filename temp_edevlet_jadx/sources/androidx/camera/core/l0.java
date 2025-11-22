package androidx.camera.core;

import android.net.Uri;
import androidx.camera.core.SurfaceRequest;

/* loaded from: classes.dex */
public final /* synthetic */ class l0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f758a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f759b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f760c;

    public /* synthetic */ l0(int r12, Object obj, Object obj2) {
        this.f758a = r12;
        this.f759b = obj;
        this.f760c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f758a;
        Object obj = this.f760c;
        Object obj2 = this.f759b;
        switch (r02) {
            case 0:
                ((ImageSaver) obj2).lambda$postSuccess$1((Uri) obj);
                break;
            default:
                ((SurfaceRequest.TransformationInfoListener) obj2).onTransformationInfoUpdate((SurfaceRequest.TransformationInfo) obj);
                break;
        }
    }
}
