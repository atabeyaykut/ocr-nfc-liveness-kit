package tg;

import com.airbnb.epoxy.p;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import m9.k;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.services.epoxy.FirmGridItemModel_;
import tr.gov.turkiye.edevlet.kapisi.services.firm.FirmCategoryListFragment;
import x9.l;

/* loaded from: classes3.dex */
public final class b extends j implements l<p, m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FirmCategoryListFragment f15717a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(FirmCategoryListFragment firmCategoryListFragment) {
        super(1);
        this.f15717a = firmCategoryListFragment;
    }

    @Override // x9.l
    public final m invoke(p pVar) {
        p withModels = pVar;
        h.f(withModels, "$this$withModels");
        for (c cVar : k.A0(new c[]{new c(2, R.string.item_name_firm_electricity, 2, R.drawable.firm_electricity), new c(1, R.string.item_name_firm_natural_gas, 1, R.drawable.firm_natural_gas), new c(3, R.string.item_name_firm_telecom, 3, R.drawable.firm_telecommunication), new c(5, R.string.item_name_firm_water, 5, R.drawable.firm_water), new c(4, R.string.item_name_firm_mobile, 4, R.drawable.firm_mobile_operators), new c(6, R.string.item_name_firm_other, 6, R.drawable.firm_others)})) {
            FirmGridItemModel_ firmGridItemModel_ = new FirmGridItemModel_();
            firmGridItemModel_.mo325id(Integer.valueOf(cVar.f15718a));
            firmGridItemModel_.firmCategoryItem(cVar);
            firmGridItemModel_.listener((l<? super c, m>) new a(this.f15717a));
            withModels.add(firmGridItemModel_);
        }
        return m.f9594a;
    }
}
