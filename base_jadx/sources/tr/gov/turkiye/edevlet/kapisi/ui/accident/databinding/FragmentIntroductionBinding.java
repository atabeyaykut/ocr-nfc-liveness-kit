package tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
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
public final class FragmentIntroductionBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f17150a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final Button f17151b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final MaterialButton f17152c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final MaterialButton f17153d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17154e;

    @NonNull
    public final IncludeNoConnectionBinding f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public final IncludeSystemErrorBinding f17155g;

    public FragmentIntroductionBinding(@NonNull NestedScrollView nestedScrollView, @NonNull Button button, @NonNull MaterialButton materialButton, @NonNull MaterialButton materialButton2, @NonNull ConstraintLayout constraintLayout, @NonNull IncludeNoConnectionBinding includeNoConnectionBinding, @NonNull IncludeSystemErrorBinding includeSystemErrorBinding) {
        this.f17150a = nestedScrollView;
        this.f17151b = button;
        this.f17152c = materialButton;
        this.f17153d = materialButton2;
        this.f17154e = constraintLayout;
        this.f = includeNoConnectionBinding;
        this.f17155g = includeSystemErrorBinding;
    }

    @NonNull
    public static FragmentIntroductionBinding bind(@NonNull View view) {
        int r02 = R.id.btn_manual_next;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_manual_next);
        if (button != null) {
            r02 = R.id.btn_mkt_involve;
            MaterialButton materialButton = (MaterialButton) ViewBindings.findChildViewById(view, R.id.btn_mkt_involve);
            if (materialButton != null) {
                r02 = R.id.btn_mkt_start;
                MaterialButton materialButton2 = (MaterialButton) ViewBindings.findChildViewById(view, R.id.btn_mkt_start);
                if (materialButton2 != null) {
                    r02 = R.id.introduction_card_2;
                    if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.introduction_card_2)) != null) {
                        NestedScrollView nestedScrollView = (NestedScrollView) view;
                        r02 = R.id.mkt_introduction_content_container;
                        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.mkt_introduction_content_container);
                        if (constraintLayout != null) {
                            r02 = R.id.mkt_introduction_parent_container;
                            if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.mkt_introduction_parent_container)) != null) {
                                r02 = R.id.no_connection_view;
                                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.no_connection_view);
                                if (viewFindChildViewById != null) {
                                    IncludeNoConnectionBinding includeNoConnectionBindingBind = IncludeNoConnectionBinding.bind(viewFindChildViewById);
                                    r02 = R.id.system_error_view;
                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.system_error_view);
                                    if (viewFindChildViewById2 != null) {
                                        IncludeSystemErrorBinding includeSystemErrorBindingBind = IncludeSystemErrorBinding.bind(viewFindChildViewById2);
                                        r02 = R.id.txt_introduction_item_2_explanation;
                                        if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_introduction_item_2_explanation)) != null) {
                                            r02 = R.id.txt_introduction_item_2_title;
                                            if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_introduction_item_2_title)) != null) {
                                                r02 = R.id.txt_introduction_main_description;
                                                if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_introduction_main_description)) != null) {
                                                    r02 = R.id.txt_introduction_main_description_1;
                                                    if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_introduction_main_description_1)) != null) {
                                                        r02 = R.id.txt_introduction_main_title;
                                                        if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_introduction_main_title)) != null) {
                                                            return new FragmentIntroductionBinding(nestedScrollView, button, materialButton, materialButton2, constraintLayout, includeNoConnectionBindingBind, includeSystemErrorBindingBind);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static FragmentIntroductionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_introduction, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17150a;
    }
}
