package tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ActivityMobileAccidentReportBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final FrameLayout f17064a;

    public ActivityMobileAccidentReportBinding(@NonNull FrameLayout frameLayout) {
        this.f17064a = frameLayout;
    }

    @NonNull
    public static ActivityMobileAccidentReportBinding bind(@NonNull View view) {
        if (view != null) {
            return new ActivityMobileAccidentReportBinding((FrameLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static ActivityMobileAccidentReportBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.activity_mobile_accident_report, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17064a;
    }
}
