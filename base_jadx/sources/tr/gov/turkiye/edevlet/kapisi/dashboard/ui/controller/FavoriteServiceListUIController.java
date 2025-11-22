package tr.gov.turkiye.edevlet.kapisi.dashboard.ui.controller;

import b8.f;
import com.airbnb.epoxy.TypedEpoxyController;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model.FavoriteServiceListModel_;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import x9.l;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001\fB\u000f\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0014R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/FavoriteServiceListUIController;", "Lcom/airbnb/epoxy/TypedEpoxyController;", "", "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;", "data", "Ll9/m;", "buildModels", "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/FavoriteServiceListUIController$a;", "callbacks", "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/FavoriteServiceListUIController$a;", "<init>", "(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/FavoriteServiceListUIController$a;)V", "a", "ui-dashboard_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class FavoriteServiceListUIController extends TypedEpoxyController<List<? extends ServiceModelRealm>> {
    private final a callbacks;

    public interface a {
        void a(ServiceModelRealm serviceModelRealm);

        void l(ServiceModelRealm serviceModelRealm, int r22);
    }

    public static final class b extends j implements l<ServiceModelRealm, m> {
        public b() {
            super(1);
        }

        @Override // x9.l
        public final m invoke(ServiceModelRealm serviceModelRealm) {
            ServiceModelRealm it = serviceModelRealm;
            a aVar = FavoriteServiceListUIController.this.callbacks;
            h.e(it, "it");
            aVar.a(it);
            return m.f9594a;
        }
    }

    public static final class c extends j implements l<ServiceModelRealm, m> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f16455b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(int r22) {
            super(1);
            this.f16455b = r22;
        }

        @Override // x9.l
        public final m invoke(ServiceModelRealm serviceModelRealm) {
            ServiceModelRealm it = serviceModelRealm;
            a aVar = FavoriteServiceListUIController.this.callbacks;
            h.e(it, "it");
            aVar.l(it, this.f16455b);
            return m.f9594a;
        }
    }

    public FavoriteServiceListUIController(a callbacks) {
        h.f(callbacks, "callbacks");
        this.callbacks = callbacks;
    }

    @Override // com.airbnb.epoxy.TypedEpoxyController
    public void buildModels(List<? extends ServiceModelRealm> list) {
        if (list != null) {
            int r12 = 0;
            for (Object obj : list) {
                int r32 = r12 + 1;
                if (r12 < 0) {
                    f.k0();
                    throw null;
                }
                ServiceModelRealm serviceModelRealm = (ServiceModelRealm) obj;
                FavoriteServiceListModel_ favoriteServiceListModel_ = new FavoriteServiceListModel_();
                favoriteServiceListModel_.mo147id(serviceModelRealm.getServiceCode());
                favoriteServiceListModel_.service(serviceModelRealm);
                favoriteServiceListModel_.serviceIndex(Integer.valueOf(r12));
                favoriteServiceListModel_.listener((l<? super ServiceModelRealm, m>) new b());
                favoriteServiceListModel_.unFavoriteListener((l<? super ServiceModelRealm, m>) new c(r12));
                add(favoriteServiceListModel_);
                r12 = r32;
            }
        }
    }
}
