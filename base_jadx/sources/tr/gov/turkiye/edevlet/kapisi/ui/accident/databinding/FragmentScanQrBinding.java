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

/* loaded from: classes3.dex */
public final class FragmentScanQrBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f17188a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final Button f17189b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f17190c;

    public FragmentScanQrBinding(@NonNull NestedScrollView nestedScrollView, @NonNull Button button, @NonNull NestedScrollView nestedScrollView2) {
        this.f17188a = nestedScrollView;
        this.f17189b = button;
        this.f17190c = nestedScrollView2;
    }

    @NonNull
    public static FragmentScanQrBinding bind(@NonNull View view) {
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
                                                                        r02 = R.id.mkt_matched_report_info_img;
                                                                        if (((AppCompatImageView) ViewBindings.findChildViewById(view, R.id.mkt_matched_report_info_img)) != null) {
                                                                            NestedScrollView nestedScrollView = (NestedScrollView) view;
                                                                            if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_introduction_main_description)) == null) {
                                                                                r02 = R.id.txt_introduction_main_description;
                                                                            } else {
                                                                                if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_introduction_main_title)) != null) {
                                                                                    return new FragmentScanQrBinding(nestedScrollView, button, nestedScrollView);
                                                                                }
                                                                                r02 = R.id.txt_introduction_main_title;
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
    public static FragmentScanQrBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_scan_qr, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17188a;
    }
}
