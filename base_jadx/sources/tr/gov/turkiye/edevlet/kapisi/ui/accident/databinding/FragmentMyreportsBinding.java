package tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.airbnb.epoxy.EpoxyRecyclerView;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.chip.ChipGroup;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeNoConnectionBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeSystemErrorBinding;

/* loaded from: classes3.dex */
public final class FragmentMyreportsBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17164a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final ChipGroup f17165b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17166c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17167d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17168e;

    @NonNull
    public final IncludeNoConnectionBinding f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public final EpoxyRecyclerView f17169g;

    /* renamed from: h, reason: collision with root package name */
    @NonNull
    public final IncludeSystemErrorBinding f17170h;

    /* renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f17171i;

    /* renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f17172j;

    public FragmentMyreportsBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ChipGroup chipGroup, @NonNull ConstraintLayout constraintLayout2, @NonNull ConstraintLayout constraintLayout3, @NonNull ConstraintLayout constraintLayout4, @NonNull IncludeNoConnectionBinding includeNoConnectionBinding, @NonNull EpoxyRecyclerView epoxyRecyclerView, @NonNull IncludeSystemErrorBinding includeSystemErrorBinding, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f17164a = constraintLayout;
        this.f17165b = chipGroup;
        this.f17166c = constraintLayout2;
        this.f17167d = constraintLayout3;
        this.f17168e = constraintLayout4;
        this.f = includeNoConnectionBinding;
        this.f17169g = epoxyRecyclerView;
        this.f17170h = includeSystemErrorBinding;
        this.f17171i = textView;
        this.f17172j = textView2;
    }

    @NonNull
    public static FragmentMyreportsBinding bind(@NonNull View view) {
        int r02 = R.id.card_empty_list;
        if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.card_empty_list)) != null) {
            r02 = R.id.choice_chip_group;
            ChipGroup chipGroup = (ChipGroup) ViewBindings.findChildViewById(view, R.id.choice_chip_group);
            if (chipGroup != null) {
                r02 = R.id.divider_0;
                if (ViewBindings.findChildViewById(view, R.id.divider_0) != null) {
                    r02 = R.id.divider_1;
                    if (ViewBindings.findChildViewById(view, R.id.divider_1) != null) {
                        r02 = R.id.mkt_report_empty_list_container;
                        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.mkt_report_empty_list_container);
                        if (constraintLayout != null) {
                            r02 = R.id.mkt_report_list_container;
                            ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.mkt_report_list_container);
                            if (constraintLayout2 != null) {
                                ConstraintLayout constraintLayout3 = (ConstraintLayout) view;
                                r02 = R.id.no_connection_view;
                                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.no_connection_view);
                                if (viewFindChildViewById != null) {
                                    IncludeNoConnectionBinding includeNoConnectionBindingBind = IncludeNoConnectionBinding.bind(viewFindChildViewById);
                                    r02 = R.id.rcl_my_report_list;
                                    EpoxyRecyclerView epoxyRecyclerView = (EpoxyRecyclerView) ViewBindings.findChildViewById(view, R.id.rcl_my_report_list);
                                    if (epoxyRecyclerView != null) {
                                        r02 = R.id.system_error_view;
                                        View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.system_error_view);
                                        if (viewFindChildViewById2 != null) {
                                            IncludeSystemErrorBinding includeSystemErrorBindingBind = IncludeSystemErrorBinding.bind(viewFindChildViewById2);
                                            r02 = R.id.txt_introduction_main_description;
                                            if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_introduction_main_description)) != null) {
                                                r02 = R.id.txt_my_reports_page_title;
                                                if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_my_reports_page_title)) != null) {
                                                    r02 = R.id.txt_report_empty_message;
                                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.txt_report_empty_message);
                                                    if (textView != null) {
                                                        r02 = R.id.txt_report_empty_title;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.txt_report_empty_title);
                                                        if (textView2 != null) {
                                                            return new FragmentMyreportsBinding(constraintLayout3, chipGroup, constraintLayout, constraintLayout2, constraintLayout3, includeNoConnectionBindingBind, epoxyRecyclerView, includeSystemErrorBindingBind, textView, textView2);
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
    public static FragmentMyreportsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_myreports, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17164a;
    }
}
