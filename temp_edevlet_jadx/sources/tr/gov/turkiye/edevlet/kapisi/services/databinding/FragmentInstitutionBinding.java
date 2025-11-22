package tr.gov.turkiye.edevlet.kapisi.services.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.airbnb.epoxy.EpoxyRecyclerView;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class FragmentInstitutionBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16848a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final EpoxyRecyclerView f16849b;

    public FragmentInstitutionBinding(@NonNull ConstraintLayout constraintLayout, @NonNull EpoxyRecyclerView epoxyRecyclerView) {
        this.f16848a = constraintLayout;
        this.f16849b = epoxyRecyclerView;
    }

    @NonNull
    public static FragmentInstitutionBinding bind(@NonNull View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        EpoxyRecyclerView epoxyRecyclerView = (EpoxyRecyclerView) ViewBindings.findChildViewById(view, R.id.rcl_institution_list);
        if (epoxyRecyclerView != null) {
            return new FragmentInstitutionBinding(constraintLayout, epoxyRecyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.rcl_institution_list)));
    }

    @NonNull
    public static FragmentInstitutionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_institution, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16848a;
    }
}
