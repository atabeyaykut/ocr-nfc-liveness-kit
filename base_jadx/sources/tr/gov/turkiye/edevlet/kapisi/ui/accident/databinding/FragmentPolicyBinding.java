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

/* loaded from: classes3.dex */
public final class FragmentPolicyBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f17178a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final MaterialButton f17179b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f17180c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f17181d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final EpoxyRecyclerView f17182e;

    @NonNull
    public final TextView f;

    public FragmentPolicyBinding(@NonNull NestedScrollView nestedScrollView, @NonNull MaterialButton materialButton, @NonNull TextView textView, @NonNull TextView textView2, @NonNull EpoxyRecyclerView epoxyRecyclerView, @NonNull TextView textView3) {
        this.f17178a = nestedScrollView;
        this.f17179b = materialButton;
        this.f17180c = textView;
        this.f17181d = textView2;
        this.f17182e = epoxyRecyclerView;
        this.f = textView3;
    }

    @NonNull
    public static FragmentPolicyBinding bind(@NonNull View view) {
        int r02 = R.id.btn_manual_next;
        MaterialButton materialButton = (MaterialButton) ViewBindings.findChildViewById(view, R.id.btn_manual_next);
        if (materialButton != null) {
            r02 = R.id.container_mkt_vehicle_licence_plate;
            if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.container_mkt_vehicle_licence_plate)) != null) {
                r02 = R.id.guideline1;
                if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline1)) != null) {
                    r02 = R.id.guideline2;
                    if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline2)) != null) {
                        r02 = R.id.guideline3;
                        if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline3)) != null) {
                            r02 = R.id.guideline_birth_date;
                            if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline_birth_date)) != null) {
                                r02 = R.id.guideline_vehicle_licence;
                                if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline_vehicle_licence)) != null) {
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
                                                                                    r02 = R.id.mkt_policy_insurance_title;
                                                                                    if (((TextView) ViewBindings.findChildViewById(view, R.id.mkt_policy_insurance_title)) != null) {
                                                                                        r02 = R.id.mkt_policy_page_insurance_card;
                                                                                        if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.mkt_policy_page_insurance_card)) != null) {
                                                                                            r02 = R.id.mkt_policy_page_vehicle_licence_card;
                                                                                            if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.mkt_policy_page_vehicle_licence_card)) != null) {
                                                                                                r02 = R.id.mkt_policy_vehicle_licence_title;
                                                                                                if (((TextView) ViewBindings.findChildViewById(view, R.id.mkt_policy_vehicle_licence_title)) != null) {
                                                                                                    r02 = R.id.preview_birth_date_container;
                                                                                                    if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.preview_birth_date_container)) != null) {
                                                                                                        r02 = R.id.preview_txt_plate_no;
                                                                                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.preview_txt_plate_no);
                                                                                                        if (textView != null) {
                                                                                                            r02 = R.id.preview_txt_vehicle_document_no;
                                                                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.preview_txt_vehicle_document_no);
                                                                                                            if (textView2 != null) {
                                                                                                                NestedScrollView nestedScrollView = (NestedScrollView) view;
                                                                                                                r02 = R.id.rcl_mkt_insurance_list;
                                                                                                                EpoxyRecyclerView epoxyRecyclerView = (EpoxyRecyclerView) ViewBindings.findChildViewById(view, R.id.rcl_mkt_insurance_list);
                                                                                                                if (epoxyRecyclerView != null) {
                                                                                                                    r02 = R.id.txt_introduction_main_description;
                                                                                                                    if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_introduction_main_description)) != null) {
                                                                                                                        r02 = R.id.txt_introduction_main_title;
                                                                                                                        if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_introduction_main_title)) != null) {
                                                                                                                            r02 = R.id.txt_title_brand_year;
                                                                                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.txt_title_brand_year);
                                                                                                                            if (textView3 != null) {
                                                                                                                                return new FragmentPolicyBinding(nestedScrollView, materialButton, textView, textView2, epoxyRecyclerView, textView3);
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
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static FragmentPolicyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_policy, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17178a;
    }
}
