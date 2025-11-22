package androidx.camera.core;

import androidx.camera.core.ImageSaver;
import androidx.camera.core.VideoCapture;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final /* synthetic */ class m0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f762a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f763b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f764c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f765d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f766e;

    public /* synthetic */ m0(Object obj, Object obj2, Object obj3, Object obj4, int r52) {
        this.f762a = r52;
        this.f763b = obj;
        this.f764c = obj2;
        this.f765d = obj3;
        this.f766e = obj4;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        int r02 = this.f762a;
        Object obj = this.f766e;
        Object obj2 = this.f765d;
        Object obj3 = this.f764c;
        Object obj4 = this.f763b;
        switch (r02) {
            case 0:
                ((ImageSaver) obj4).lambda$postError$2((ImageSaver.SaveError) obj3, (String) obj2, (Throwable) obj);
                break;
            default:
                ((VideoCapture) obj4).lambda$startRecording$0((VideoCapture.OutputFileOptions) obj3, (Executor) obj2, (VideoCapture.OnVideoSavedCallback) obj);
                break;
        }
    }
}
