package tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.airbnb.epoxy.EpoxyRecyclerView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeNoConnectionBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeSystemErrorBinding;

/* loaded from: classes3.dex */
public final class FragmentApprovalBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f17074a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final MaterialButton f17075b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final AppCompatImageView f17076c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final AppCompatImageView f17077d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f17078e;

    @NonNull
    public final ConstraintLayout f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public final IncludeNoConnectionBinding f17079g;

    /* renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f17080h;

    /* renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f17081i;

    /* renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f17082j;

    /* renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f17083k;

    /* renamed from: l, reason: collision with root package name */
    @NonNull
    public final EpoxyRecyclerView f17084l;

    /* renamed from: m, reason: collision with root package name */
    @NonNull
    public final EpoxyRecyclerView f17085m;

    /* renamed from: n, reason: collision with root package name */
    @NonNull
    public final IncludeSystemErrorBinding f17086n;

    /* renamed from: o, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f17087o;

    /* renamed from: p, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f17088p;

    public FragmentApprovalBinding(@NonNull NestedScrollView nestedScrollView, @NonNull MaterialButton materialButton, @NonNull AppCompatImageView appCompatImageView, @NonNull AppCompatImageView appCompatImageView2, @NonNull NestedScrollView nestedScrollView2, @NonNull ConstraintLayout constraintLayout, @NonNull IncludeNoConnectionBinding includeNoConnectionBinding, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull EpoxyRecyclerView epoxyRecyclerView, @NonNull EpoxyRecyclerView epoxyRecyclerView2, @NonNull IncludeSystemErrorBinding includeSystemErrorBinding, @NonNull AppCompatTextView appCompatTextView, @NonNull AppCompatTextView appCompatTextView2) {
        this.f17074a = nestedScrollView;
        this.f17075b = materialButton;
        this.f17076c = appCompatImageView;
        this.f17077d = appCompatImageView2;
        this.f17078e = nestedScrollView2;
        this.f = constraintLayout;
        this.f17079g = includeNoConnectionBinding;
        this.f17080h = textView;
        this.f17081i = textView2;
        this.f17082j = textView3;
        this.f17083k = textView4;
        this.f17084l = epoxyRecyclerView;
        this.f17085m = epoxyRecyclerView2;
        this.f17086n = includeSystemErrorBinding;
        this.f17087o = appCompatTextView;
        this.f17088p = appCompatTextView2;
    }

    @NonNull
    public static FragmentApprovalBinding bind(@NonNull View view) {
        int r12 = R.id.btn_manual_next;
        MaterialButton materialButton = (MaterialButton) ViewBindings.findChildViewById(view, R.id.btn_manual_next);
        if (materialButton != null) {
            r12 = R.id.container_mkt_description;
            if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.container_mkt_description)) != null) {
                r12 = R.id.container_mkt_insurance_list;
                if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.container_mkt_insurance_list)) != null) {
                    r12 = R.id.container_mkt_matched_licence_plate;
                    if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.container_mkt_matched_licence_plate)) != null) {
                        r12 = R.id.container_mkt_preview_page_hit_point;
                        if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.container_mkt_preview_page_hit_point)) != null) {
                            r12 = R.id.container_mkt_preview_page_insurance;
                            if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.container_mkt_preview_page_insurance)) != null) {
                                r12 = R.id.container_mkt_preview_page_location;
                                if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.container_mkt_preview_page_location)) != null) {
                                    r12 = R.id.container_mkt_preview_page_photos;
                                    if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.container_mkt_preview_page_photos)) != null) {
                                        r12 = R.id.container_mkt_preview_page_plate;
                                        if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.container_mkt_preview_page_plate)) != null) {
                                            r12 = R.id.container_mkt_preview_page_report_date;
                                            if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.container_mkt_preview_page_report_date)) != null) {
                                                r12 = R.id.container_mkt_vehicle_licence_plate;
                                                if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.container_mkt_vehicle_licence_plate)) != null) {
                                                    r12 = R.id.guideline1;
                                                    if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline1)) != null) {
                                                        r12 = R.id.guideline2;
                                                        if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline2)) != null) {
                                                            r12 = R.id.guideline3;
                                                            if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline3)) != null) {
                                                                r12 = R.id.guideline_identity_number;
                                                                if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline_identity_number)) != null) {
                                                                    r12 = R.id.guideline_matched_plate;
                                                                    if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline_matched_plate)) != null) {
                                                                        r12 = R.id.guideline_plate;
                                                                        if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline_plate)) != null) {
                                                                            r12 = R.id.guideline_vehicle_licence;
                                                                            if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline_vehicle_licence)) != null) {
                                                                                r12 = R.id.img_approve_info;
                                                                                if (((AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_approve_info)) != null) {
                                                                                    r12 = R.id.img_car_info;
                                                                                    if (((AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_car_info)) != null) {
                                                                                        r12 = R.id.img_driver_info;
                                                                                        if (((AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_driver_info)) != null) {
                                                                                            r12 = R.id.img_final_info;
                                                                                            if (((AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_final_info)) != null) {
                                                                                                r12 = R.id.img_hit_point;
                                                                                                AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_hit_point);
                                                                                                if (appCompatImageView != null) {
                                                                                                    r12 = R.id.img_scenario_point;
                                                                                                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_scenario_point);
                                                                                                    if (appCompatImageView2 != null) {
                                                                                                        r12 = R.id.img_warning_icon;
                                                                                                        if (((AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_warning_icon)) != null) {
                                                                                                            r12 = R.id.item_divider;
                                                                                                            if (ViewBindings.findChildViewById(view, R.id.item_divider) != null) {
                                                                                                                r12 = R.id.item_divider_2;
                                                                                                                if (ViewBindings.findChildViewById(view, R.id.item_divider_2) != null) {
                                                                                                                    r12 = R.id.item_divider_3;
                                                                                                                    if (ViewBindings.findChildViewById(view, R.id.item_divider_3) != null) {
                                                                                                                        r12 = R.id.logo_container_0;
                                                                                                                        if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.logo_container_0)) != null) {
                                                                                                                            r12 = R.id.logo_container_1;
                                                                                                                            if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.logo_container_1)) != null) {
                                                                                                                                r12 = R.id.logo_container_2;
                                                                                                                                if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.logo_container_2)) != null) {
                                                                                                                                    r12 = R.id.logo_container_3;
                                                                                                                                    if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.logo_container_3)) != null) {
                                                                                                                                        r12 = R.id.mkt_accident_information_description_title;
                                                                                                                                        if (((TextView) ViewBindings.findChildViewById(view, R.id.mkt_accident_information_description_title)) != null) {
                                                                                                                                            r12 = R.id.mkt_accident_information_scenario_title;
                                                                                                                                            if (((TextView) ViewBindings.findChildViewById(view, R.id.mkt_accident_information_scenario_title)) != null) {
                                                                                                                                                NestedScrollView nestedScrollView = (NestedScrollView) view;
                                                                                                                                                r12 = R.id.mkt_breadcrumb_container;
                                                                                                                                                if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.mkt_breadcrumb_container)) != null) {
                                                                                                                                                    r12 = R.id.mkt_matched_licence_title;
                                                                                                                                                    if (((TextView) ViewBindings.findChildViewById(view, R.id.mkt_matched_licence_title)) != null) {
                                                                                                                                                        r12 = R.id.mkt_matched_report_info_card;
                                                                                                                                                        if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.mkt_matched_report_info_card)) != null) {
                                                                                                                                                            r12 = R.id.mkt_matched_report_warning_card;
                                                                                                                                                            if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.mkt_matched_report_warning_card)) != null) {
                                                                                                                                                                r12 = R.id.mkt_policy_insurance_title;
                                                                                                                                                                if (((TextView) ViewBindings.findChildViewById(view, R.id.mkt_policy_insurance_title)) != null) {
                                                                                                                                                                    r12 = R.id.mkt_policy_vehicle_licence_title;
                                                                                                                                                                    if (((TextView) ViewBindings.findChildViewById(view, R.id.mkt_policy_vehicle_licence_title)) != null) {
                                                                                                                                                                        r12 = R.id.mkt_preview_card_insurance_title;
                                                                                                                                                                        if (((TextView) ViewBindings.findChildViewById(view, R.id.mkt_preview_card_insurance_title)) != null) {
                                                                                                                                                                            r12 = R.id.mkt_preview_page_content_container;
                                                                                                                                                                            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.mkt_preview_page_content_container);
                                                                                                                                                                            if (constraintLayout != null) {
                                                                                                                                                                                r12 = R.id.mkt_preview_page_hit_point_title;
                                                                                                                                                                                if (((TextView) ViewBindings.findChildViewById(view, R.id.mkt_preview_page_hit_point_title)) != null) {
                                                                                                                                                                                    r12 = R.id.mkt_preview_page_main_card;
                                                                                                                                                                                    if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.mkt_preview_page_main_card)) != null) {
                                                                                                                                                                                        r12 = R.id.mkt_preview_report_number_title;
                                                                                                                                                                                        if (((TextView) ViewBindings.findChildViewById(view, R.id.mkt_preview_report_number_title)) != null) {
                                                                                                                                                                                            r12 = R.id.mkt_warning_content;
                                                                                                                                                                                            if (((TextView) ViewBindings.findChildViewById(view, R.id.mkt_warning_content)) != null) {
                                                                                                                                                                                                r12 = R.id.no_connection_view;
                                                                                                                                                                                                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.no_connection_view);
                                                                                                                                                                                                if (viewFindChildViewById != null) {
                                                                                                                                                                                                    IncludeNoConnectionBinding includeNoConnectionBindingBind = IncludeNoConnectionBinding.bind(viewFindChildViewById);
                                                                                                                                                                                                    r12 = R.id.preview_plate_container;
                                                                                                                                                                                                    if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.preview_plate_container)) != null) {
                                                                                                                                                                                                        r12 = R.id.preview_txt_date;
                                                                                                                                                                                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.preview_txt_date);
                                                                                                                                                                                                        if (textView != null) {
                                                                                                                                                                                                            r12 = R.id.preview_txt_identity_number;
                                                                                                                                                                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.preview_txt_identity_number);
                                                                                                                                                                                                            if (textView2 != null) {
                                                                                                                                                                                                                r12 = R.id.preview_txt_plate;
                                                                                                                                                                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.preview_txt_plate);
                                                                                                                                                                                                                if (textView3 != null) {
                                                                                                                                                                                                                    r12 = R.id.preview_txt_report_plate;
                                                                                                                                                                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.preview_txt_report_plate);
                                                                                                                                                                                                                    if (textView4 != null) {
                                                                                                                                                                                                                        r12 = R.id.rcl_mkt_car_list;
                                                                                                                                                                                                                        EpoxyRecyclerView epoxyRecyclerView = (EpoxyRecyclerView) ViewBindings.findChildViewById(view, R.id.rcl_mkt_car_list);
                                                                                                                                                                                                                        if (epoxyRecyclerView != null) {
                                                                                                                                                                                                                            r12 = R.id.rcl_mkt_insurance_list_list;
                                                                                                                                                                                                                            EpoxyRecyclerView epoxyRecyclerView2 = (EpoxyRecyclerView) ViewBindings.findChildViewById(view, R.id.rcl_mkt_insurance_list_list);
                                                                                                                                                                                                                            if (epoxyRecyclerView2 != null) {
                                                                                                                                                                                                                                r12 = R.id.system_error_view;
                                                                                                                                                                                                                                View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.system_error_view);
                                                                                                                                                                                                                                if (viewFindChildViewById2 != null) {
                                                                                                                                                                                                                                    IncludeSystemErrorBinding includeSystemErrorBindingBind = IncludeSystemErrorBinding.bind(viewFindChildViewById2);
                                                                                                                                                                                                                                    r12 = R.id.txt_approval_main_description;
                                                                                                                                                                                                                                    if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_approval_main_description)) != null) {
                                                                                                                                                                                                                                        r12 = R.id.txt_approval_main_title;
                                                                                                                                                                                                                                        if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_approval_main_title)) != null) {
                                                                                                                                                                                                                                            r12 = R.id.txt_location_text;
                                                                                                                                                                                                                                            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_location_text);
                                                                                                                                                                                                                                            if (appCompatTextView != null) {
                                                                                                                                                                                                                                                r12 = R.id.txt_scenario_text;
                                                                                                                                                                                                                                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_scenario_text);
                                                                                                                                                                                                                                                if (appCompatTextView2 != null) {
                                                                                                                                                                                                                                                    return new FragmentApprovalBinding(nestedScrollView, materialButton, appCompatImageView, appCompatImageView2, nestedScrollView, constraintLayout, includeNoConnectionBindingBind, textView, textView2, textView3, textView4, epoxyRecyclerView, epoxyRecyclerView2, includeSystemErrorBindingBind, appCompatTextView, appCompatTextView2);
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
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r12)));
    }

    @NonNull
    public static FragmentApprovalBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_approval, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17074a;
    }
}
