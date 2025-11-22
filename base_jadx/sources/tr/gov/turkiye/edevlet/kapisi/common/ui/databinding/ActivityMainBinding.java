package tr.gov.turkiye.edevlet.kapisi.common.ui.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ActivityMainBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f15856a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final BottomNavigationView f15857b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final MaterialToolbar f15858c;

    public ActivityMainBinding(@NonNull ConstraintLayout constraintLayout, @NonNull BottomNavigationView bottomNavigationView, @NonNull MaterialToolbar materialToolbar) {
        this.f15856a = constraintLayout;
        this.f15857b = bottomNavigationView;
        this.f15858c = materialToolbar;
    }

    @NonNull
    public static ActivityMainBinding bind(@NonNull View view) {
        int r02 = R.id.brand;
        if (((ImageView) ViewBindings.findChildViewById(view, R.id.brand)) != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            BottomNavigationView bottomNavigationView = (BottomNavigationView) ViewBindings.findChildViewById(view, R.id.nav_view);
            if (bottomNavigationView != null) {
                MaterialToolbar materialToolbar = (MaterialToolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                if (materialToolbar != null) {
                    return new ActivityMainBinding(constraintLayout, bottomNavigationView, materialToolbar);
                }
                r02 = R.id.toolbar;
            } else {
                r02 = R.id.nav_view;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ActivityMainBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.activity_main, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f15856a;
    }
}
