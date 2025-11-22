package androidx.camera.core;

import android.view.Surface;

/* loaded from: classes.dex */
public final /* synthetic */ class b0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f674a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f675b;

    public /* synthetic */ b0(int r12, Object obj) {
        this.f674a = r12;
        this.f675b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f674a;
        Object obj = this.f675b;
        switch (r02) {
            case 0:
                ((SafeCloseImageReaderProxy) obj).safeClose();
                break;
            default:
                ((Surface) obj).release();
                break;
        }
    }
}
