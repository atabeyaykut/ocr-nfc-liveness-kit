package tr.gov.turkiye.edevlet.kapisi.verification.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ReadCardDialogBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17652a;

    public ReadCardDialogBinding(@NonNull ConstraintLayout constraintLayout) {
        this.f17652a = constraintLayout;
    }

    @NonNull
    public static ReadCardDialogBinding bind(@NonNull View view) {
        int r02 = R.id.read_dialog_message;
        if (((TextView) ViewBindings.findChildViewById(view, R.id.read_dialog_message)) != null) {
            r02 = R.id.read_dialog_title;
            if (((TextView) ViewBindings.findChildViewById(view, R.id.read_dialog_title)) != null) {
                return new ReadCardDialogBinding((ConstraintLayout) view);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ReadCardDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.read_card_dialog, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17652a;
    }
}
