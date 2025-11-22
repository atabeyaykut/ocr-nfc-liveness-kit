package tr.gov.turkiye.edevlet.kapisi.barcode.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ItemDynamicFieldBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f15812a;

    public ItemDynamicFieldBinding(@NonNull ConstraintLayout constraintLayout) {
        this.f15812a = constraintLayout;
    }

    @NonNull
    public static ItemDynamicFieldBinding bind(@NonNull View view) {
        int r02 = R.id.edit_manual;
        if (((TextInputEditText) ViewBindings.findChildViewById(view, R.id.edit_manual)) != null) {
            r02 = R.id.txt_input_manual;
            if (((TextInputLayout) ViewBindings.findChildViewById(view, R.id.txt_input_manual)) != null) {
                return new ItemDynamicFieldBinding((ConstraintLayout) view);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ItemDynamicFieldBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_dynamic_field, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f15812a;
    }
}
