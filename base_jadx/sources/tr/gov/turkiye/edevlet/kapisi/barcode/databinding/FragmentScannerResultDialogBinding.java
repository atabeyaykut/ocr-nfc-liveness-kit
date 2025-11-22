package tr.gov.turkiye.edevlet.kapisi.barcode.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputEditText;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class FragmentScannerResultDialogBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final LinearLayout f15811a;

    public FragmentScannerResultDialogBinding(@NonNull LinearLayout linearLayout) {
        this.f15811a = linearLayout;
    }

    @NonNull
    public static FragmentScannerResultDialogBinding bind(@NonNull View view) {
        int r02 = R.id.btnCopy;
        if (((MaterialButton) ViewBindings.findChildViewById(view, R.id.btnCopy)) != null) {
            r02 = R.id.edtResult;
            if (((TextInputEditText) ViewBindings.findChildViewById(view, R.id.edtResult)) != null) {
                return new FragmentScannerResultDialogBinding((LinearLayout) view);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static FragmentScannerResultDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_scanner_result_dialog, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f15811a;
    }
}
