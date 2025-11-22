package androidx.camera.core;

import android.view.Surface;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Consumer;
import java.io.File;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f665a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f666b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f667c;

    public /* synthetic */ a(int r12, Object obj, Object obj2) {
        this.f665a = r12;
        this.f666b = obj;
        this.f667c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f665a;
        Object obj = this.f667c;
        Object obj2 = this.f666b;
        switch (r02) {
            case 0:
                ((AndroidImageReaderProxy) obj2).lambda$setOnImageAvailableListener$0((ImageReaderProxy.OnImageAvailableListener) obj);
                break;
            case 1:
                ((ImageSaver) obj2).lambda$run$0((File) obj);
                break;
            case 2:
                ((ProcessingImageReader) obj2).lambda$closeAndCompleteFutureIfNecessary$0((CallbackToFutureAdapter.Completer) obj);
                break;
            default:
                SurfaceRequest.lambda$provideSurface$5((Consumer) obj2, (Surface) obj);
                break;
        }
    }
}
