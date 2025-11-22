package androidx.camera.core.impl;

import android.graphics.RectF;
import tr.gov.turkiye.edevlet.kapisi.scan.QRScanActivity;
import tr.gov.turkiye.edevlet.kapisi.scan.camera.ViewFinderOverlay;

/* loaded from: classes.dex */
public final /* synthetic */ class t implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f729a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f730b;

    public /* synthetic */ t(int r12, Object obj) {
        this.f729a = r12;
        this.f730b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f729a;
        Object obj = this.f730b;
        switch (r02) {
            case 0:
                ((m5.a) obj).cancel(true);
                break;
            case 1:
                Object obj2 = b7.c.f1149m;
                ((b7.c) obj).c(false);
                break;
            default:
                QRScanActivity this$0 = (QRScanActivity) obj;
                int r03 = QRScanActivity.f16681k;
                kotlin.jvm.internal.h.f(this$0, "this$0");
                ViewFinderOverlay viewFinderOverlay = this$0.t().f16704d;
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
