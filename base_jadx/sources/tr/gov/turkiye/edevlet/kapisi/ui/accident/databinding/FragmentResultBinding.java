package tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatImageView;
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
public final class FragmentResultBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f17184a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final Button f17185b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f17186c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f17187d;

    public FragmentResultBinding(@NonNull NestedScrollView nestedScrollView, @NonNull Button button, @NonNull AppCompatTextView appCompatTextView, @NonNull AppCompatTextView appCompatTextView2) {
        this.f17184a = nestedScrollView;
        this.f17185b = button;
        this.f17186c = appCompatTextView;
        this.f17187d = appCompatTextView2;
    }

    @NonNull
    public static FragmentResultBinding bind(@NonNull View view) {
        int r02 = R.id.btn_manual_next;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_manual_next);
        if (button != null) {
            r02 = R.id.guideline1;
            if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline1)) != null) {
                r02 = R.id.guideline2;
                if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline2)) != null) {
                    r02 = R.id.guideline3;
                    if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline3)) != null) {
                        r02 = R.id.img_approve_info;
                        if (((AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_approve_info)) != null) {
                            r02 = R.id.img_car_info;
                            if (((AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_car_info)) != null) {
                                r02 = R.id.img_driver_info;
                                if (((AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_driver_info)) != null) {
                                    r02 = R.id.img_final_info;
                                    if (((AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_final_info)) != null) {
                                        r02 = R.id.item_divider;
                                        if (ViewBindings.findChildViewById(view, R.id.item_divider) != null) {
                                            r02 = R.id.item_divider_2;
                                            if (ViewBindings.findChildViewById(view, R.id.item_divider_2) != null) {
                                                r02 = R.id.item_divider_3;
                                                if (ViewBindings.findChildViewById(view, R.id.item_divider_3) != null) {
                                                    r02 = R.id.logo_container_0;
                                                    if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.logo_container_0)) != null) {
                                                        r02 = R.id.logo_container_1;
                                                        if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.logo_container_1)) != null) {
                                                            r02 = R.id.logo_container_2;
                                                            if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.logo_container_2)) != null) {
                                                                r02 = R.id.logo_container_3;
                                                                if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.logo_container_3)) != null) {
                                                                    r02 = R.id.mkt_breadcrumb_container;
                                                                    if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.mkt_breadcrumb_container)) != null) {
                                                                        r02 = R.id.mkt_driver_page_content_container;
                                                                        if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.mkt_driver_page_content_container)) != null) {
                                                                            NestedScrollView nestedScrollView = (NestedScrollView) view;
                                                                            if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.mkt_result_card)) != null) {
                                                                                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.no_connection_view);
                                                                                if (viewFindChildViewById != null) {
                                                                                    IncludeNoConnectionBinding.bind(viewFindChildViewById);
                                                                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.system_error_view);
                                                                                    if (viewFindChildViewById2 != null) {
                                                                                        IncludeSystemErrorBinding.bind(viewFindChildViewById2);
                                                                                        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_result_main_title);
                                                                                        if (appCompatTextView != null) {
                                                                                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_result_page_main_description);
                                                                                            if (appCompatTextView2 != null) {
                                                                                                return new FragmentResultBinding(nestedScrollView, button, appCompatTextView, appCompatTextView2);
                                                                                            }
                                                                                            r02 = R.id.txt_result_page_main_description;
                                                                                        } else {
                                                                                            r02 = R.id.txt_result_main_title;
                                                                                        }
                                                                                    } else {
                                                                                        r02 = R.id.system_error_view;
                                                                                    }
                                                                                } else {
                                                                                    r02 = R.id.no_connection_view;
                                                                                }
                                                                            } else {
                                                                                r02 = R.id.mkt_result_card;
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
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static FragmentResultBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_result, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17184a;
    }
}
