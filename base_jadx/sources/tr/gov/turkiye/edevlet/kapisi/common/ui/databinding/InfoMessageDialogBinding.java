package tr.gov.turkiye.edevlet.kapisi.common.ui.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class InfoMessageDialogBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f15892a;

    public InfoMessageDialogBinding(@NonNull ConstraintLayout constraintLayout) {
        this.f15892a = constraintLayout;
    }

    @NonNull
    public static InfoMessageDialogBinding bind(@NonNull View view) {
        int r02 = R.id.result_dialog_status_icon;
        if (((ImageView) ViewBindings.findChildViewById(view, R.id.result_dialog_status_icon)) != null) {
            r02 = R.id.result_dialog_txt_content;
            if (((TextView) ViewBindings.findChildViewById(view, R.id.result_dialog_txt_content)) != null) {
                r02 = R.id.result_dialog_txt_title;
                if (((TextView) ViewBindings.findChildViewById(view, R.id.result_dialog_txt_title)) != null) {
                    return new InfoMessageDialogBinding((ConstraintLayout) view);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static InfoMessageDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.info_message_dialog, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f15892a;
    }
}
