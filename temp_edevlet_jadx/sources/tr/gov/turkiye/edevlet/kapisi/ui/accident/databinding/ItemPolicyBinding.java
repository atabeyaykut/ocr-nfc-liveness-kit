package tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ItemPolicyBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17219a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final View f17220b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f17221c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f17222d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f17223e;

    public ItemPolicyBinding(@NonNull ConstraintLayout constraintLayout, @NonNull View view, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f17219a = constraintLayout;
        this.f17220b = view;
        this.f17221c = textView;
        this.f17222d = textView2;
        this.f17223e = textView3;
    }

    @NonNull
    public static ItemPolicyBinding bind(@NonNull View view) {
        int r02 = R.id.guideline_expire_date_line;
        if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline_expire_date_line)) != null) {
            r02 = R.id.guideline_insurance_company;
            if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline_insurance_company)) != null) {
                r02 = R.id.guideline_policy_type;
                if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline_policy_type)) != null) {
                    r02 = R.id.item_divider;
                    View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.item_divider);
                    if (viewFindChildViewById != null) {
                        r02 = R.id.item_policy_insurance_company_container;
                        if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.item_policy_insurance_company_container)) != null) {
                            r02 = R.id.item_policy_type_container;
                            if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.item_policy_type_container)) != null) {
                                r02 = R.id.mkt_policy_expire_date_container;
                                if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.mkt_policy_expire_date_container)) != null) {
                                    r02 = R.id.txt_expire_date_value;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.txt_expire_date_value);
                                    if (textView != null) {
                                        r02 = R.id.txt_insurance_company_value;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.txt_insurance_company_value);
                                        if (textView2 != null) {
                                            r02 = R.id.txt_policy_type;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.txt_policy_type);
                                            if (textView3 != null) {
                                                return new ItemPolicyBinding((ConstraintLayout) view, viewFindChildViewById, textView, textView2, textView3);
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
    public static ItemPolicyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_policy, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17219a;
    }
}
