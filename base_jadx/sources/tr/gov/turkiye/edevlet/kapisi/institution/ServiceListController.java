package tr.gov.turkiye.edevlet.kapisi.institution;

import com.airbnb.epoxy.TypedEpoxyController;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import x9.l;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001\fB\u000f\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0014R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;", "Lcom/airbnb/epoxy/TypedEpoxyController;", "", "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;", "data", "Ll9/m;", "buildModels", "Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController$a;", "callbacks", "Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController$a;", "<init>", "(Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController$a;)V", "a", "ui-institution-detail_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class ServiceListController extends TypedEpoxyController<List<? extends ServiceModelRealm>> {
    private final a callbacks;

    public interface a {
        void a(ServiceModelRealm serviceModelRealm);

        void b(ServiceModelRealm serviceModelRealm, boolean z10);
    }

    public static final class b extends j implements l<ServiceModelRealm, m> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ServiceModelRealm f16517b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(ServiceModelRealm serviceModelRealm) {
            super(1);
            this.f16517b = serviceModelRealm;
        }

        @Override // x9.l
        public final m invoke(ServiceModelRealm serviceModelRealm) {
            ServiceListController.this.callbacks.b(this.f16517b, true);
            return m.f9594a;
        }
    }

    public static final class c extends j implements l<ServiceModelRealm, m> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ServiceModelRealm f16519b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(ServiceModelRealm serviceModelRealm) {
            super(1);
            this.f16519b = serviceModelRealm;
        }

        @Override // x9.l
        public final m invoke(ServiceModelRealm serviceModelRealm) {
            ServiceListController.this.callbacks.b(this.f16519b, false);
            return m.f9594a;
        }
    }

    public static final class d extends j implements l<ServiceModelRealm, m> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ServiceModelRealm f16521b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(ServiceModelRealm serviceModelRealm) {
            super(1);
            this.f16521b = serviceModelRealm;
        }

        @Override // x9.l
        public final m invoke(ServiceModelRealm serviceModelRealm) {
            ServiceListController.this.callbacks.a(this.f16521b);
            return m.f9594a;
        }
    }

    public ServiceListController(a callbacks) {
        h.f(callbacks, "callbacks");
        this.callbacks = callbacks;
    }

    @Override // com.airbnb.epoxy.TypedEpoxyController
    public void buildModels(List<? extends ServiceModelRealm> list) {
        if (list != null) {
            for (ServiceModelRealm serviceModelRealm : list) {
                InstitutionServiceItemModel_ institutionServiceItemModel_ = new InstitutionServiceItemModel_();
                institutionServiceItemModel_.id(serviceModelRealm.getServiceCode());
                institutionServiceItemModel_.service(serviceModelRealm);
                institutionServiceItemModel_.favoriteListener((l<? super ServiceModelRealm, m>) new b(serviceModelRealm));
                institutionServiceItemModel_.unFavoriteListener((l<? super ServiceModelRealm, m>) new c(serviceModelRealm));
                institutionServiceItemModel_.listener((l<? super ServiceModelRealm, m>) new d(serviceModelRealm));
                add(institutionServiceItemModel_);
            }
        }
    }
}
