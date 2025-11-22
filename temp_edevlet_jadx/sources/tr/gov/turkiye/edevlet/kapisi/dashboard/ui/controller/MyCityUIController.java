package tr.gov.turkiye.edevlet.kapisi.dashboard.ui.controller;

import com.airbnb.epoxy.Typed4EpoxyController;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model.MyCityInstitutionItemModel_;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model.MyCitySectionItemModel_;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.section.SectionListModelRealm;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u000022\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u0010\u0010\u0011JD\u0010\f\u001a\u00020\u000b2\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\u001a\u0010\b\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u00042\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006H\u0014R\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController;", "Lcom/airbnb/epoxy/Typed4EpoxyController;", "", "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;", "", "Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;", "", "institutionList", "sectionedList", "pluralText", "singularText", "Ll9/m;", "buildModels", "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController$a;", "callbacks", "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController$a;", "<init>", "(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController$a;)V", "a", "ui-dashboard_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class MyCityUIController extends Typed4EpoxyController<List<? extends InstitutionModelRealm>, Map<SectionListModelRealm, List<? extends InstitutionModelRealm>>, String, String> {
    private final a callbacks;

    public interface a {
        void c(InstitutionModelRealm institutionModelRealm);
    }

    public static final class b extends j implements x9.a<m> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ InstitutionModelRealm f16457b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(InstitutionModelRealm institutionModelRealm) {
            super(0);
            this.f16457b = institutionModelRealm;
        }

        @Override // x9.a
        public final m invoke() {
            MyCityUIController.this.callbacks.c(this.f16457b);
            return m.f9594a;
        }
    }

    public static final class c extends j implements x9.a<m> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ InstitutionModelRealm f16459b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(InstitutionModelRealm institutionModelRealm) {
            super(0);
            this.f16459b = institutionModelRealm;
        }

        @Override // x9.a
        public final m invoke() {
            MyCityUIController.this.callbacks.c(this.f16459b);
            return m.f9594a;
        }
    }

    public MyCityUIController(a callbacks) {
        h.f(callbacks, "callbacks");
        this.callbacks = callbacks;
    }

    @Override // com.airbnb.epoxy.Typed4EpoxyController
    public /* bridge */ /* synthetic */ void buildModels(List<? extends InstitutionModelRealm> list, Map<SectionListModelRealm, List<? extends InstitutionModelRealm>> map, String str, String str2) {
        buildModels2(list, (Map<SectionListModelRealm, List<InstitutionModelRealm>>) map, str, str2);
    }

    /* renamed from: buildModels, reason: avoid collision after fix types in other method */
    public void buildModels2(List<? extends InstitutionModelRealm> list, Map<SectionListModelRealm, List<InstitutionModelRealm>> map, String pluralText, String singularText) {
        StringBuilder sb2;
        StringBuilder sb3;
        h.f(pluralText, "pluralText");
        h.f(singularText, "singularText");
        if (map == null || map.isEmpty()) {
            if (list != null) {
                for (InstitutionModelRealm institutionModelRealm : list) {
                    MyCityInstitutionItemModel_ myCityInstitutionItemModel_ = new MyCityInstitutionItemModel_();
                    myCityInstitutionItemModel_.mo196id(Integer.valueOf(institutionModelRealm.getInstitutionCode()));
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
                    myCityInstitutionItemModel_.serviceCount(sb2.toString());
                    myCityInstitutionItemModel_.institution(institutionModelRealm);
                    myCityInstitutionItemModel_.listener((x9.a<m>) new c(institutionModelRealm));
                    add(myCityInstitutionItemModel_);
                }
                return;
            }
            return;
        }
        for (Map.Entry<SectionListModelRealm, List<InstitutionModelRealm>> entry : map.entrySet()) {
            SectionListModelRealm key = entry.getKey();
            List<InstitutionModelRealm> value = entry.getValue();
            MyCitySectionItemModel_ myCitySectionItemModel_ = new MyCitySectionItemModel_();
            myCitySectionItemModel_.mo208id(Integer.valueOf(key.getCode()));
            myCitySectionItemModel_.title(key.getName());
            add(myCitySectionItemModel_);
            for (InstitutionModelRealm institutionModelRealm2 : value) {
                MyCityInstitutionItemModel_ myCityInstitutionItemModel_2 = new MyCityInstitutionItemModel_();
                myCityInstitutionItemModel_2.mo196id(Integer.valueOf(institutionModelRealm2.getInstitutionCode()));
                if (institutionModelRealm2.getServiceCount() > 1) {
                    sb3 = new StringBuilder();
                    sb3.append(institutionModelRealm2.getServiceCount());
                    sb3.append(' ');
                    sb3.append(pluralText);
                } else {
                    sb3 = new StringBuilder();
                    sb3.append(institutionModelRealm2.getServiceCount());
                    sb3.append(' ');
                    sb3.append(singularText);
                }
                myCityInstitutionItemModel_2.serviceCount(sb3.toString());
                myCityInstitutionItemModel_2.institution(institutionModelRealm2);
                myCityInstitutionItemModel_2.listener((x9.a<m>) new b(institutionModelRealm2));
                add(myCityInstitutionItemModel_2);
            }
        }
    }
}
