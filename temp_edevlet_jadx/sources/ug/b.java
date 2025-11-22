package ug;

import com.airbnb.epoxy.p;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import m9.k;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.services.epoxy.InstitutionGridItemModel_;
import tr.gov.turkiye.edevlet.kapisi.services.institution.InstitutionFragment;
import x9.l;

/* loaded from: classes3.dex */
public final class b extends j implements l<p, m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ InstitutionFragment f18152a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(InstitutionFragment institutionFragment) {
        super(1);
        this.f18152a = institutionFragment;
    }

    @Override // x9.l
    public final m invoke(p pVar) {
        p withModels = pVar;
        h.f(withModels, "$this$withModels");
        for (c cVar : k.A0(new c[]{new c(1, R.string.item_name_institution, 92, R.string.item_subtitle_institution, false, R.drawable.institution_category_government), new c(2, R.string.item_name_municipality, 90, R.string.item_subtitle_municipality, true, R.drawable.institution_category_municipality), new c(3, R.string.item_name_firm, 3, R.string.item_subtitle_firm, false, R.drawable.institution_category_firm), new c(4, R.string.item_name_company, 93, R.string.item_subtitle_company, false, R.drawable.institution_category_company), new c(5, R.string.item_name_university, 94, R.string.item_subtitle_university, false, R.drawable.institution_category_university)})) {
            InstitutionGridItemModel_ institutionGridItemModel_ = new InstitutionGridItemModel_();
            institutionGridItemModel_.mo361id(Integer.valueOf(cVar.f18153a));
            institutionGridItemModel_.institution(cVar);
            institutionGridItemModel_.listener((l<? super c, m>) new a(this.f18152a));
            withModels.add(institutionGridItemModel_);
        }
        return m.f9594a;
    }
}
