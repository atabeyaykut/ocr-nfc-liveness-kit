package tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeNoConnectionBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeSystemErrorBinding;

/* loaded from: classes3.dex */
public final class FragmentConditionListBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f17089a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final MaterialButton f17090b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final MaterialButton f17091c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final MaterialButton f17092d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f17093e;

    @NonNull
    public final ConstraintLayout f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public final IncludeNoConnectionBinding f17094g;

    /* renamed from: h, reason: collision with root package name */
    @NonNull
    public final IncludeSystemErrorBinding f17095h;

    /* renamed from: i, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f17096i;

    public FragmentConditionListBinding(@NonNull NestedScrollView nestedScrollView, @NonNull MaterialButton materialButton, @NonNull MaterialButton materialButton2, @NonNull MaterialButton materialButton3, @NonNull NestedScrollView nestedScrollView2, @NonNull ConstraintLayout constraintLayout, @NonNull IncludeNoConnectionBinding includeNoConnectionBinding, @NonNull IncludeSystemErrorBinding includeSystemErrorBinding, @NonNull AppCompatTextView appCompatTextView) {
        this.f17089a = nestedScrollView;
        this.f17090b = materialButton;
        this.f17091c = materialButton2;
        this.f17092d = materialButton3;
        this.f17093e = nestedScrollView2;
        this.f = constraintLayout;
        this.f17094g = includeNoConnectionBinding;
        this.f17095h = includeSystemErrorBinding;
        this.f17096i = appCompatTextView;
    }

    @NonNull
    public static FragmentConditionListBinding bind(@NonNull View view) {
        int r02 = R.id.btn_call_emergency;
        MaterialButton materialButton = (MaterialButton) ViewBindings.findChildViewById(view, R.id.btn_call_emergency);
        if (materialButton != null) {
            r02 = R.id.btn_mkt_condition_accept;
            MaterialButton materialButton2 = (MaterialButton) ViewBindings.findChildViewById(view, R.id.btn_mkt_condition_accept);
            if (materialButton2 != null) {
                r02 = R.id.btn_mkt_condition_cancel;
                MaterialButton materialButton3 = (MaterialButton) ViewBindings.findChildViewById(view, R.id.btn_mkt_condition_cancel);
                if (materialButton3 != null) {
                    r02 = R.id.condition_page_card_2;
                    if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.condition_page_card_2)) != null) {
                        NestedScrollView nestedScrollView = (NestedScrollView) view;
                        r02 = R.id.mkt_condition_page_content_container;
                        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.mkt_condition_page_content_container);
                        if (constraintLayout != null) {
                            r02 = R.id.mkt_condition_page_parent_container;
                            if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.mkt_condition_page_parent_container)) != null) {
                                r02 = R.id.no_connection_view;
                                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.no_connection_view);
                                if (viewFindChildViewById != null) {
                                    IncludeNoConnectionBinding includeNoConnectionBindingBind = IncludeNoConnectionBinding.bind(viewFindChildViewById);
                                    r02 = R.id.system_error_view;
                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.system_error_view);
                                    if (viewFindChildViewById2 != null) {
                                        IncludeSystemErrorBinding includeSystemErrorBindingBind = IncludeSystemErrorBinding.bind(viewFindChildViewById2);
                                        r02 = R.id.txt_condition_page_item_2_explanation;
                                        if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_condition_page_item_2_explanation)) != null) {
                                            r02 = R.id.txt_condition_page_item_2_title;
                                            if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_condition_page_item_2_title)) != null) {
                                                r02 = R.id.txt_extra_operation_subtitle;
                                                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_extra_operation_subtitle);
                                                if (appCompatTextView != null) {
                                                    return new FragmentConditionListBinding(nestedScrollView, materialButton, materialButton2, materialButton3, nestedScrollView, constraintLayout, includeNoConnectionBindingBind, includeSystemErrorBindingBind, appCompatTextView);
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
    public static FragmentConditionListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_condition_list, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17089a;
    }
}
