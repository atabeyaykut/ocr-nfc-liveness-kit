package androidx.core.app;

import android.app.Activity;
import android.graphics.RectF;
import android.view.KeyEvent;
import androidx.core.widget.ContentLoadingProgressBar;
import tr.gov.turkiye.edevlet.kapisi.barcode.camera.ViewFinderOverlay;
import tr.gov.turkiye.edevlet.kapisi.barcode.qr.BarcodeScanningActivity;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f891a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ KeyEvent.Callback f892b;

    public /* synthetic */ a(KeyEvent.Callback callback, int r22) {
        this.f891a = r22;
        this.f892b = callback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f891a;
        KeyEvent.Callback callback = this.f892b;
        switch (r02) {
            case 0:
                ActivityCompat.lambda$recreate$0((Activity) callback);
                break;
            case 1:
                ((ContentLoadingProgressBar) callback).lambda$new$0();
                break;
            default:
                BarcodeScanningActivity this$0 = (BarcodeScanningActivity) callback;
                int r03 = BarcodeScanningActivity.f15835j;
                kotlin.jvm.internal.h.f(this$0, "this$0");
                ViewFinderOverlay viewFinderOverlay = this$0.t().f15792d;
                float width = viewFinderOverlay.getWidth();
                float height = viewFinderOverlay.getHeight();
                float f = 100;
                float f10 = (80 * width) / f;
                float f11 = (36 * height) / f;
                float f12 = 2;
                float f13 = width / f12;
                float f14 = height / f12;
                float f15 = f10 / f12;
                float f16 = f11 / f12;
                viewFinderOverlay.boxRect = new RectF(f13 - f15, f14 - f16, f13 + f15, f14 + f16);
                viewFinderOverlay.invalidate();
                break;
        }
    }
}
