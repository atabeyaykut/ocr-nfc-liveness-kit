package com.esafirm.imagepicker.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.esafirm.imagepicker.view.SnackBarView;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes.dex */
public final class EfFragmentImagePickerBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f2847a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final SnackBarView f2848b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final ProgressBar f2849c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final RecyclerView f2850d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f2851e;

    public EfFragmentImagePickerBinding(@NonNull RelativeLayout relativeLayout, @NonNull SnackBarView snackBarView, @NonNull ProgressBar progressBar, @NonNull RecyclerView recyclerView, @NonNull TextView textView) {
        this.f2847a = relativeLayout;
        this.f2848b = snackBarView;
        this.f2849c = progressBar;
        this.f2850d = recyclerView;
        this.f2851e = textView;
    }

    @NonNull
    public static EfFragmentImagePickerBinding bind(@NonNull View view) {
        int r02 = R.id.ef_snackbar;
        SnackBarView snackBarView = (SnackBarView) ViewBindings.findChildViewById(view, R.id.ef_snackbar);
        if (snackBarView != null) {
            r02 = R.id.progress_bar;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progress_bar);
            if (progressBar != null) {
                r02 = R.id.recyclerView;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recyclerView);
                if (recyclerView != null) {
                    r02 = R.id.tv_empty_images;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_empty_images);
                    if (textView != null) {
                        return new EfFragmentImagePickerBinding((RelativeLayout) view, snackBarView, progressBar, recyclerView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static EfFragmentImagePickerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.ef_fragment_image_picker, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f2847a;
    }
}
