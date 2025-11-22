package zh;

import android.os.CountDownTimer;
import kotlin.jvm.internal.j;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.verification.ocr.CameraSourcePreview;
import tr.gov.turkiye.edevlet.kapisi.verification.ocr.CardOCRScanActivity;
import x9.l;

/* loaded from: classes3.dex */
public final class b extends CountDownTimer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CardOCRScanActivity f20456a;

    public static final class a extends j implements l<v.e, m> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ CardOCRScanActivity f20457a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(CardOCRScanActivity cardOCRScanActivity) {
            super(1);
            this.f20457a = cardOCRScanActivity;
        }

        @Override // x9.l
        public final m invoke(v.e eVar) {
            v.e dialog = eVar;
            kotlin.jvm.internal.h.f(dialog, "dialog");
            dialog.dismiss();
            int r22 = CardOCRScanActivity.f17671j;
            CardOCRScanActivity cardOCRScanActivity = this.f20457a;
            cardOCRScanActivity.getClass();
            b bVar = new b(cardOCRScanActivity);
            cardOCRScanActivity.f = bVar;
            bVar.start();
            cardOCRScanActivity.s();
            return m.f9594a;
        }
    }

    /* renamed from: zh.b$b, reason: collision with other inner class name */
    public static final class C0321b extends j implements l<v.e, m> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ CardOCRScanActivity f20458a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0321b(CardOCRScanActivity cardOCRScanActivity) {
            super(1);
            this.f20458a = cardOCRScanActivity;
        }

        @Override // x9.l
        public final m invoke(v.e eVar) {
            v.e dialog = eVar;
            kotlin.jvm.internal.h.f(dialog, "dialog");
            dialog.dismiss();
            CardOCRScanActivity cardOCRScanActivity = this.f20458a;
            cardOCRScanActivity.setResult(0);
            cardOCRScanActivity.finish();
            return m.f9594a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(CardOCRScanActivity cardOCRScanActivity) {
        super(20000L, 1000L);
        this.f20456a = cardOCRScanActivity;
    }

    @Override // android.os.CountDownTimer
    public final void onFinish() {
        zh.a aVar;
        CardOCRScanActivity cardOCRScanActivity = this.f20456a;
        CameraSourcePreview cameraSourcePreview = cardOCRScanActivity.f17674c;
        if (cameraSourcePreview != null && (aVar = cameraSourcePreview.f17668d) != null) {
            aVar.e();
        }
        v.e eVar = new v.e(cardOCRScanActivity);
        v.e.c(eVar, Integer.valueOf(R.string.ocr_scan_timeout_message), null, 6);
        eVar.b(false);
        v.e.e(eVar, Integer.valueOf(R.string.ocr_scan_timeout_message_positive), null, new a(cardOCRScanActivity), 2);
        v.e.d(eVar, Integer.valueOf(R.string.ocr_scan_timeout_message_negative), new C0321b(cardOCRScanActivity));
        eVar.show();
        cardOCRScanActivity.f17676e = eVar;
    }

    @Override // android.os.CountDownTimer
    public final void onTick(long j10) {
    }
}
