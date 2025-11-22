package com.esafirm.imagepicker.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.esafirm.imagepicker.view.SquareFrameLayout;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes.dex */
public final class EfImagepickerItemImageBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final SquareFrameLayout f2856a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f2857b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f2858c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f2859d;

    public EfImagepickerItemImageBinding(@NonNull SquareFrameLayout squareFrameLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull View view) {
        this.f2856a = squareFrameLayout;
        this.f2857b = textView;
        this.f2858c = imageView;
        this.f2859d = view;
    }

    @NonNull
    public static EfImagepickerItemImageBinding bind(@NonNull View view) {
        int r02 = R.id.ef_item_file_type_indicator;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.ef_item_file_type_indicator);
        if (textView != null) {
            r02 = R.id.image_view;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.image_view);
            if (imageView != null) {
                r02 = R.id.view_alpha;
                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.view_alpha);
                if (viewFindChildViewById != null) {
                    return new EfImagepickerItemImageBinding((SquareFrameLayout) view, textView, imageView, viewFindChildViewById);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static EfImagepickerItemImageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.ef_imagepicker_item_image, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f2856a;
    }
}
