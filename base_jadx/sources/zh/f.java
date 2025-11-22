package zh;

import android.os.CountDownTimer;
import kotlin.jvm.internal.j;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.verification.ocr.GeneralCameraSourcePreview;
import tr.gov.turkiye.edevlet.kapisi.verification.ocr.GeneralOCRScanActivity;
import x9.l;

/* loaded from: classes3.dex */
public final class f extends CountDownTimer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ GeneralOCRScanActivity f20484a;

    public static final class a extends j implements l<v.e, m> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ GeneralOCRScanActivity f20485a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(GeneralOCRScanActivity generalOCRScanActivity) {
            super(1);
            this.f20485a = generalOCRScanActivity;
        }

        @Override // x9.l
        public final m invoke(v.e eVar) {
            v.e dialog = eVar;
            kotlin.jvm.internal.h.f(dialog, "dialog");
            dialog.dismiss();
            int r22 = GeneralOCRScanActivity.f17686h;
            GeneralOCRScanActivity generalOCRScanActivity = this.f20485a;
            generalOCRScanActivity.getClass();
            f fVar = new f(generalOCRScanActivity);
            generalOCRScanActivity.f = fVar;
            fVar.start();
            generalOCRScanActivity.s();
            return m.f9594a;
        }
    }

    public static final class b extends j implements l<v.e, m> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ GeneralOCRScanActivity f20486a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(GeneralOCRScanActivity generalOCRScanActivity) {
            super(1);
            this.f20486a = generalOCRScanActivity;
        }

        @Override // x9.l
        public final m invoke(v.e eVar) {
            v.e dialog = eVar;
            kotlin.jvm.internal.h.f(dialog, "dialog");
            dialog.dismiss();
            GeneralOCRScanActivity generalOCRScanActivity = this.f20486a;
            generalOCRScanActivity.setResult(0);
            generalOCRScanActivity.finish();
            return m.f9594a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(GeneralOCRScanActivity generalOCRScanActivity) {
        super(20000L, 1000L);
        this.f20484a = generalOCRScanActivity;
    }

    @Override // android.os.CountDownTimer
    public final void onFinish() {
        e eVar;
        GeneralOCRScanActivity generalOCRScanActivity = this.f20484a;
        GeneralCameraSourcePreview generalCameraSourcePreview = generalOCRScanActivity.f17689c;
        if (generalCameraSourcePreview != null && (eVar = generalCameraSourcePreview.f17683d) != null) {
            eVar.e();
        }
        v.e eVar2 = new v.e(generalOCRScanActivity);
        v.e.c(eVar2, Integer.valueOf(R.string.mrz_scan_timeout_message), null, 6);
        eVar2.b(false);
        v.e.e(eVar2, Integer.valueOf(R.string.ocr_scan_timeout_message_positive), null, new a(generalOCRScanActivity), 2);
        v.e.d(eVar2, Integer.valueOf(R.string.ocr_scan_timeout_message_negative), new b(generalOCRScanActivity));
        eVar2.show();
        generalOCRScanActivity.f17691e = eVar2;
    }

    @Override // android.os.CountDownTimer
    public final void onTick(long j10) {
    }
}
