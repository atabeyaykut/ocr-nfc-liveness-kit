package androidx.view;

import android.view.KeyEvent;
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.core.widget.ContentLoadingProgressBar;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.barcode.qr.BarcodeScanningActivity;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f429a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ KeyEvent.Callback f430b;

    public /* synthetic */ a(KeyEvent.Callback callback, int r22) {
        this.f429a = r22;
        this.f430b = callback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f429a;
        KeyEvent.Callback callback = this.f430b;
        switch (r02) {
            case 0:
                ((ComponentActivity) callback).invalidateMenu();
                return;
            case 1:
                ((ContentLoadingProgressBar) callback).hideOnUiThread();
                return;
            default:
                BarcodeScanningActivity this$0 = (BarcodeScanningActivity) callback;
                int r03 = BarcodeScanningActivity.f15835j;
                h.f(this$0, "this$0");
                m5.a<ProcessCameraProvider> aVar = this$0.f15836a;
                if (aVar != null) {
                    this$0.s(aVar.get());
                    return;
                } else {
                    h.n("cameraProviderFuture");
                    throw null;
                }
        }
    }
}
