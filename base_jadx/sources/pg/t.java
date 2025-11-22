package pg;

import java.lang.ref.WeakReference;
import tr.gov.turkiye.edevlet.kapisi.servicepage.ServicePageActivity;

/* loaded from: classes3.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public final String f13223a;

    /* renamed from: b, reason: collision with root package name */
    public final WeakReference<ServicePageActivity> f13224b;

    public t(ServicePageActivity servicePageActivity, String str) {
        this.f13223a = str;
        this.f13224b = new WeakReference<>(servicePageActivity);
    }
}
