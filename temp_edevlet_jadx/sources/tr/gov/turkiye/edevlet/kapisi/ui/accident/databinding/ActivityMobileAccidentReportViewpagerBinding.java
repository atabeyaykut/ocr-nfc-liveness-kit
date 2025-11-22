package tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.MaterialToolbar;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeNoConnectionBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeSystemErrorWithTryBinding;

/* loaded from: classes3.dex */
public final class ActivityMobileAccidentReportViewpagerBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17065a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final MaterialToolbar f17066b;

    public ActivityMobileAccidentReportViewpagerBinding(@NonNull ConstraintLayout constraintLayout, @NonNull MaterialToolbar materialToolbar) {
        this.f17065a = constraintLayout;
        this.f17066b = materialToolbar;
    }

    @NonNull
    public static ActivityMobileAccidentReportViewpagerBinding bind(@NonNull View view) {
        int r02 = R.id.progress_service_page;
        if (((ProgressBar) ViewBindings.findChildViewById(view, R.id.progress_service_page)) != null) {
            r02 = R.id.toolbar_mkt_page;
            MaterialToolbar materialToolbar = (MaterialToolbar) ViewBindings.findChildViewById(view, R.id.toolbar_mkt_page);
            if (materialToolbar != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.web_no_connection_view);
                if (viewFindChildViewById != null) {
                    IncludeNoConnectionBinding.bind(viewFindChildViewById);
                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.web_system_error);
                    if (viewFindChildViewById2 != null) {
                        IncludeSystemErrorWithTryBinding.bind(viewFindChildViewById2);
                        return new ActivityMobileAccidentReportViewpagerBinding(constraintLayout, materialToolbar);
                    }
                    r02 = R.id.web_system_error;
                } else {
                    r02 = R.id.web_no_connection_view;
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ActivityMobileAccidentReportViewpagerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.activity_mobile_accident_report_viewpager, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17065a;
    }
}
