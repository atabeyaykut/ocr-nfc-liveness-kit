package com.esafirm.imagepicker.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes.dex */
public final class EfActivityImagePickerBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f2846a;

    public EfActivityImagePickerBinding(@NonNull RelativeLayout relativeLayout) {
        this.f2846a = relativeLayout;
    }

    @NonNull
    public static EfActivityImagePickerBinding bind(@NonNull View view) {
        int r02 = R.id.ef_imagepicker_fragment_placeholder;
        if (((FrameLayout) ViewBindings.findChildViewById(view, R.id.ef_imagepicker_fragment_placeholder)) != null) {
            RelativeLayout relativeLayout = (RelativeLayout) view;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.toolbar);
            if (viewFindChildViewById != null) {
                EfImagepickerToolbarBinding.bind(viewFindChildViewById);
                return new EfActivityImagePickerBinding(relativeLayout);
            }
            r02 = R.id.toolbar;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static EfActivityImagePickerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.ef_activity_image_picker, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f2846a;
    }
}
