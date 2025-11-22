package tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.ui;

import androidx.annotation.LayoutRes;
import androidx.annotation.Nullable;
import androidx.browser.browseractions.b;
import com.airbnb.epoxy.i0;
import com.airbnb.epoxy.k0;
import com.airbnb.epoxy.l0;
import com.airbnb.epoxy.m0;
import com.airbnb.epoxy.p;
import com.airbnb.epoxy.u;
import com.airbnb.epoxy.x;
import com.airbnb.epoxy.y;
import he.c;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.VehicleInfo;
import x9.l;

/* loaded from: classes3.dex */
public class CarListModel_ extends CarListModel implements y<c>, eh.c {
    private i0<CarListModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<CarListModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<CarListModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<CarListModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

    @Override // com.airbnb.epoxy.u
    public void addTo(p pVar) {
        super.addTo(pVar);
        addWithDebugValidation(pVar);
    }

    public VehicleInfo carItem() {
        return this.carItem;
    }

    @Override // eh.c
    public CarListModel_ carItem(VehicleInfo vehicleInfo) {
        onMutation();
        this.carItem = vehicleInfo;
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CarListModel_) || !super.equals(obj)) {
            return false;
        }
        CarListModel_ carListModel_ = (CarListModel_) obj;
        carListModel_.getClass();
        VehicleInfo vehicleInfo = this.carItem;
        if (vehicleInfo == null ? carListModel_.carItem != null : !vehicleInfo.equals(carListModel_.carItem)) {
            return false;
        }
        String str = this.selectedCarPlateNumber;
        if (str == null ? carListModel_.selectedCarPlateNumber != null : !str.equals(carListModel_.selectedCarPlateNumber)) {
            return false;
        }
        l<? super VehicleInfo, m> lVar = this.selectCar;
        if (lVar == null ? carListModel_.selectCar != null : !lVar.equals(carListModel_.selectCar)) {
            return false;
        }
        l<? super VehicleInfo, m> lVar2 = this.unselectCar;
        l<? super VehicleInfo, m> lVar3 = carListModel_.unselectCar;
        return lVar2 == null ? lVar3 == null : lVar2.equals(lVar3);
    }

    @Override // com.airbnb.epoxy.y
    public void handlePostBind(c cVar, int r22) {
        validateStateHasNotChangedSinceAdded("The model was changed during the bind call.", r22);
    }

    @Override // com.airbnb.epoxy.y
    public void handlePreBind(x xVar, c cVar, int r32) {
        validateStateHasNotChangedSinceAdded("The model was changed between being added to the controller and being bound.", r32);
    }

    @Override // com.airbnb.epoxy.u
    public int hashCode() {
        int r02 = b.c(super.hashCode(), 31, 0, 31, 0, 31, 0, 31, 0, 31);
        VehicleInfo vehicleInfo = this.carItem;
        int r03 = (r02 + (vehicleInfo != null ? vehicleInfo.hashCode() : 0)) * 31;
        String str = this.selectedCarPlateNumber;
        int r04 = (r03 + (str != null ? str.hashCode() : 0)) * 31;
        l<? super VehicleInfo, m> lVar = this.selectCar;
        int r05 = (r04 + (lVar != null ? lVar.hashCode() : 0)) * 31;
        l<? super VehicleInfo, m> lVar2 = this.unselectCar;
        return r05 + (lVar2 != null ? lVar2.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public CarListModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public CarListModel_ m396id(long j10) {
        super.m396id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public CarListModel_ m397id(long j10, long j11) {
        super.m397id(j10, j11);
        return this;
    }

    @Override // eh.c
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public CarListModel_ mo398id(@Nullable CharSequence charSequence) {
        super.mo398id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public CarListModel_ m399id(@Nullable CharSequence charSequence, long j10) {
        super.m399id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public CarListModel_ m400id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m400id(charSequence, charSequenceArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public CarListModel_ m401id(@Nullable Number... numberArr) {
        super.m401id(numberArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public CarListModel_ m402layout(@LayoutRes int r12) {
        super.m402layout(r12);
        return this;
    }

    public /* bridge */ /* synthetic */ eh.c onBind(i0 i0Var) {
        return m403onBind((i0<CarListModel_, c>) i0Var);
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public CarListModel_ m403onBind(i0<CarListModel_, c> i0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ eh.c onUnbind(k0 k0Var) {
        return m404onUnbind((k0<CarListModel_, c>) k0Var);
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public CarListModel_ m404onUnbind(k0<CarListModel_, c> k0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ eh.c onVisibilityChanged(l0 l0Var) {
        return m405onVisibilityChanged((l0<CarListModel_, c>) l0Var);
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public CarListModel_ m405onVisibilityChanged(l0<CarListModel_, c> l0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public /* bridge */ /* synthetic */ eh.c onVisibilityStateChanged(m0 m0Var) {
        return m406onVisibilityStateChanged((m0<CarListModel_, c>) m0Var);
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public CarListModel_ m406onVisibilityStateChanged(m0<CarListModel_, c> m0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    @Override // com.airbnb.epoxy.u
    public CarListModel_ reset() {
        this.carItem = null;
        this.selectedCarPlateNumber = null;
        this.selectCar = null;
        this.unselectCar = null;
        super.reset();
        return this;
    }

    @Override // eh.c
    public /* bridge */ /* synthetic */ eh.c selectCar(l lVar) {
        return selectCar((l<? super VehicleInfo, m>) lVar);
    }

    @Override // eh.c
    public CarListModel_ selectCar(l<? super VehicleInfo, m> lVar) {
        onMutation();
        this.selectCar = lVar;
        return this;
    }

    public l<? super VehicleInfo, m> selectCar() {
        return this.selectCar;
    }

    public String selectedCarPlateNumber() {
        return this.selectedCarPlateNumber;
    }

    @Override // eh.c
    public CarListModel_ selectedCarPlateNumber(String str) {
        onMutation();
        this.selectedCarPlateNumber = str;
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public CarListModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public CarListModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public CarListModel_ m407spanSizeOverride(@Nullable u.c cVar) {
        super.m407spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "CarListModel_{carItem=" + this.carItem + ", selectedCarPlateNumber=" + this.selectedCarPlateNumber + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((CarListModel_) cVar);
    }

    @Override // eh.c
    public /* bridge */ /* synthetic */ eh.c unselectCar(l lVar) {
        return unselectCar((l<? super VehicleInfo, m>) lVar);
    }

    @Override // eh.c
    public CarListModel_ unselectCar(l<? super VehicleInfo, m> lVar) {
        onMutation();
        this.unselectCar = lVar;
        return this;
    }

    public l<? super VehicleInfo, m> unselectCar() {
        return this.unselectCar;
    }
}
