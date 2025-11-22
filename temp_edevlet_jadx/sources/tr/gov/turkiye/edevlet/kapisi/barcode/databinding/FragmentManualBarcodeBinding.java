package tr.gov.turkiye.edevlet.kapisi.barcode.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class FragmentManualBarcodeBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f15799a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final Button f15800b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextInputEditText f15801c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f15802d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextInputLayout f15803e;

    public FragmentManualBarcodeBinding(@NonNull ConstraintLayout constraintLayout, @NonNull Button button, @NonNull TextInputEditText textInputEditText, @NonNull ConstraintLayout constraintLayout2, @NonNull TextInputLayout textInputLayout) {
        this.f15799a = constraintLayout;
        this.f15800b = button;
        this.f15801c = textInputEditText;
        this.f15802d = constraintLayout2;
        this.f15803e = textInputLayout;
    }

    @NonNull
    public static FragmentManualBarcodeBinding bind(@NonNull View view) {
        int r02 = R.id.btn_manual_next;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_manual_next);
        if (button != null) {
            r02 = R.id.edit_manual_barcode;
            TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.edit_manual_barcode);
            if (textInputEditText != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                r02 = R.id.txt_input_manual_barcode;
                TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.txt_input_manual_barcode);
                if (textInputLayout != null) {
                    r02 = R.id.txt_manual_barcode_header;
                    if (((TextView) ViewBindings.findChildViewById(view, R.id.txt_manual_barcode_header)) != null) {
                        return new FragmentManualBarcodeBinding(constraintLayout, button, textInputEditText, constraintLayout, textInputLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static FragmentManualBarcodeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_manual_barcode, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f15799a;
    }
}
