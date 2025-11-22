package androidx.camera.core;

import android.media.MediaCodec;
import androidx.camera.core.ProcessingImageReader;
import androidx.camera.core.VideoCapture;

/* loaded from: classes.dex */
public final /* synthetic */ class t0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f793a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f794b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f795c;

    public /* synthetic */ t0(int r12, Object obj, Object obj2) {
        this.f793a = r12;
        this.f794b = obj;
        this.f795c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException, MediaCodec.CryptoException {
        int r02 = this.f793a;
        Object obj = this.f795c;
        Object obj2 = this.f794b;
        switch (r02) {
            case 0:
                ProcessingImageReader.AnonymousClass3.lambda$onSuccess$0((ProcessingImageReader.OnProcessingErrorCallback) obj2, (Exception) obj);
                break;
            default:
                ((VideoCapture) obj2).lambda$startRecording$3((VideoCapture.OnVideoSavedCallback) obj);
                break;
        }
    }
}
