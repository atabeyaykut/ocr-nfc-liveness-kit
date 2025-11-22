package androidx.camera.core;

import androidx.camera.core.ProcessingImageReader;
import androidx.camera.core.VideoCapture;
import androidx.camera.core.impl.ImageReaderProxy;

/* loaded from: classes.dex */
public final /* synthetic */ class n0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f770a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f771b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f772c;

    public /* synthetic */ n0(int r12, Object obj, Object obj2) {
        this.f770a = r12;
        this.f772c = obj;
        this.f771b = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f770a;
        Object obj = this.f771b;
        Object obj2 = this.f772c;
        switch (r02) {
            case 0:
                ((MetadataImageReader) obj2).lambda$enqueueImageProxy$1((ImageReaderProxy.OnImageAvailableListener) obj);
                break;
            case 1:
                ((ProcessingImageReader.AnonymousClass2) obj2).lambda$onImageAvailable$0((ImageReaderProxy.OnImageAvailableListener) obj);
                break;
            default:
                ((VideoCapture.VideoSavedListenerWrapper) obj2).lambda$onVideoSaved$0((VideoCapture.OutputFileResults) obj);
                break;
        }
    }
}
