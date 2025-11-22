package tr.gov.turkiye.edevlet.kapisi.dashboard.ui.controller;

import android.view.View;
import c5.v;
import com.airbnb.epoxy.Typed3EpoxyController;
import com.airbnb.epoxy.g;
import com.airbnb.epoxy.u;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;
import kotlin.Metadata;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model.ConceptServiceItemModel_;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model.DashboardGridItemModel_;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model.DiscoveryItemModel_;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model.EditorChoiceServiceItemModel_;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model.HeadLineItemModel_;
import tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import xf.q;
import xf.s;
import xf.y;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002 \u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00020\u0001:\u0001\u0010B\u000f\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ2\u0010\n\u001a\u00020\t2\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0002H\u0014R\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;", "Lcom/airbnb/epoxy/Typed3EpoxyController;", "", "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;", "", "Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;", "editorChoiceList", "nameSurname", "conceptServiceList", "Ll9/m;", "buildModels", "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$a;", "adapterCallbacks", "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$a;", "<init>", "(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$a;)V", "a", "ui-dashboard_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class DashboardUIController extends Typed3EpoxyController<List<? extends ServiceModelRealm>, String, List<? extends ConceptServiceModelRealm>> {
    private final a adapterCallbacks;

    public interface a {
        void d();

        void e(ConceptServiceModelRealm conceptServiceModelRealm);

        void i(ServiceModelRealm serviceModelRealm);

        void p(lf.b bVar);

        void u();
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.l<wf.c, l9.m> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ List<DashboardGridItemModel_> f16437a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(ArrayList arrayList) {
            super(1);
            this.f16437a = arrayList;
        }

        @Override // x9.l
        public final l9.m invoke(wf.c cVar) {
            wf.c carouselNoSnapBuilder = cVar;
            kotlin.jvm.internal.h.f(carouselNoSnapBuilder, "$this$carouselNoSnapBuilder");
            carouselNoSnapBuilder.a("secondLineContent");
            carouselNoSnapBuilder.b(this.f16437a);
            return l9.m.f9594a;
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.l<wf.c, l9.m> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ List<DiscoveryItemModel_> f16438a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(ArrayList arrayList) {
            super(1);
            this.f16438a = arrayList;
        }

        @Override // x9.l
        public final l9.m invoke(wf.c cVar) {
            wf.c carouselNoSnapBuilder = cVar;
            kotlin.jvm.internal.h.f(carouselNoSnapBuilder, "$this$carouselNoSnapBuilder");
            carouselNoSnapBuilder.a("thirdLineContent");
            carouselNoSnapBuilder.c();
            carouselNoSnapBuilder.b(this.f16438a);
            return l9.m.f9594a;
        }
    }

    public static final class d extends kotlin.jvm.internal.j implements x9.l<wf.c, l9.m> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ List<DiscoveryItemModel_> f16439a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(ArrayList arrayList) {
            super(1);
            this.f16439a = arrayList;
        }

        @Override // x9.l
        public final l9.m invoke(wf.c cVar) {
            wf.c carouselNoSnapBuilder = cVar;
            kotlin.jvm.internal.h.f(carouselNoSnapBuilder, "$this$carouselNoSnapBuilder");
            carouselNoSnapBuilder.a("fourthLineContent");
            carouselNoSnapBuilder.c();
            carouselNoSnapBuilder.b(this.f16439a);
            return l9.m.f9594a;
        }
    }

    public static final class e extends kotlin.jvm.internal.j implements x9.l<wf.c, l9.m> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ List<DiscoveryItemModel_> f16440a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(ArrayList arrayList) {
            super(1);
            this.f16440a = arrayList;
        }

        @Override // x9.l
        public final l9.m invoke(wf.c cVar) {
            wf.c carouselNoSnapBuilder = cVar;
            kotlin.jvm.internal.h.f(carouselNoSnapBuilder, "$this$carouselNoSnapBuilder");
            carouselNoSnapBuilder.a("fifthLineContent");
            carouselNoSnapBuilder.c();
            carouselNoSnapBuilder.b(this.f16440a);
            return l9.m.f9594a;
        }
    }

    public static final class f extends kotlin.jvm.internal.j implements x9.l<wf.c, l9.m> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ List<DashboardGridItemModel_> f16441a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(ArrayList arrayList) {
            super(1);
            this.f16441a = arrayList;
        }

        @Override // x9.l
        public final l9.m invoke(wf.c cVar) {
            wf.c carouselNoSnapBuilder = cVar;
            kotlin.jvm.internal.h.f(carouselNoSnapBuilder, "$this$carouselNoSnapBuilder");
            carouselNoSnapBuilder.a("firstLine");
            carouselNoSnapBuilder.b(this.f16441a);
            return l9.m.f9594a;
        }
    }

    public static final class g extends kotlin.jvm.internal.j implements x9.l<wf.c, l9.m> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ DashboardUIController f16442a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(DashboardUIController dashboardUIController) {
            super(1);
            lf.b bVar = lf.c.f9813a;
            this.f16442a = dashboardUIController;
        }

        @Override // x9.l
        public final l9.m invoke(wf.c cVar) {
            wf.c carouselNoSnapBuilder = cVar;
            kotlin.jvm.internal.h.f(carouselNoSnapBuilder, "$this$carouselNoSnapBuilder");
            carouselNoSnapBuilder.a("atamLine");
            HeadLineItemModel_ headLineItemModel_ = new HeadLineItemModel_();
            lf.b bVar = lf.c.f9813a;
            headLineItemModel_.mo159id(11);
            headLineItemModel_.dashboardItem(bVar);
            headLineItemModel_.listener((x9.l<? super lf.b, l9.m>) new tr.gov.turkiye.edevlet.kapisi.dashboard.ui.controller.a(this.f16442a));
            carouselNoSnapBuilder.add(headLineItemModel_);
            return l9.m.f9594a;
        }
    }

    public static final class h extends kotlin.jvm.internal.j implements x9.l<ServiceModelRealm, l9.m> {
        public h() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(ServiceModelRealm serviceModelRealm) {
            ServiceModelRealm service = serviceModelRealm;
            a aVar = DashboardUIController.this.adapterCallbacks;
            kotlin.jvm.internal.h.e(service, "service");
            aVar.i(service);
            return l9.m.f9594a;
        }
    }

    public static final class i extends kotlin.jvm.internal.j implements x9.l<ConceptServiceModelRealm, l9.m> {
        public i() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(ConceptServiceModelRealm conceptServiceModelRealm) {
            ConceptServiceModelRealm service = conceptServiceModelRealm;
            a aVar = DashboardUIController.this.adapterCallbacks;
            kotlin.jvm.internal.h.e(service, "service");
            aVar.e(service);
            return l9.m.f9594a;
        }
    }

    public static final class j extends kotlin.jvm.internal.j implements x9.l<lf.b, l9.m> {
        public j() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(lf.b bVar) {
            lf.b item = bVar;
            a aVar = DashboardUIController.this.adapterCallbacks;
            kotlin.jvm.internal.h.e(item, "item");
            aVar.p(item);
            return l9.m.f9594a;
        }
    }

    public static final class k extends kotlin.jvm.internal.j implements x9.l<lf.b, l9.m> {
        public k() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(lf.b bVar) {
            lf.b item = bVar;
            a aVar = DashboardUIController.this.adapterCallbacks;
            kotlin.jvm.internal.h.e(item, "item");
            aVar.p(item);
            return l9.m.f9594a;
        }
    }

    public static final class l extends kotlin.jvm.internal.j implements x9.l<lf.b, l9.m> {
        public l() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(lf.b bVar) {
            lf.b item = bVar;
            a aVar = DashboardUIController.this.adapterCallbacks;
            kotlin.jvm.internal.h.e(item, "item");
            aVar.p(item);
            return l9.m.f9594a;
        }
    }

    public static final class m extends kotlin.jvm.internal.j implements x9.l<lf.b, l9.m> {
        public m() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(lf.b bVar) {
            lf.b item = bVar;
            a aVar = DashboardUIController.this.adapterCallbacks;
            kotlin.jvm.internal.h.e(item, "item");
            aVar.p(item);
            return l9.m.f9594a;
        }
    }

    public static final class n extends kotlin.jvm.internal.j implements x9.l<lf.b, l9.m> {
        public n() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(lf.b bVar) {
            lf.b item = bVar;
            a aVar = DashboardUIController.this.adapterCallbacks;
            kotlin.jvm.internal.h.e(item, "item");
            aVar.p(item);
            return l9.m.f9594a;
        }
    }

    public DashboardUIController(a adapterCallbacks) {
        kotlin.jvm.internal.h.f(adapterCallbacks, "adapterCallbacks");
        this.adapterCallbacks = adapterCallbacks;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void buildModels$lambda$10$lambda$9(DashboardUIController this$0, View view) {
        kotlin.jvm.internal.h.f(this$0, "this$0");
        this$0.adapterCallbacks.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void buildModels$lambda$16$lambda$15(DashboardUIController this$0, View view) {
        kotlin.jvm.internal.h.f(this$0, "this$0");
        this$0.adapterCallbacks.u();
    }

    @Override // com.airbnb.epoxy.Typed3EpoxyController
    public void buildModels(List<? extends ServiceModelRealm> list, String str, List<? extends ConceptServiceModelRealm> list2) {
        u<?> uVar;
        u<?> uVar2;
        lf.b bVar = lf.c.f9813a;
        List<lf.b> listA0 = m9.k.A0(new lf.b[]{new lf.b(1, R.string.item_dashboard_favorite, R.drawable.dashboard_favorite, null), new lf.b(2, R.string.item_dashboard_announcement, R.drawable.dashboard_announcement, null), new lf.b(3, R.string.item_dashboard_messages, R.drawable.dashboard_message, null)});
        ArrayList arrayList = new ArrayList(m9.n.Q0(listA0));
        for (lf.b bVar2 : listA0) {
            arrayList.add(new DashboardGridItemModel_().mo159id(Integer.valueOf(bVar2.f9809a)).m76dashboardItem(bVar2).listener((x9.l<? super lf.b, l9.m>) new k()));
        }
        lf.b bVar3 = lf.c.f9813a;
        int r11 = 4;
        List<lf.b> listA02 = m9.k.A0(new lf.b[]{new lf.b(4, R.string.item_dashboard_most_used, R.drawable.dashboard_most_used, null), new lf.b(5, R.string.item_dashboard_newest, R.drawable.dashboard_newest, null), new lf.b(6, R.string.item_dashboard_ebys, R.drawable.dashboard_ebys, null)});
        ArrayList arrayList2 = new ArrayList(m9.n.Q0(listA02));
        for (lf.b bVar4 : listA02) {
            arrayList2.add(new DashboardGridItemModel_().mo159id(Integer.valueOf(bVar4.f9809a)).m76dashboardItem(bVar4).listener((x9.l<? super lf.b, l9.m>) new m()));
        }
        lf.b bVar5 = lf.c.f9813a;
        List<lf.b> listA03 = m9.k.A0(new lf.b[]{new lf.b(7, R.string.item_dashboard_barcode_verify, R.drawable.dashboard_barcode_verify, Integer.valueOf(R.string.item_dashboard_barcode_verify_explanation)), new lf.b(8, R.string.item_dashboard_barcode, R.drawable.dashboard_barcode_services, Integer.valueOf(R.string.item_dashboard_barcoded_services_explanation))});
        ArrayList arrayList3 = new ArrayList(m9.n.Q0(listA03));
        for (lf.b bVar6 : listA03) {
            arrayList3.add(new DiscoveryItemModel_().mo159id(Integer.valueOf(bVar6.f9809a)).m102dashboardItem(bVar6).listener((x9.l<? super lf.b, l9.m>) new n()));
        }
        lf.b bVar7 = lf.c.f9813a;
        List<lf.b> listA04 = m9.k.A0(new lf.b[]{new lf.b(9, R.string.item_dashboard_mycity, R.drawable.dashboard_mycity, Integer.valueOf(R.string.item_dashboard_mycity_explanation)), new lf.b(10, R.string.item_dashboard_wonder, R.drawable.dashboard_wonder_list, Integer.valueOf(R.string.item_dashboard_wonder_explanation))});
        ArrayList arrayList4 = new ArrayList(m9.n.Q0(listA04));
        for (lf.b bVar8 : listA04) {
            arrayList4.add(new DiscoveryItemModel_().mo159id(Integer.valueOf(bVar8.f9809a)).m102dashboardItem(bVar8).listener((x9.l<? super lf.b, l9.m>) new l()));
        }
        lf.b bVar9 = lf.c.f9813a;
        List<lf.b> listA05 = m9.k.A0(new lf.b[]{new lf.b(12, R.string.item_dashboard_mkt, R.drawable.dashboard_accident_report, Integer.valueOf(R.string.item_dashboard_mkt_explanation))});
        ArrayList arrayList5 = new ArrayList(m9.n.Q0(listA05));
        for (lf.b bVar10 : listA05) {
            arrayList5.add(new DiscoveryItemModel_().mo159id(Integer.valueOf(bVar10.f9809a)).m102dashboardItem(bVar10).listener((x9.l<? super lf.b, l9.m>) new j()));
        }
        lf.b bVar11 = lf.c.f9813a;
        y yVar = new y();
        yVar.b();
        yVar.c();
        yVar.a(str);
        add(yVar);
        v.o(this, new f(arrayList));
        xf.i iVar = new xf.i();
        iVar.a("dividerZero");
        add(iVar);
        v.o(this, new g(this));
        xf.i iVar2 = new xf.i();
        iVar2.a("dividerFirst");
        add(iVar2);
        List<? extends ServiceModelRealm> list3 = list;
        if (!(list3 == null || list3.isEmpty())) {
            List<? extends ServiceModelRealm> list4 = list;
            ArrayList arrayList6 = new ArrayList(m9.n.Q0(list4));
            for (ServiceModelRealm serviceModelRealm : list4) {
                arrayList6.add(new EditorChoiceServiceItemModel_().mo159id(serviceModelRealm.getServiceCode()).m128service(serviceModelRealm).listener((x9.l<? super ServiceModelRealm, l9.m>) new h()));
            }
            if (list.size() >= 6) {
                q qVar = new q();
                qVar.a("editorChoiceTitle");
                qVar.onMutation();
                qVar.f19238a = R.string.title_feature_line;
                qVar.onMutation();
                qVar.f19239b = R.string.title_show_all;
                zd.a aVar = new zd.a(r11, this);
                qVar.onMutation();
                qVar.f19240c = aVar;
                uVar2 = qVar;
            } else {
                s sVar = new s();
                sVar.a("editorChoiceTitle");
                sVar.b(R.string.title_feature_line);
                uVar2 = sVar;
            }
            add(uVar2);
            xf.n nVar = new xf.n();
            nVar.b("editorChoice");
            BitSet bitSet = nVar.f19230a;
            bitSet.set(1);
            bitSet.clear(2);
            nVar.onMutation();
            nVar.f19231b = 1.2f;
            g.b bVar12 = new g.b();
            bitSet.set(5);
            bitSet.clear(3);
            bitSet.clear(4);
            nVar.f19232c = -1;
            nVar.onMutation();
            nVar.f19233d = bVar12;
            bitSet.set(6);
            nVar.onMutation();
            nVar.f19234e = arrayList6;
            add(nVar);
            xf.i iVar3 = new xf.i();
            iVar3.a("dividerEditor");
            add(iVar3);
        }
        List<? extends ConceptServiceModelRealm> list5 = list2;
        if (!(list5 == null || list5.isEmpty())) {
            List<? extends ConceptServiceModelRealm> list6 = list2;
            ArrayList arrayList7 = new ArrayList(m9.n.Q0(list6));
            for (ConceptServiceModelRealm conceptServiceModelRealm : list6) {
                arrayList7.add(new ConceptServiceItemModel_().mo159id(conceptServiceModelRealm.getServiceCode()).m74service(conceptServiceModelRealm).listener((x9.l<? super ConceptServiceModelRealm, l9.m>) new i()));
            }
            if (list2.size() >= 6) {
                q qVar2 = new q();
                qVar2.a("conceptServiceTitle");
                qVar2.onMutation();
                qVar2.f19238a = R.string.title_concept_line;
                qVar2.onMutation();
                qVar2.f19239b = R.string.title_show_all;
                zd.d dVar = new zd.d(5, this);
                qVar2.onMutation();
                qVar2.f19240c = dVar;
                uVar = qVar2;
            } else {
                s sVar2 = new s();
                sVar2.a("conceptServiceTitle");
                sVar2.b(R.string.title_concept_line);
                uVar = sVar2;
            }
            add(uVar);
            xf.n nVar2 = new xf.n();
            nVar2.b("conceptService");
            BitSet bitSet2 = nVar2.f19230a;
            bitSet2.set(1);
            bitSet2.clear(2);
            nVar2.onMutation();
            nVar2.f19231b = 1.2f;
            g.b bVar13 = new g.b();
            bitSet2.set(5);
            bitSet2.clear(3);
            bitSet2.clear(4);
            nVar2.f19232c = -1;
            nVar2.onMutation();
            nVar2.f19233d = bVar13;
            bitSet2.set(6);
            nVar2.onMutation();
            nVar2.f19234e = arrayList7;
            add(nVar2);
            xf.i iVar4 = new xf.i();
            iVar4.a("dividerConcept");
            add(iVar4);
        }
        s sVar3 = new s();
        sVar3.a("secondLineTitle");
        sVar3.b(R.string.title_second_line);
        add(sVar3);
        v.o(this, new b(arrayList2));
        xf.i iVar5 = new xf.i();
        iVar5.a("dividerSecond");
        add(iVar5);
        s sVar4 = new s();
        sVar4.a("thirdLineTitle");
        sVar4.b(R.string.title_third_line);
        add(sVar4);
        v.o(this, new c(arrayList3));
        xf.i iVar6 = new xf.i();
        iVar6.a("dividerThird");
        add(iVar6);
        s sVar5 = new s();
        sVar5.a("fourthLineTitle");
        sVar5.b(R.string.title_fourth_line);
        add(sVar5);
        v.o(this, new d(arrayList4));
        xf.i iVar7 = new xf.i();
        iVar7.a("dividerFourth");
        add(iVar7);
        s sVar6 = new s();
        sVar6.a("fifthLineTitle");
        sVar6.b(R.string.title_fifth_line);
        add(sVar6);
        v.o(this, new e(arrayList5));
    }
}
