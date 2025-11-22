package tr.gov.turkiye.edevlet.kapisi.search.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ItemSearchEditorServiceListBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16744a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f16745b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16746c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f16747d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f16748e;

    public ItemSearchEditorServiceListBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull ConstraintLayout constraintLayout2, @NonNull AppCompatTextView appCompatTextView, @NonNull AppCompatTextView appCompatTextView2) {
        this.f16744a = constraintLayout;
        this.f16745b = imageView;
        this.f16746c = constraintLayout2;
        this.f16747d = appCompatTextView;
        this.f16748e = appCompatTextView2;
    }

    @NonNull
    public static ItemSearchEditorServiceListBinding bind(@NonNull View view) {
        int r02 = R.id.divider;
        if (ViewBindings.findChildViewById(view, R.id.divider) != null) {
            r02 = R.id.img_service_institution_logo;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.img_service_institution_logo);
            if (imageView != null) {
                r02 = R.id.logo_container;
                if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.logo_container)) != null) {
                    ConstraintLayout constraintLayout = (ConstraintLayout) view;
                    r02 = R.id.txt_service_institution_name;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_service_institution_name);
                    if (appCompatTextView != null) {
                        r02 = R.id.txt_service_name;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_service_name);
                        if (appCompatTextView2 != null) {
                            return new ItemSearchEditorServiceListBinding(constraintLayout, imageView, constraintLayout, appCompatTextView, appCompatTextView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ItemSearchEditorServiceListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_search_editor_service_list, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16744a;
    }
}
