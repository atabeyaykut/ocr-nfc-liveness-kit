package tr.gov.turkiye.edevlet.kapisi.profile.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class FragmentSettingsBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16644a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final MaterialCardView f16645b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final MaterialCardView f16646c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final MaterialCardView f16647d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f16648e;

    public FragmentSettingsBinding(@NonNull ConstraintLayout constraintLayout, @NonNull MaterialCardView materialCardView, @NonNull MaterialCardView materialCardView2, @NonNull MaterialCardView materialCardView3, @NonNull TextView textView) {
        this.f16644a = constraintLayout;
        this.f16645b = materialCardView;
        this.f16646c = materialCardView2;
        this.f16647d = materialCardView3;
        this.f16648e = textView;
    }

    @NonNull
    public static FragmentSettingsBinding bind(@NonNull View view) {
        int r02 = R.id.app_change_pass;
        MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.app_change_pass);
        if (materialCardView != null) {
            r02 = R.id.app_usage_history;
            MaterialCardView materialCardView2 = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.app_usage_history);
            if (materialCardView2 != null) {
                r02 = R.id.img_pass_change;
                if (((ImageView) ViewBindings.findChildViewById(view, R.id.img_pass_change)) != null) {
                    r02 = R.id.img_pass_change_arrow;
                    if (((ImageView) ViewBindings.findChildViewById(view, R.id.img_pass_change_arrow)) != null) {
                        r02 = R.id.img_two_factor;
                        if (((ImageView) ViewBindings.findChildViewById(view, R.id.img_two_factor)) != null) {
                            r02 = R.id.img_two_factor_arrow;
                            if (((ImageView) ViewBindings.findChildViewById(view, R.id.img_two_factor_arrow)) != null) {
                                r02 = R.id.img_usage_history;
                                if (((ImageView) ViewBindings.findChildViewById(view, R.id.img_usage_history)) != null) {
                                    r02 = R.id.img_usage_history_arrow;
                                    if (((ImageView) ViewBindings.findChildViewById(view, R.id.img_usage_history_arrow)) != null) {
                                        r02 = R.id.nestedScrollView;
                                        if (((NestedScrollView) ViewBindings.findChildViewById(view, R.id.nestedScrollView)) != null) {
                                            r02 = R.id.two_factor_container;
                                            MaterialCardView materialCardView3 = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.two_factor_container);
                                            if (materialCardView3 != null) {
                                                r02 = R.id.txt_pass_change;
                                                if (((TextView) ViewBindings.findChildViewById(view, R.id.txt_pass_change)) != null) {
                                                    r02 = R.id.txt_settings_security_title;
                                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.txt_settings_security_title);
                                                    if (textView != null) {
                                                        r02 = R.id.txt_settings_title;
                                                        if (((TextView) ViewBindings.findChildViewById(view, R.id.txt_settings_title)) != null) {
                                                            r02 = R.id.txt_two_factor;
                                                            if (((TextView) ViewBindings.findChildViewById(view, R.id.txt_two_factor)) != null) {
                                                                r02 = R.id.txt_usage_history;
                                                                if (((TextView) ViewBindings.findChildViewById(view, R.id.txt_usage_history)) != null) {
                                                                    return new FragmentSettingsBinding((ConstraintLayout) view, materialCardView, materialCardView2, materialCardView3, textView);
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
    public static FragmentSettingsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_settings, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16644a;
    }
}
