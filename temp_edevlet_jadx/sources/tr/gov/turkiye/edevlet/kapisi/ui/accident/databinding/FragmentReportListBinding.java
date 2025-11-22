package tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.NonNull;
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
public final class FragmentReportListBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f17183a;

    public FragmentReportListBinding(@NonNull NestedScrollView nestedScrollView) {
        this.f17183a = nestedScrollView;
    }

    @NonNull
    public static FragmentReportListBinding bind(@NonNull View view) {
        int r02 = R.id.btn_different_car;
        if (((Button) ViewBindings.findChildViewById(view, R.id.btn_different_car)) != null) {
            r02 = R.id.btn_manual_next;
            if (((Button) ViewBindings.findChildViewById(view, R.id.btn_manual_next)) != null) {
                r02 = R.id.btn_no_vehicle_add_car;
                if (((Button) ViewBindings.findChildViewById(view, R.id.btn_no_vehicle_add_car)) != null) {
                    r02 = R.id.container_mkt_vehicle_licence_plate;
                    if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.container_mkt_vehicle_licence_plate)) != null) {
                        r02 = R.id.guideline_birth_date;
                        if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline_birth_date)) != null) {
                            r02 = R.id.guideline_vehicle_licence;
                            if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline_vehicle_licence)) != null) {
                                r02 = R.id.mkt_driver_card;
                                if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.mkt_driver_card)) != null) {
                                    r02 = R.id.mkt_driver_page_content_container;
                                    if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.mkt_driver_page_content_container)) != null) {
                                        NestedScrollView nestedScrollView = (NestedScrollView) view;
                                        if (((TextView) ViewBindings.findChildViewById(view, R.id.mkt_policy_insurance_title)) == null) {
                                            r02 = R.id.mkt_policy_insurance_title;
                                        } else if (((TextView) ViewBindings.findChildViewById(view, R.id.mkt_policy_vehicle_licence_title)) == null) {
                                            r02 = R.id.mkt_policy_vehicle_licence_title;
                                        } else if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.mkt_vehicle_card)) == null) {
                                            r02 = R.id.mkt_vehicle_card;
                                        } else if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.mkt_vehicle_empty_card)) != null) {
                                            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.no_connection_view);
                                            if (viewFindChildViewById != null) {
                                                IncludeNoConnectionBinding.bind(viewFindChildViewById);
                                                if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.preview_birth_date_container)) == null) {
                                                    r02 = R.id.preview_birth_date_container;
                                                } else if (((TextView) ViewBindings.findChildViewById(view, R.id.preview_txt_nameSurname)) == null) {
                                                    r02 = R.id.preview_txt_nameSurname;
                                                } else if (((TextView) ViewBindings.findChildViewById(view, R.id.preview_txt_phone_number)) == null) {
                                                    r02 = R.id.preview_txt_phone_number;
                                                } else if (((EpoxyRecyclerView) ViewBindings.findChildViewById(view, R.id.rcl_mkt_car_list)) != null) {
                                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.system_error_view);
                                                    if (viewFindChildViewById2 != null) {
                                                        IncludeSystemErrorBinding.bind(viewFindChildViewById2);
                                                        if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_car_helper_description)) == null) {
                                                            r02 = R.id.txt_car_helper_description;
                                                        } else if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_introduction_main_description)) == null) {
                                                            r02 = R.id.txt_introduction_main_description;
                                                        } else if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_introduction_main_title)) == null) {
                                                            r02 = R.id.txt_introduction_main_title;
                                                        } else if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_no_vehicle_description)) == null) {
                                                            r02 = R.id.txt_no_vehicle_description;
                                                        } else {
                                                            if (((TextView) ViewBindings.findChildViewById(view, R.id.txt_no_vehicle_title)) != null) {
                                                                return new FragmentReportListBinding(nestedScrollView);
                                                            }
                                                            r02 = R.id.txt_no_vehicle_title;
                                                        }
                                                    } else {
                                                        r02 = R.id.system_error_view;
                                                    }
                                                } else {
                                                    r02 = R.id.rcl_mkt_car_list;
                                                }
                                            } else {
                                                r02 = R.id.no_connection_view;
                                            }
                                        } else {
                                            r02 = R.id.mkt_vehicle_empty_card;
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
    public static FragmentReportListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_report_list, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17183a;
    }
}
