package tr.gov.turkiye.edevlet.kapisi.profile.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ItemProfileContactBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16649a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final Button f16650b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f16651c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f16652d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f16653e;

    @NonNull
    public final TextView f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f16654g;

    public ItemProfileContactBinding(@NonNull ConstraintLayout constraintLayout, @NonNull Button button, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull AppCompatTextView appCompatTextView) {
        this.f16649a = constraintLayout;
        this.f16650b = button;
        this.f16651c = textView;
        this.f16652d = textView2;
        this.f16653e = textView3;
        this.f = textView4;
        this.f16654g = appCompatTextView;
    }

    @NonNull
    public static ItemProfileContactBinding bind(@NonNull View view) {
        int r02 = R.id.container_email;
        if (((LinearLayout) ViewBindings.findChildViewById(view, R.id.container_email)) != null) {
            r02 = R.id.container_phone_number;
            if (((LinearLayout) ViewBindings.findChildViewById(view, R.id.container_phone_number)) != null) {
                r02 = R.id.divider_email;
                if (ViewBindings.findChildViewById(view, R.id.divider_email) != null) {
                    r02 = R.id.divider_phone_number;
                    if (ViewBindings.findChildViewById(view, R.id.divider_phone_number) != null) {
                        r02 = R.id.profile_btn_edit_contact;
                        Button button = (Button) ViewBindings.findChildViewById(view, R.id.profile_btn_edit_contact);
                        if (button != null) {
                            r02 = R.id.profile_contact_container;
                            if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.profile_contact_container)) != null) {
                                r02 = R.id.profile_contact_status;
                                if (((TextView) ViewBindings.findChildViewById(view, R.id.profile_contact_status)) != null) {
                                    r02 = R.id.profile_cv_contact;
                                    if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.profile_cv_contact)) != null) {
                                        r02 = R.id.profile_email;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.profile_email);
                                        if (textView != null) {
                                            r02 = R.id.profile_email_status;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.profile_email_status);
                                            if (textView2 != null) {
                                                r02 = R.id.profile_phone_number;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.profile_phone_number);
                                                if (textView3 != null) {
                                                    r02 = R.id.profile_phone_status;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.profile_phone_status);
                                                    if (textView4 != null) {
                                                        r02 = R.id.profile_username;
                                                        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.profile_username);
                                                        if (appCompatTextView != null) {
                                                            return new ItemProfileContactBinding((ConstraintLayout) view, button, textView, textView2, textView3, textView4, appCompatTextView);
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
    public static ItemProfileContactBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_profile_contact, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16649a;
    }
}
