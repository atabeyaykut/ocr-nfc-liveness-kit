package tr.gov.turkiye.edevlet.kapisi.scan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ResultErrorDialogBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16706a;

    public ResultErrorDialogBinding(@NonNull ConstraintLayout constraintLayout) {
        this.f16706a = constraintLayout;
    }

    @NonNull
    public static ResultErrorDialogBinding bind(@NonNull View view) {
        int r02 = R.id.result_dialog_status_container;
        if (((LinearLayout) ViewBindings.findChildViewById(view, R.id.result_dialog_status_container)) != null) {
            r02 = R.id.result_dialog_status_icon;
            if (((ImageView) ViewBindings.findChildViewById(view, R.id.result_dialog_status_icon)) != null) {
                r02 = R.id.result_dialog_txt_content;
                if (((TextView) ViewBindings.findChildViewById(view, R.id.result_dialog_txt_content)) != null) {
                    return new ResultErrorDialogBinding((ConstraintLayout) view);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ResultErrorDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.result_error_dialog, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16706a;
    }
}
