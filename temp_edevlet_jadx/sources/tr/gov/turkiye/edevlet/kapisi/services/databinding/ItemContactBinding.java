package tr.gov.turkiye.edevlet.kapisi.services.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ItemContactBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16866a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f16867b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f16868c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f16869d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f16870e;

    @NonNull
    public final AppCompatTextView f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f16871g;

    public ItemContactBinding(@NonNull ConstraintLayout constraintLayout, @NonNull AppCompatTextView appCompatTextView, @NonNull LinearLayout linearLayout, @NonNull AppCompatTextView appCompatTextView2, @NonNull LinearLayout linearLayout2, @NonNull AppCompatTextView appCompatTextView3, @NonNull LinearLayout linearLayout3) {
        this.f16866a = constraintLayout;
        this.f16867b = appCompatTextView;
        this.f16868c = linearLayout;
        this.f16869d = appCompatTextView2;
        this.f16870e = linearLayout2;
        this.f = appCompatTextView3;
        this.f16871g = linearLayout3;
    }

    @NonNull
    public static ItemContactBinding bind(@NonNull View view) {
        int r02 = R.id.institution_contact_address;
        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.institution_contact_address);
        if (appCompatTextView != null) {
            r02 = R.id.institution_contact_address_container;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.institution_contact_address_container);
            if (linearLayout != null) {
                r02 = R.id.institution_contact_phone;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.institution_contact_phone);
                if (appCompatTextView2 != null) {
                    r02 = R.id.institution_contact_phone_container;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.institution_contact_phone_container);
                    if (linearLayout2 != null) {
                        r02 = R.id.institution_contact_website;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.institution_contact_website);
                        if (appCompatTextView3 != null) {
                            r02 = R.id.institution_contact_website_container;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.institution_contact_website_container);
                            if (linearLayout3 != null) {
                                return new ItemContactBinding((ConstraintLayout) view, appCompatTextView, linearLayout, appCompatTextView2, linearLayout2, appCompatTextView3, linearLayout3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ItemContactBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_contact, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16866a;
    }
}
