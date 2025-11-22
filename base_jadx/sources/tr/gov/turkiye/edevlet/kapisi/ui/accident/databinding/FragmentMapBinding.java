package tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class FragmentMapBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17156a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final ExtendedFloatingActionButton f17157b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17158c;

    public FragmentMapBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton, @NonNull ConstraintLayout constraintLayout2) {
        this.f17156a = constraintLayout;
        this.f17157b = extendedFloatingActionButton;
        this.f17158c = constraintLayout2;
    }

    @NonNull
    public static FragmentMapBinding bind(@NonNull View view) {
        ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) ViewBindings.findChildViewById(view, R.id.fab_button_continue);
        if (extendedFloatingActionButton == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.fab_button_continue)));
        }
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        return new FragmentMapBinding(constraintLayout, extendedFloatingActionButton, constraintLayout);
    }

    @NonNull
    public static FragmentMapBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_map, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17156a;
    }
}
