package tf;

import android.view.View;
import androidx.camera.core.Camera;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.google.android.gms.internal.clearcut.d0;
import com.google.android.material.datepicker.MaterialDatePicker;
import da.m;
import java.util.ArrayList;
import kotlin.jvm.internal.z;
import tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.MyCityListFragment;
import tr.gov.turkiye.edevlet.kapisi.scan.QRScanActivity;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveFragment;
import tr.gov.turkiye.edevlet.kapisi.verification.identity.CardInfoFragment;

/* loaded from: classes3.dex */
public final /* synthetic */ class c implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15682a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f15683b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f15684c;

    public /* synthetic */ c(int r12, Object obj, Object obj2) {
        this.f15682a = r12;
        this.f15683b = obj;
        this.f15684c = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int r02 = this.f15682a;
        Object obj = this.f15684c;
        Object obj2 = this.f15683b;
        switch (r02) {
            case 0:
                MyCityListFragment this$0 = (MyCityListFragment) obj2;
                tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b cityItem = (tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b) obj;
                m<Object>[] mVarArr = MyCityListFragment.f16381k;
                kotlin.jvm.internal.h.f(this$0, "this$0");
                kotlin.jvm.internal.h.f(cityItem, "$cityItem");
                View view2 = this$0.f.get(Integer.valueOf(view.getId()));
                tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b bVar = this$0.f16387g.get(Integer.valueOf(view.getId()));
                cityItem.f7024c = false;
                e8.b<tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b> bVar2 = this$0.f16388h;
                if (bVar2 == null) {
                    kotlin.jvm.internal.h.n("mCityListFastAdapter");
                    throw null;
                }
                bVar2.f();
                ArrayList arrayList = this$0.f16386e;
                z.a(arrayList);
                arrayList.remove(bVar);
                this$0.F().f16236b.removeView(view2);
                return;
            case 1:
                int r6 = QRScanActivity.f16681k;
                kotlin.jvm.internal.h.f((QRScanActivity) obj, "this$0");
                ((Camera) obj2).getCameraControl().enableTorch(!r3.f);
                return;
            case 2:
                MobileAccidentApproveFragment this$02 = (MobileAccidentApproveFragment) obj2;
                byte[] contentArray = (byte[]) obj;
                m<Object>[] mVarArr2 = MobileAccidentApproveFragment.f16969s;
                kotlin.jvm.internal.h.f(this$02, "this$0");
                kotlin.jvm.internal.h.e(contentArray, "contentArray");
                this$02.K(contentArray);
                return;
            default:
                CardInfoFragment this$03 = (CardInfoFragment) obj2;
                MaterialDatePicker birthPicker = (MaterialDatePicker) obj;
                m<Object>[] mVarArr3 = CardInfoFragment.f17653j;
                kotlin.jvm.internal.h.f(this$03, "this$0");
                kotlin.jvm.internal.h.f(birthPicker, "$birthPicker");
                try {
                    NestedScrollView nestedScrollView = this$03.E().f17637c;
                    kotlin.jvm.internal.h.e(nestedScrollView, "mCardInfoFragmentBinding.cardInfoContainer");
                    d0.x(nestedScrollView);
                } catch (Exception unused) {
                }
                this$03.E().f17639e.clearFocus();
                FragmentActivity activity = this$03.getActivity();
                FragmentManager supportFragmentManager = activity != null ? activity.getSupportFragmentManager() : null;
                kotlin.jvm.internal.h.c(supportFragmentManager);
                birthPicker.show(supportFragmentManager, birthPicker.toString());
                return;
        }
    }
}
