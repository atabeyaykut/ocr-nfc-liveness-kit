package tr.gov.turkiye.edevlet.kapisi.dashboard.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.chip.Chip;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ItemChoiceChipBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final Chip f16258a;

    public ItemChoiceChipBinding(@NonNull Chip chip) {
        this.f16258a = chip;
    }

    @NonNull
    public static ItemChoiceChipBinding bind(@NonNull View view) {
        if (view != null) {
            return new ItemChoiceChipBinding((Chip) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static ItemChoiceChipBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_choice_chip, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16258a;
    }
}
