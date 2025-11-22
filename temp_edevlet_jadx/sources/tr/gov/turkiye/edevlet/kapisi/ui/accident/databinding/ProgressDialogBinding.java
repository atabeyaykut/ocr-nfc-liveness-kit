package tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ProgressDialogBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17229a;

    public ProgressDialogBinding(@NonNull ConstraintLayout constraintLayout) {
        this.f17229a = constraintLayout;
    }

    @NonNull
    public static ProgressDialogBinding bind(@NonNull View view) {
        int r02 = R.id.mkt_fragment_progressBar;
        if (((ProgressBar) ViewBindings.findChildViewById(view, R.id.mkt_fragment_progressBar)) != null) {
            r02 = R.id.mkt_progress_content;
            if (((TextView) ViewBindings.findChildViewById(view, R.id.mkt_progress_content)) != null) {
                return new ProgressDialogBinding((ConstraintLayout) view);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ProgressDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.progress_dialog, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17229a;
    }
}
