package tr.gov.turkiye.edevlet.kapisi.services.databinding;

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
public final class ItemInstitutionListBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16883a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f16884b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final MaterialCardView f16885c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f16886d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f16887e;

    public ItemInstitutionListBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull MaterialCardView materialCardView, @NonNull AppCompatTextView appCompatTextView, @NonNull AppCompatTextView appCompatTextView2) {
        this.f16883a = constraintLayout;
        this.f16884b = imageView;
        this.f16885c = materialCardView;
        this.f16886d = appCompatTextView;
        this.f16887e = appCompatTextView2;
    }

    @NonNull
    public static ItemInstitutionListBinding bind(@NonNull View view) {
        int r02 = R.id.img_institution_arrow;
        if (((ImageView) ViewBindings.findChildViewById(view, R.id.img_institution_arrow)) != null) {
            r02 = R.id.img_service_institution_logo;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.img_service_institution_logo);
            if (imageView != null) {
                r02 = R.id.institution_list_app;
                MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.institution_list_app);
                if (materialCardView != null) {
                    r02 = R.id.txt_institution_name;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_institution_name);
                    if (appCompatTextView != null) {
                        r02 = R.id.txt_service_count;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_service_count);
                        if (appCompatTextView2 != null) {
                            return new ItemInstitutionListBinding((ConstraintLayout) view, imageView, materialCardView, appCompatTextView, appCompatTextView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ItemInstitutionListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_institution_list, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16883a;
    }
}
