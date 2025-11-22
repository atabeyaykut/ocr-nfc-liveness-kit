package tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
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
import com.google.android.material.card.MaterialCardView;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeNoConnectionBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeSystemErrorBinding;

/* loaded from: classes3.dex */
public final class FragmentDriverCarBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f17128a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final Button f17129b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f17130c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f17131d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17132e;

    @NonNull
    public final NestedScrollView f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public final MaterialCardView f17133g;

    /* renamed from: h, reason: collision with root package name */
    @NonNull
    public final MaterialCardView f17134h;

    /* renamed from: i, reason: collision with root package name */
    @NonNull
    public final IncludeNoConnectionBinding f17135i;

    /* renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f17136j;

    /* renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f17137k;

    /* renamed from: l, reason: collision with root package name */
    @NonNull
    public final EpoxyRecyclerView f17138l;

    /* renamed from: m, reason: collision with root package name */
    @NonNull
    public final IncludeSystemErrorBinding f17139m;

    public FragmentDriverCarBinding(@NonNull NestedScrollView nestedScrollView, @NonNull Button button, @NonNull Button button2, @NonNull Button button3, @NonNull ConstraintLayout constraintLayout, @NonNull NestedScrollView nestedScrollView2, @NonNull MaterialCardView materialCardView, @NonNull MaterialCardView materialCardView2, @NonNull IncludeNoConnectionBinding includeNoConnectionBinding, @NonNull TextView textView, @NonNull TextView textView2, @NonNull EpoxyRecyclerView epoxyRecyclerView, @NonNull IncludeSystemErrorBinding includeSystemErrorBinding) {
        this.f17128a = nestedScrollView;
        this.f17129b = button;
        this.f17130c = button2;
        this.f17131d = button3;
        this.f17132e = constraintLayout;
        this.f = nestedScrollView2;
        this.f17133g = materialCardView;
        this.f17134h = materialCardView2;
        this.f17135i = includeNoConnectionBinding;
        this.f17136j = textView;
        this.f17137k = textView2;
        this.f17138l = epoxyRecyclerView;
        this.f17139m = includeSystemErrorBinding;
    }

    @NonNull
    public static FragmentDriverCarBinding bind(@NonNull View view) {
        int r12 = R.id.btn_different_car;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_different_car);
        if (button != null) {
            r12 = R.id.btn_manual_next;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.btn_manual_next);
            if (button2 != null) {
                r12 = R.id.btn_no_vehicle_add_car;
                Button button3 = (Button) ViewBindings.findChildViewById(view, R.id.btn_no_vehicle_add_car);
                if (button3 != null) {
                    r12 = R.id.container_mkt_vehicle_licence_plate;
                    if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.container_mkt_vehicle_licence_plate)) != null) {
                        r12 = R.id.guideline1;
                        if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline1)) != null) {
                            r12 = R.id.guideline2;
                            if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline2)) != null) {
                                r12 = R.id.guideline3;
                                if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline3)) != null) {
                                    r12 = R.id.guideline_birth_date;
                                    if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline_birth_date)) != null) {
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
                                                                                        r12 = R.id.mkt_breadcrumb_container;
                                                                                        if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.mkt_breadcrumb_container)) != null) {
                                                                                            r12 = R.id.mkt_driver_card;
                                                                                            if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.mkt_driver_card)) != null) {
                                                                                                r12 = R.id.mkt_driver_page_content_container;
                                                                                                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.mkt_driver_page_content_container);
                                                                                                if (constraintLayout != null) {
                                                                                                    NestedScrollView nestedScrollView = (NestedScrollView) view;
                                                                                                    r12 = R.id.mkt_policy_insurance_title;
                                                                                                    if (((TextView) ViewBindings.findChildViewById(view, R.id.mkt_policy_insurance_title)) != null) {
                                                                                                        r12 = R.id.mkt_policy_vehicle_licence_title;
                                                                                                        if (((TextView) ViewBindings.findChildViewById(view, R.id.mkt_policy_vehicle_licence_title)) != null) {
                                                                                                            r12 = R.id.mkt_vehicle_card;
                                                                                                            MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.mkt_vehicle_card);
                                                                                                            if (materialCardView != null) {
                                                                                                                r12 = R.id.mkt_vehicle_empty_card;
                                                                                                                MaterialCardView materialCardView2 = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.mkt_vehicle_empty_card);
                                                                                                                if (materialCardView2 != null) {
                                                                                                                    r12 = R.id.no_connection_view;
                                                                                                                    View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.no_connection_view);
                                                                                                                    if (viewFindChildViewById != null) {
                                                                                                                        IncludeNoConnectionBinding includeNoConnectionBindingBind = IncludeNoConnectionBinding.bind(viewFindChildViewById);
                                                                                                                        r12 = R.id.preview_birth_date_container;
                                                                                                                        if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.preview_birth_date_container)) != null) {
                                                                                                                            r12 = R.id.preview_txt_nameSurname;
                                                                                                                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.preview_txt_nameSurname);
                                                                                                                            if (textView != null) {
                                                                                                                                r12 = R.id.preview_txt_phone_number;
                                                                                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.preview_txt_phone_number);
                                                                                                                                if (textView2 != null) {
                                                                                                                                    r12 = R.id.rcl_mkt_car_list;
                                                                                                                                    EpoxyRecyclerView epoxyRecyclerView = (EpoxyRecyclerView) ViewBindings.findChildViewById(view, R.id.rcl_mkt_car_list);
                                                                                                                                    if (epoxyRecyclerView != null) {
                                                                                                                                        r12 = R.id.system_error_view;
                                                                                                                                        View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.system_error_view);
                                                                                                                                        if (viewFindChildViewById2 != null) {
                                                                                                                                            IncludeSystemErrorBinding includeSystemErrorBindingBind = IncludeSystemErrorBinding.bind(viewFindChildViewById2);
                                                                                                                                            r12 = R.id.txt_car_helper_description;
                                                                                                                                            if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_car_helper_description)) != null) {
                                                                                                                                                r12 = R.id.txt_introduction_main_description;
                                                                                                                                                if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_introduction_main_description)) != null) {
                                                                                                                                                    r12 = R.id.txt_introduction_main_title;
                                                                                                                                                    if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_introduction_main_title)) != null) {
                                                                                                                                                        r12 = R.id.txt_no_vehicle_description;
                                                                                                                                                        if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_no_vehicle_description)) != null) {
                                                                                                                                                            r12 = R.id.txt_no_vehicle_title;
                                                                                                                                                            if (((TextView) ViewBindings.findChildViewById(view, R.id.txt_no_vehicle_title)) != null) {
                                                                                                                                                                return new FragmentDriverCarBinding(nestedScrollView, button, button2, button3, constraintLayout, nestedScrollView, materialCardView, materialCardView2, includeNoConnectionBindingBind, textView, textView2, epoxyRecyclerView, includeSystemErrorBindingBind);
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
    public static FragmentDriverCarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_driver_car, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17128a;
    }
}
