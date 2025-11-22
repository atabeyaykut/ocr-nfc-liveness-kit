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
import com.google.android.material.card.MaterialCardView;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class FragmentMatchedReportInfoBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f17159a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final Button f17160b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f17161c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f17162d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f17163e;

    public FragmentMatchedReportInfoBinding(@NonNull NestedScrollView nestedScrollView, @NonNull Button button, @NonNull NestedScrollView nestedScrollView2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f17159a = nestedScrollView;
        this.f17160b = button;
        this.f17161c = nestedScrollView2;
        this.f17162d = textView;
        this.f17163e = textView2;
    }

    @NonNull
    public static FragmentMatchedReportInfoBinding bind(@NonNull View view) {
        int r02 = R.id.btn_manual_next;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_manual_next);
        if (button != null) {
            r02 = R.id.container_mkt_vehicle_licence_plate;
            if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.container_mkt_vehicle_licence_plate)) != null) {
                r02 = R.id.guideline_identity_number;
                if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline_identity_number)) != null) {
                    r02 = R.id.guideline_plate;
                    if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline_plate)) != null) {
                        NestedScrollView nestedScrollView = (NestedScrollView) view;
                        r02 = R.id.mkt_matched_report_info_card;
                        if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.mkt_matched_report_info_card)) != null) {
                            r02 = R.id.mkt_policy_vehicle_licence_title;
                            if (((TextView) ViewBindings.findChildViewById(view, R.id.mkt_policy_vehicle_licence_title)) != null) {
                                r02 = R.id.preview_plate_container;
                                if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.preview_plate_container)) != null) {
                                    r02 = R.id.preview_txt_identity_number;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.preview_txt_identity_number);
                                    if (textView != null) {
                                        r02 = R.id.preview_txt_plate;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.preview_txt_plate);
                                        if (textView2 != null) {
                                            r02 = R.id.txt_introduction_main_description;
                                            if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_introduction_main_description)) != null) {
                                                r02 = R.id.txt_introduction_main_title;
                                                if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_introduction_main_title)) != null) {
                                                    return new FragmentMatchedReportInfoBinding(nestedScrollView, button, nestedScrollView, textView, textView2);
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
    public static FragmentMatchedReportInfoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_matched_report_info, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17159a;
    }
}
