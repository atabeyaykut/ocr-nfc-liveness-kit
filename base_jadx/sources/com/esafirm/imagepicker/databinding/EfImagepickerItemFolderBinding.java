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
public final class EfImagepickerItemFolderBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final SquareFrameLayout f2852a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f2853b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f2854c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f2855d;

    public EfImagepickerItemFolderBinding(@NonNull SquareFrameLayout squareFrameLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f2852a = squareFrameLayout;
        this.f2853b = imageView;
        this.f2854c = textView;
        this.f2855d = textView2;
    }

    @NonNull
    public static EfImagepickerItemFolderBinding bind(@NonNull View view) {
        int r02 = R.id.image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.image);
        if (imageView != null) {
            r02 = R.id.tv_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
            if (textView != null) {
                r02 = R.id.tv_number;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_number);
                if (textView2 != null) {
                    return new EfImagepickerItemFolderBinding((SquareFrameLayout) view, imageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static EfImagepickerItemFolderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.ef_imagepicker_item_folder, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f2852a;
    }
}
