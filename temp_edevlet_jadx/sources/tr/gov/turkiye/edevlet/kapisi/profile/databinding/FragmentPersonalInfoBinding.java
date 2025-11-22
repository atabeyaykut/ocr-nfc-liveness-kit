package tr.gov.turkiye.edevlet.kapisi.profile.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.Guideline;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeNoConnectionBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeSystemErrorBinding;

/* loaded from: classes3.dex */
public final class FragmentPersonalInfoBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f16621a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final IncludeNoConnectionBinding f16622b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f16623c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f16624d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final ProgressBar f16625e;

    @NonNull
    public final TextView f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f16626g;

    /* renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f16627h;

    /* renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f16628i;

    /* renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f16629j;

    /* renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f16630k;

    /* renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f16631l;

    /* renamed from: m, reason: collision with root package name */
    @NonNull
    public final IncludeSystemErrorBinding f16632m;

    public FragmentPersonalInfoBinding(@NonNull NestedScrollView nestedScrollView, @NonNull IncludeNoConnectionBinding includeNoConnectionBinding, @NonNull Button button, @NonNull NestedScrollView nestedScrollView2, @NonNull ProgressBar progressBar, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull IncludeSystemErrorBinding includeSystemErrorBinding) {
        this.f16621a = nestedScrollView;
        this.f16622b = includeNoConnectionBinding;
        this.f16623c = button;
        this.f16624d = nestedScrollView2;
        this.f16625e = progressBar;
        this.f = textView;
        this.f16626g = textView2;
        this.f16627h = textView3;
        this.f16628i = textView4;
        this.f16629j = textView5;
        this.f16630k = textView6;
        this.f16631l = textView7;
        this.f16632m = includeSystemErrorBinding;
    }

    @NonNull
    public static FragmentPersonalInfoBinding bind(@NonNull View view) {
        int r12 = R.id.guideline;
        if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline)) != null) {
            r12 = R.id.no_connection_view;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.no_connection_view);
            if (viewFindChildViewById != null) {
                IncludeNoConnectionBinding includeNoConnectionBindingBind = IncludeNoConnectionBinding.bind(viewFindChildViewById);
                r12 = R.id.profile_btn_refresh_identity;
                Button button = (Button) ViewBindings.findChildViewById(view, R.id.profile_btn_refresh_identity);
                if (button != null) {
                    NestedScrollView nestedScrollView = (NestedScrollView) view;
                    r12 = R.id.profile_cv_identity;
                    if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.profile_cv_identity)) != null) {
                        r12 = R.id.profile_fragment_progressBar;
                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.profile_fragment_progressBar);
                        if (progressBar != null) {
                            r12 = R.id.profile_txt_address;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.profile_txt_address);
                            if (textView != null) {
                                r12 = R.id.profile_txt_birthdate;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.profile_txt_birthdate);
                                if (textView2 != null) {
                                    r12 = R.id.profile_txt_birthplace;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.profile_txt_birthplace);
                                    if (textView3 != null) {
                                        r12 = R.id.profile_txt_father_name;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.profile_txt_father_name);
                                        if (textView4 != null) {
                                            r12 = R.id.profile_txt_info_identity;
                                            if (((TextView) ViewBindings.findChildViewById(view, R.id.profile_txt_info_identity)) != null) {
                                                r12 = R.id.profile_txt_mother_name;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.profile_txt_mother_name);
                                                if (textView5 != null) {
                                                    r12 = R.id.profile_txt_name;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.profile_txt_name);
                                                    if (textView6 != null) {
                                                        r12 = R.id.profile_txt_update_date;
                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.profile_txt_update_date);
                                                        if (textView7 != null) {
                                                            r12 = R.id.system_error_view;
                                                            View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.system_error_view);
                                                            if (viewFindChildViewById2 != null) {
                                                                return new FragmentPersonalInfoBinding(nestedScrollView, includeNoConnectionBindingBind, button, nestedScrollView, progressBar, textView, textView2, textView3, textView4, textView5, textView6, textView7, IncludeSystemErrorBinding.bind(viewFindChildViewById2));
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
    public static FragmentPersonalInfoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_personal_info, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16621a;
    }
}
