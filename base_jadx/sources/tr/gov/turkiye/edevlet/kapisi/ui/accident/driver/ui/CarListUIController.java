package tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.ui;

import com.airbnb.epoxy.Typed2EpoxyController;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.VehicleInfo;
import x9.l;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\rB\u000f\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\"\u0010\u0007\u001a\u00020\u00062\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003H\u0014R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController;", "Lcom/airbnb/epoxy/Typed2EpoxyController;", "", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;", "carList", "selectedCar", "Ll9/m;", "buildModels", "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController$a;", "adapterCallbacks", "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController$a;", "<init>", "(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListUIController$a;)V", "a", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class CarListUIController extends Typed2EpoxyController<List<? extends VehicleInfo>, VehicleInfo> {
    private final a adapterCallbacks;

    public interface a {
        void n(VehicleInfo vehicleInfo);

        void o(VehicleInfo vehicleInfo);
    }

    public static final class b extends j implements l<VehicleInfo, m> {
        public b() {
            super(1);
        }

        @Override // x9.l
        public final m invoke(VehicleInfo vehicleInfo) {
            VehicleInfo it = vehicleInfo;
            a aVar = CarListUIController.this.adapterCallbacks;
            h.e(it, "it");
            aVar.n(it);
            return m.f9594a;
        }
    }

    public static final class c extends j implements l<VehicleInfo, m> {
        public c() {
            super(1);
        }

        @Override // x9.l
        public final m invoke(VehicleInfo vehicleInfo) {
            VehicleInfo it = vehicleInfo;
            a aVar = CarListUIController.this.adapterCallbacks;
            h.e(it, "it");
            aVar.o(it);
            return m.f9594a;
        }
    }

    public CarListUIController(a adapterCallbacks) {
        h.f(adapterCallbacks, "adapterCallbacks");
        this.adapterCallbacks = adapterCallbacks;
    }

    @Override // com.airbnb.epoxy.Typed2EpoxyController
    public /* bridge */ /* synthetic */ void buildModels(List<? extends VehicleInfo> list, VehicleInfo vehicleInfo) {
        buildModels2((List<VehicleInfo>) list, vehicleInfo);
    }

    /* renamed from: buildModels, reason: avoid collision after fix types in other method */
    public void buildModels2(List<VehicleInfo> list, VehicleInfo vehicleInfo) {
        if (list != null) {
            for (VehicleInfo vehicleInfo2 : list) {
                CarListModel_ carListModel_ = new CarListModel_();
                carListModel_.mo398id((CharSequence) (vehicleInfo2.getPlateNumber() + vehicleInfo2.getEngineNo()));
                carListModel_.carItem(vehicleInfo2);
                carListModel_.selectedCarPlateNumber(vehicleInfo != null ? vehicleInfo.getPlateNumber() : "00");
                carListModel_.selectCar((l<? super VehicleInfo, m>) new b());
                carListModel_.unselectCar((l<? super VehicleInfo, m>) new c());
                add(carListModel_);
            }
        }
    }
}
