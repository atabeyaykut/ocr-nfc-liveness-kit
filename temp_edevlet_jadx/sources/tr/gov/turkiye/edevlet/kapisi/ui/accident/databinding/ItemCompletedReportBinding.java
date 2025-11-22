package tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ItemCompletedReportBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17204a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final Button f17205b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f17206c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f17207d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f17208e;

    @NonNull
    public final TextView f;

    public ItemCompletedReportBinding(@NonNull ConstraintLayout constraintLayout, @NonNull Button button, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f17204a = constraintLayout;
        this.f17205b = button;
        this.f17206c = textView;
        this.f17207d = textView2;
        this.f17208e = textView3;
        this.f = textView4;
    }

    @NonNull
    public static ItemCompletedReportBinding bind(@NonNull View view) {
        int r02 = R.id.btn_download_report;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_download_report);
        if (button != null) {
            r02 = R.id.container_report_status;
            if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.container_report_status)) != null) {
                r02 = R.id.guideline_expire_date;
                if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline_expire_date)) != null) {
                    r02 = R.id.guideline_insurance_company;
                    if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline_insurance_company)) != null) {
                        r02 = R.id.guideline_policy_type;
                        if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline_policy_type)) != null) {
                            r02 = R.id.item_policy_insurance_company_container;
                            if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.item_policy_insurance_company_container)) != null) {
                                r02 = R.id.item_policy_type_container;
                                if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.item_policy_type_container)) != null) {
                                    r02 = R.id.preview_txt_plate;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.preview_txt_plate);
                                    if (textView != null) {
                                        r02 = R.id.txt_city;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.txt_city);
                                        if (textView2 != null) {
                                            r02 = R.id.txt_report_date;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.txt_report_date);
                                            if (textView3 != null) {
                                                r02 = R.id.txt_report_number;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.txt_report_number);
                                                if (textView4 != null) {
                                                    r02 = R.id.txt_report_title;
                                                    if (((TextView) ViewBindings.findChildViewById(view, R.id.txt_report_title)) != null) {
                                                        return new ItemCompletedReportBinding((ConstraintLayout) view, button, textView, textView2, textView3, textView4);
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
    public static ItemCompletedReportBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_completed_report, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17204a;
    }
}
