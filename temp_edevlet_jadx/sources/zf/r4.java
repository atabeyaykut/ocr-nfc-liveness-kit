package zf;

import tr.gov.turkiye.edevlet.kapisi.scan.QRScanActivity;

/* loaded from: classes3.dex */
public final class r4 implements t8.a {

    /* renamed from: a, reason: collision with root package name */
    public final d1 f20243a;

    public r4(d1 d1Var) {
        this.f20243a = d1Var;
    }

    @Override // t8.a
    public final void a(Object obj) {
        QRScanActivity qRScanActivity = (QRScanActivity) obj;
        d1 d1Var = this.f20243a;
        qRScanActivity.f17905a = d1Var.c();
        qRScanActivity.f16682b = d1.b(d1Var);
    }
}
