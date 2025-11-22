package tr.gov.turkiye.edevlet.kapisi.services.list;

import com.airbnb.epoxy.Typed3EpoxyController;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm;
import tr.gov.turkiye.edevlet.kapisi.services.epoxy.InstitutionListItemModel_;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0001:\u0001\u000fB\u000f\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ(\u0010\t\u001a\u00020\b2\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0014R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController;", "Lcom/airbnb/epoxy/Typed3EpoxyController;", "", "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;", "", "institutionList", "pluralText", "singularText", "Ll9/m;", "buildModels", "Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController$a;", "callbacks", "Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController$a;", "<init>", "(Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController$a;)V", "a", "ui-services_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class InstitutionListUIController extends Typed3EpoxyController<List<? extends InstitutionModelRealm>, String, String> {
    private final a callbacks;

    public interface a {
        void c(InstitutionModelRealm institutionModelRealm);
    }

    public static final class b extends j implements x9.a<m> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ InstitutionModelRealm f16917b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(InstitutionModelRealm institutionModelRealm) {
            super(0);
            this.f16917b = institutionModelRealm;
        }

        @Override // x9.a
        public final m invoke() {
            InstitutionListUIController.this.callbacks.c(this.f16917b);
            return m.f9594a;
        }
    }

    public InstitutionListUIController(a callbacks) {
        h.f(callbacks, "callbacks");
        this.callbacks = callbacks;
    }

    @Override // com.airbnb.epoxy.Typed3EpoxyController
    public void buildModels(List<? extends InstitutionModelRealm> list, String pluralText, String singularText) {
        StringBuilder sb2;
        h.f(pluralText, "pluralText");
        h.f(singularText, "singularText");
        if (list != null) {
            for (InstitutionModelRealm institutionModelRealm : list) {
                InstitutionListItemModel_ institutionListItemModel_ = new InstitutionListItemModel_();
                institutionListItemModel_.mo373id(Integer.valueOf(institutionModelRealm.getInstitutionCode()));
                if (institutionModelRealm.getServiceCount() > 1) {
                    sb2 = new StringBuilder();
                    sb2.append(institutionModelRealm.getServiceCount());
                    sb2.append(' ');
                    sb2.append(pluralText);
                } else {
                    sb2 = new StringBuilder();
                    sb2.append(institutionModelRealm.getServiceCount());
                    sb2.append(' ');
                    sb2.append(singularText);
                }
                institutionListItemModel_.serviceCount(sb2.toString());
                institutionListItemModel_.institution(institutionModelRealm);
                institutionListItemModel_.listener((x9.a<m>) new b(institutionModelRealm));
                add(institutionListItemModel_);
            }
        }
    }
}
