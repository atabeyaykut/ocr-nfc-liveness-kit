package com.esafirm.imagepicker.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.Toolbar;
import androidx.viewbinding.ViewBinding;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes.dex */
public final class EfImagepickerToolbarBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final Toolbar f2861a;

    public EfImagepickerToolbarBinding(@NonNull Toolbar toolbar) {
        this.f2861a = toolbar;
    }

    @NonNull
    public static EfImagepickerToolbarBinding bind(@NonNull View view) {
        if (view != null) {
            return new EfImagepickerToolbarBinding((Toolbar) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static EfImagepickerToolbarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.ef_imagepicker_toolbar, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f2861a;
    }
}
