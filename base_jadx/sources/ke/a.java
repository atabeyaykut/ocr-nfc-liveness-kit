package ke;

import android.view.View;
import da.m;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.z;
import tr.gov.turkiye.edevlet.kapisi.common.ui.view.CustomSnackbarView;
import tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.MyCityListFragment;
import tr.gov.turkiye.edevlet.kapisi.servicepage.PaymentPageActivity;
import tr.gov.turkiye.edevlet.kapisi.services.epoxy.InstitutionContactListItemModel;

/* loaded from: classes3.dex */
public final /* synthetic */ class a implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8920a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f8921b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f8922c;

    public /* synthetic */ a(int r12, Object obj, Object obj2) {
        this.f8920a = r12;
        this.f8921b = obj;
        this.f8922c = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int r12 = this.f8920a;
        Object obj = this.f8922c;
        Object obj2 = this.f8921b;
        switch (r12) {
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
                MyCityListFragment this$0 = (MyCityListFragment) obj2;
                tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b item = (tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b) obj;
                m<Object>[] mVarArr = MyCityListFragment.f16381k;
                h.f(this$0, "this$0");
                h.f(item, "$item");
                View view2 = this$0.f.get(Integer.valueOf(view.getId()));
                tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b bVar = this$0.f16387g.get(Integer.valueOf(view.getId()));
                item.f7024c = false;
                e8.b<tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b> bVar2 = this$0.f16388h;
                if (bVar2 == null) {
                    h.n("mCityListFastAdapter");
                    throw null;
                }
                bVar2.f();
                ArrayList arrayList = this$0.f16386e;
                z.a(arrayList);
                arrayList.remove(bVar);
                this$0.F().f16236b.removeView(view2);
                return;
            case 2:
                PaymentPageActivity this$02 = (PaymentPageActivity) obj2;
                String connectionURL = (String) obj;
                int r6 = PaymentPageActivity.f16765y;
                h.f(this$02, "this$0");
                h.f(connectionURL, "$connectionURL");
                gf.b bVar3 = this$02.f16768d;
                if (bVar3 == null) {
                    h.n("mNetworkHelper");
                    throw null;
                }
                if (bVar3.a()) {
                    this$02.y();
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    linkedHashMap.put("eDevletMobil", "true");
                    this$02.u().f16829g.loadUrl(connectionURL, linkedHashMap);
                    return;
                }
                return;
            default:
                InstitutionContactListItemModel.bind$lambda$1((InstitutionContactListItemModel) obj2, (String) obj, view);
                return;
        }
    }
}
