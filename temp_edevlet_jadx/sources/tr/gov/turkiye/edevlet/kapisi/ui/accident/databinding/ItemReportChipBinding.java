package tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.chip.Chip;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ItemReportChipBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final Chip f17226a;

    public ItemReportChipBinding(@NonNull Chip chip) {
        this.f17226a = chip;
    }

    @NonNull
    public static ItemReportChipBinding bind(@NonNull View view) {
        if (view != null) {
            return new ItemReportChipBinding((Chip) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static ItemReportChipBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_report_chip, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17226a;
    }
}
