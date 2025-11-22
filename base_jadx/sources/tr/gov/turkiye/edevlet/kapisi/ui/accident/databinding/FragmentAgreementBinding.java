package tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeNoConnectionBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeSystemErrorBinding;

/* loaded from: classes3.dex */
public final class FragmentAgreementBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f17067a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final Button f17068b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final CheckBox f17069c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17070d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f17071e;

    @NonNull
    public final IncludeNoConnectionBinding f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public final IncludeSystemErrorBinding f17072g;

    /* renamed from: h, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f17073h;

    public FragmentAgreementBinding(@NonNull NestedScrollView nestedScrollView, @NonNull Button button, @NonNull CheckBox checkBox, @NonNull ConstraintLayout constraintLayout, @NonNull NestedScrollView nestedScrollView2, @NonNull IncludeNoConnectionBinding includeNoConnectionBinding, @NonNull IncludeSystemErrorBinding includeSystemErrorBinding, @NonNull AppCompatTextView appCompatTextView) {
        this.f17067a = nestedScrollView;
        this.f17068b = button;
        this.f17069c = checkBox;
        this.f17070d = constraintLayout;
        this.f17071e = nestedScrollView2;
        this.f = includeNoConnectionBinding;
        this.f17072g = includeSystemErrorBinding;
        this.f17073h = appCompatTextView;
    }

    @NonNull
    public static FragmentAgreementBinding bind(@NonNull View view) {
        int r02 = R.id.btn_manual_next;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_manual_next);
        if (button != null) {
            r02 = R.id.card_form_container;
            if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.card_form_container)) != null) {
                r02 = R.id.checkbox_agreement;
                CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.checkbox_agreement);
                if (checkBox != null) {
                    r02 = R.id.guideline1;
                    if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline1)) != null) {
                        r02 = R.id.mkt_accident_agreement_container;
                        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.mkt_accident_agreement_container);
                        if (constraintLayout != null) {
                            NestedScrollView nestedScrollView = (NestedScrollView) view;
                            r02 = R.id.no_connection_view;
                            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.no_connection_view);
                            if (viewFindChildViewById != null) {
                                IncludeNoConnectionBinding includeNoConnectionBindingBind = IncludeNoConnectionBinding.bind(viewFindChildViewById);
                                r02 = R.id.profile_container;
                                if (((NestedScrollView) ViewBindings.findChildViewById(view, R.id.profile_container)) != null) {
                                    r02 = R.id.system_error_view;
                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.system_error_view);
                                    if (viewFindChildViewById2 != null) {
                                        IncludeSystemErrorBinding includeSystemErrorBindingBind = IncludeSystemErrorBinding.bind(viewFindChildViewById2);
                                        r02 = R.id.txt_agreement_explanation;
                                        if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_agreement_explanation)) != null) {
                                            r02 = R.id.txt_agreement_main_description;
                                            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_agreement_main_description);
                                            if (appCompatTextView != null) {
                                                r02 = R.id.txt_agreement_main_title;
                                                if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_agreement_main_title)) != null) {
                                                    return new FragmentAgreementBinding(nestedScrollView, button, checkBox, constraintLayout, nestedScrollView, includeNoConnectionBindingBind, includeSystemErrorBindingBind, appCompatTextView);
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
    public static FragmentAgreementBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_agreement, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17067a;
    }
}
