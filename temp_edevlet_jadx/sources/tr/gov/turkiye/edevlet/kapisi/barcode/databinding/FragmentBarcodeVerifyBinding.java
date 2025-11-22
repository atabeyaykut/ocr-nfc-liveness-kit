package tr.gov.turkiye.edevlet.kapisi.barcode.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class FragmentBarcodeVerifyBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f15796a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final Button f15797b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f15798c;

    public FragmentBarcodeVerifyBinding(@NonNull ConstraintLayout constraintLayout, @NonNull Button button, @NonNull Button button2) {
        this.f15796a = constraintLayout;
        this.f15797b = button;
        this.f15798c = button2;
    }

    @NonNull
    public static FragmentBarcodeVerifyBinding bind(@NonNull View view) {
        int r02 = R.id.btn_verify_document_info;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_verify_document_info);
        if (button != null) {
            r02 = R.id.btn_verify_qr;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.btn_verify_qr);
            if (button2 != null) {
                r02 = R.id.txt_main_explanation;
                if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_main_explanation)) != null) {
                    r02 = R.id.txt_or_title;
                    if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_or_title)) != null) {
                        r02 = R.id.txt_sub_title;
                        if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_sub_title)) != null) {
                            return new FragmentBarcodeVerifyBinding((ConstraintLayout) view, button, button2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static FragmentBarcodeVerifyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_barcode_verify, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f15796a;
    }
}
