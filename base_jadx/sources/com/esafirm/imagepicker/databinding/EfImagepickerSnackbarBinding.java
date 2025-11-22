package com.esafirm.imagepicker.databinding;

import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes.dex */
public final class EfImagepickerSnackbarBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final View f2860a;

    public EfImagepickerSnackbarBinding(@NonNull View view) {
        this.f2860a = view;
    }

    @NonNull
    public static EfImagepickerSnackbarBinding bind(@NonNull View view) {
        int r02 = R.id.ef_snackbar_btn_action;
        if (((Button) ViewBindings.findChildViewById(view, R.id.ef_snackbar_btn_action)) != null) {
            r02 = R.id.ef_snackbar_txt_bottom_caption;
            if (((TextView) ViewBindings.findChildViewById(view, R.id.ef_snackbar_txt_bottom_caption)) != null) {
                return new EfImagepickerSnackbarBinding(view);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f2860a;
    }
}
