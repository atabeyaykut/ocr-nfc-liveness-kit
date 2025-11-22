package tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.ui;

import android.view.View;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import he.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.VehicleInfo;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.ItemCarBinding;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.ui.CarListModel;
import x9.l;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u001f\u0010 J\b\u0010\u0004\u001a\u00020\u0003H\u0014J\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R.\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u00158\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR.\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u00158\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001c\u0010\u0017\u001a\u0004\b\u001d\u0010\u0019\"\u0004\b\u001e\u0010\u001b¨\u0006!"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;", "Lhe/a;", "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCarBinding;", "", "getDefaultLayout", "Ll9/m;", "bind", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;", "carItem", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;", "getCarItem", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;", "setCarItem", "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;)V", "", "selectedCarPlateNumber", "Ljava/lang/String;", "getSelectedCarPlateNumber", "()Ljava/lang/String;", "setSelectedCarPlateNumber", "(Ljava/lang/String;)V", "Lkotlin/Function1;", "selectCar", "Lx9/l;", "getSelectCar", "()Lx9/l;", "setSelectCar", "(Lx9/l;)V", "unselectCar", "getUnselectCar", "setUnselectCar", "<init>", "()V", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class CarListModel extends a<ItemCarBinding> {
    public VehicleInfo carItem;
    public l<? super VehicleInfo, m> selectCar;
    public String selectedCarPlateNumber;
    public l<? super VehicleInfo, m> unselectCar;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$0(ItemCarBinding this_bind, CarListModel this$0, View view) {
        h.f(this_bind, "$this_bind");
        h.f(this$0, "this$0");
        (this_bind.f17202c.isChecked() ? this$0.getUnselectCar() : this$0.getSelectCar()).invoke(this$0.getCarItem());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$1(CarListModel this$0, CompoundButton compoundButton, boolean z10) {
        h.f(this$0, "this$0");
        (z10 ? this$0.getSelectCar() : this$0.getUnselectCar()).invoke(this$0.getCarItem());
    }

    @Override // he.a
    public void bind(final ItemCarBinding itemCarBinding) {
        h.f(itemCarBinding, "<this>");
        itemCarBinding.f17203d.setText(getCarItem().getPlateNumber());
        boolean zIsSelected = getCarItem().isSelected();
        RadioButton radioButton = itemCarBinding.f17202c;
        radioButton.setChecked(zIsSelected);
        itemCarBinding.f17201b.setOnClickListener(new View.OnClickListener() { // from class: eh.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarListModel.bind$lambda$0(itemCarBinding, this, view);
            }
        });
        radioButton.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: eh.b
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
                CarListModel.bind$lambda$1(this.f5377a, compoundButton, z10);
            }
        });
    }

    public final VehicleInfo getCarItem() {
        VehicleInfo vehicleInfo = this.carItem;
        if (vehicleInfo != null) {
            return vehicleInfo;
        }
        h.n("carItem");
        throw null;
    }

    @Override // com.airbnb.epoxy.u
    public int getDefaultLayout() {
        return R.layout.item_car;
    }

    public final l<VehicleInfo, m> getSelectCar() {
        l lVar = this.selectCar;
        if (lVar != null) {
            return lVar;
        }
        h.n("selectCar");
        throw null;
    }

    public final String getSelectedCarPlateNumber() {
        String str = this.selectedCarPlateNumber;
        if (str != null) {
            return str;
        }
        h.n("selectedCarPlateNumber");
        throw null;
    }

    public final l<VehicleInfo, m> getUnselectCar() {
        l lVar = this.unselectCar;
        if (lVar != null) {
            return lVar;
        }
        h.n("unselectCar");
        throw null;
    }

    public final void setCarItem(VehicleInfo vehicleInfo) {
        h.f(vehicleInfo, "<set-?>");
        this.carItem = vehicleInfo;
    }

    public final void setSelectCar(l<? super VehicleInfo, m> lVar) {
        h.f(lVar, "<set-?>");
        this.selectCar = lVar;
    }

    public final void setSelectedCarPlateNumber(String str) {
        h.f(str, "<set-?>");
        this.selectedCarPlateNumber = str;
    }

    public final void setUnselectCar(l<? super VehicleInfo, m> lVar) {
        h.f(lVar, "<set-?>");
        this.unselectCar = lVar;
    }
}
