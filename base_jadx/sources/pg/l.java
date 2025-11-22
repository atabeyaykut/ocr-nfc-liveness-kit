package pg;

import java.lang.ref.WeakReference;
import tr.gov.turkiye.edevlet.kapisi.servicepage.PaymentPageActivity;

/* loaded from: classes3.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public final String f13212a;

    /* renamed from: b, reason: collision with root package name */
    public final WeakReference<PaymentPageActivity> f13213b;

    public l(PaymentPageActivity paymentPageActivity, String str) {
        this.f13212a = str;
        this.f13213b = new WeakReference<>(paymentPageActivity);
    }
}
