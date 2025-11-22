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
import com.airbnb.epoxy.EpoxyRecyclerView;
import com.google.android.material.card.MaterialCardView;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class FragmentInstitutionContactBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16855a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16856b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f16857c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final EpoxyRecyclerView f16858d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f16859e;

    public FragmentInstitutionContactBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull ImageView imageView, @NonNull EpoxyRecyclerView epoxyRecyclerView, @NonNull AppCompatTextView appCompatTextView) {
        this.f16855a = constraintLayout;
        this.f16856b = constraintLayout2;
        this.f16857c = imageView;
        this.f16858d = epoxyRecyclerView;
        this.f16859e = appCompatTextView;
    }

    @NonNull
    public static FragmentInstitutionContactBinding bind(@NonNull View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int r02 = R.id.institution_detail_container;
        if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.institution_detail_container)) != null) {
            r02 = R.id.institution_detail_logo;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.institution_detail_logo);
            if (imageView != null) {
                r02 = R.id.institution_logo_card;
                if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.institution_logo_card)) != null) {
                    r02 = R.id.rcl_detail_service_list;
                    EpoxyRecyclerView epoxyRecyclerView = (EpoxyRecyclerView) ViewBindings.findChildViewById(view, R.id.rcl_detail_service_list);
                    if (epoxyRecyclerView != null) {
                        r02 = R.id.txt_institution_name;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_institution_name);
                        if (appCompatTextView != null) {
                            r02 = R.id.txt_service_count;
                            if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_service_count)) != null) {
                                return new FragmentInstitutionContactBinding(constraintLayout, constraintLayout, imageView, epoxyRecyclerView, appCompatTextView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static FragmentInstitutionContactBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_institution_contact, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16855a;
    }
}
