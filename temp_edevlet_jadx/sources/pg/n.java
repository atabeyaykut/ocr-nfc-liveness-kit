package pg;

import android.view.View;
import android.webkit.WebView;
import java.util.LinkedHashMap;
import tr.gov.turkiye.edevlet.kapisi.servicepage.ServicePageActivity;

/* loaded from: classes3.dex */
public final /* synthetic */ class n implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13215a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ServicePageActivity f13216b;

    public /* synthetic */ n(ServicePageActivity servicePageActivity, int r22) {
        this.f13215a = r22;
        this.f13216b = servicePageActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int r42 = this.f13215a;
        ServicePageActivity this$0 = this.f13216b;
        switch (r42) {
            case 0:
                int r43 = ServicePageActivity.s0;
                kotlin.jvm.internal.h.f(this$0, "this$0");
                this$0.B();
                return;
            default:
                int r44 = ServicePageActivity.s0;
                kotlin.jvm.internal.h.f(this$0, "this$0");
                gf.b bVar = this$0.f16792d;
                if (bVar == null) {
                    kotlin.jvm.internal.h.n("mNetworkHelper");
                    throw null;
                }
                if (bVar.a()) {
                    this$0.E();
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    linkedHashMap.put("eDevletMobil", "true");
                    WebView webView = this$0.v().f16829g;
                    String str = this$0.F;
                    kotlin.jvm.internal.h.c(str);
                    webView.loadUrl(str, linkedHashMap);
                    return;
                }
                return;
        }
    }
}
