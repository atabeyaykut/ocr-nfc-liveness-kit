package c2;

import androidx.lifecycle.Observer;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.scan.QRScanActivity;
import x9.l;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Observer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1368a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l f1369b;

    public /* synthetic */ a(int r12, l lVar) {
        this.f1368a = r12;
        this.f1369b = lVar;
    }

    @Override // androidx.lifecycle.Observer
    public final void onChanged(Object obj) {
        int r02 = this.f1368a;
        l tmp0 = this.f1369b;
        switch (r02) {
            case 0:
                h.f(tmp0, "$observer");
                tmp0.invoke(obj);
                break;
            default:
                int r03 = QRScanActivity.f16681k;
                h.f(tmp0, "$tmp0");
                tmp0.invoke(obj);
                break;
        }
    }
}
