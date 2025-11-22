package ke;

import android.view.View;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.common.ui.view.CustomSnackbarView;
import tr.gov.turkiye.edevlet.kapisi.servicepage.ServicePageActivity;
import tr.gov.turkiye.edevlet.kapisi.services.epoxy.InstitutionContactListItemModel;

/* loaded from: classes3.dex */
public final /* synthetic */ class b implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8923a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f8924b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f8925c;

    public /* synthetic */ b(int r12, Object obj, Object obj2) {
        this.f8923a = r12;
        this.f8924b = obj;
        this.f8925c = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int r02 = this.f8923a;
        Object obj = this.f8925c;
        Object obj2 = this.f8924b;
        switch (r02) {
            case 0:
                View.OnClickListener onClickListener = (View.OnClickListener) obj2;
                CustomSnackbarView customView = (CustomSnackbarView) obj;
                h.f(customView, "$customView");
                if (onClickListener != null) {
                    onClickListener.onClick(customView.getTvAction());
                    return;
                }
                return;
            case 1:
                ServicePageActivity this$0 = (ServicePageActivity) obj2;
                String connectionURL = (String) obj;
                int r52 = ServicePageActivity.s0;
                h.f(this$0, "this$0");
                h.f(connectionURL, "$connectionURL");
                gf.b bVar = this$0.f16792d;
                if (bVar == null) {
                    h.n("mNetworkHelper");
                    throw null;
                }
                if (bVar.a()) {
                    this$0.E();
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    linkedHashMap.put("eDevletMobil", "true");
                    this$0.v().f16829g.loadUrl(connectionURL, linkedHashMap);
                    return;
                }
                return;
            default:
                InstitutionContactListItemModel.bind$lambda$3((InstitutionContactListItemModel) obj2, (String) obj, view);
                return;
        }
    }
}
