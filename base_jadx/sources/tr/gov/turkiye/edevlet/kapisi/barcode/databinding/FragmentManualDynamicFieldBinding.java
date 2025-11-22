package tr.gov.turkiye.edevlet.kapisi.barcode.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeNoConnectionBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeSystemErrorBinding;

/* loaded from: classes3.dex */
public final class FragmentManualDynamicFieldBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f15804a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final Button f15805b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f15806c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f15807d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final IncludeNoConnectionBinding f15808e;

    @NonNull
    public final ProgressBar f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public final ScrollView f15809g;

    /* renamed from: h, reason: collision with root package name */
    @NonNull
    public final IncludeSystemErrorBinding f15810h;

    public FragmentManualDynamicFieldBinding(@NonNull ConstraintLayout constraintLayout, @NonNull Button button, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull IncludeNoConnectionBinding includeNoConnectionBinding, @NonNull ProgressBar progressBar, @NonNull ScrollView scrollView, @NonNull IncludeSystemErrorBinding includeSystemErrorBinding) {
        this.f15804a = constraintLayout;
        this.f15805b = button;
        this.f15806c = textView;
        this.f15807d = linearLayout;
        this.f15808e = includeNoConnectionBinding;
        this.f = progressBar;
        this.f15809g = scrollView;
        this.f15810h = includeSystemErrorBinding;
    }

    @NonNull
    public static FragmentManualDynamicFieldBinding bind(@NonNull View view) {
        int r02 = R.id.btn_manual_query;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_manual_query);
        if (button != null) {
            r02 = R.id.container_barcode;
            if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.container_barcode)) != null) {
                r02 = R.id.divider;
                if (ViewBindings.findChildViewById(view, R.id.divider) != null) {
                    r02 = R.id.guideline;
                    if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline)) != null) {
                        r02 = R.id.manual_barcode_number_field;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.manual_barcode_number_field);
                        if (textView != null) {
                            r02 = R.id.manual_layout_form_step_two;
                            if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.manual_layout_form_step_two)) != null) {
                                r02 = R.id.manuel_layout_form_fields;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.manuel_layout_form_fields);
                                if (linearLayout != null) {
                                    r02 = R.id.no_connection_view;
                                    View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.no_connection_view);
                                    if (viewFindChildViewById != null) {
                                        IncludeNoConnectionBinding includeNoConnectionBindingBind = IncludeNoConnectionBinding.bind(viewFindChildViewById);
                                        r02 = R.id.progressBar;
                                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
                                        if (progressBar != null) {
                                            r02 = R.id.sv_form_container;
                                            ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(view, R.id.sv_form_container);
                                            if (scrollView != null) {
                                                r02 = R.id.system_error_view;
                                                View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.system_error_view);
                                                if (viewFindChildViewById2 != null) {
                                                    return new FragmentManualDynamicFieldBinding((ConstraintLayout) view, button, textView, linearLayout, includeNoConnectionBindingBind, progressBar, scrollView, IncludeSystemErrorBinding.bind(viewFindChildViewById2));
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static FragmentManualDynamicFieldBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_manual_dynamic_field, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f15804a;
    }
}
