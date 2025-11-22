package rg;

import com.airbnb.epoxy.p;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm;
import tr.gov.turkiye.edevlet.kapisi.services.contact.InstitutionContactFragment;
import tr.gov.turkiye.edevlet.kapisi.services.epoxy.InstitutionContactListItemModel_;
import tr.gov.turkiye.edevlet.kapisi.services.epoxy.InstitutionContactTitleModel_;
import x9.l;
import x9.q;

/* loaded from: classes3.dex */
public final class f extends j implements l<p, m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ List<InstitutionContactModelRealm> f14687a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ InstitutionContactFragment f14688b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(ArrayList arrayList, InstitutionContactFragment institutionContactFragment) {
        super(1);
        this.f14687a = arrayList;
        this.f14688b = institutionContactFragment;
    }

    @Override // x9.l
    public final m invoke(p pVar) {
        p withModels = pVar;
        h.f(withModels, "$this$withModels");
        List<InstitutionContactModelRealm> list = this.f14687a;
        boolean z10 = (list.isEmpty() ^ true) && list.size() > 1;
        for (InstitutionContactModelRealm institutionContactModelRealm : list) {
            if (z10) {
                InstitutionContactTitleModel_ institutionContactTitleModel_ = new InstitutionContactTitleModel_();
                institutionContactTitleModel_.mo346id((CharSequence) institutionContactModelRealm.getContactName());
                institutionContactTitleModel_.institutionContactTitleText(institutionContactModelRealm.getContactName());
                withModels.add(institutionContactTitleModel_);
            }
            InstitutionContactListItemModel_ institutionContactListItemModel_ = new InstitutionContactListItemModel_();
            institutionContactListItemModel_.mo337id(Integer.valueOf(institutionContactModelRealm.getContactId()));
            institutionContactListItemModel_.institutionContact(institutionContactModelRealm);
            InstitutionContactFragment institutionContactFragment = this.f14688b;
            institutionContactListItemModel_.phoneListener((l<? super String, m>) new c(institutionContactFragment));
            institutionContactListItemModel_.addressListener((q<? super String, ? super String, ? super String, m>) new d(institutionContactFragment));
            institutionContactListItemModel_.websiteListener((l<? super String, m>) new e(institutionContactFragment));
            withModels.add(institutionContactListItemModel_);
        }
        return m.f9594a;
    }
}
