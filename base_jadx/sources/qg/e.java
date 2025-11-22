package qg;

import android.text.Editable;
import android.view.View;
import androidx.core.os.BundleKt;
import androidx.navigation.fragment.FragmentKt;
import org.bouncycastle.i18n.MessageBundle;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.services.city.InstitutionCityListFragment;
import x9.r;

/* loaded from: classes3.dex */
public final class e extends kotlin.jvm.internal.j implements r<View, e8.c<m>, m, Integer, Boolean> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ InstitutionCityListFragment f13654a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(InstitutionCityListFragment institutionCityListFragment) {
        super(4);
        this.f13654a = institutionCityListFragment;
    }

    @Override // x9.r
    public final Boolean invoke(View view, e8.c<m> cVar, m mVar, Integer num) {
        m item = mVar;
        num.intValue();
        kotlin.jvm.internal.h.f(cVar, "<anonymous parameter 1>");
        kotlin.jvm.internal.h.f(item, "item");
        da.m<Object>[] mVarArr = InstitutionCityListFragment.f;
        InstitutionCityListFragment institutionCityListFragment = this.f13654a;
        Editable text = institutionCityListFragment.E().f16854e.f15872b.getText();
        if (text != null) {
            text.clear();
        }
        Integer num2 = item.f;
        l9.g[] gVarArr = new l9.g[3];
        String str = institutionCityListFragment.f16834e;
        if (str == null) {
            kotlin.jvm.internal.h.n(MessageBundle.TITLE_ENTRY);
            throw null;
        }
        gVarArr[0] = new l9.g(MessageBundle.TITLE_ENTRY, str);
        gVarArr[1] = new l9.g("cityCode", num2);
        gVarArr[2] = new l9.g("categoryCode", Integer.valueOf(institutionCityListFragment.f16833d));
        FragmentKt.findNavController(institutionCityListFragment).navigate(institutionCityListFragment.f16833d == 90 ? R.id.municipalityListFragment : R.id.institutionListFragment, BundleKt.bundleOf(gVarArr));
        return Boolean.FALSE;
    }
}
