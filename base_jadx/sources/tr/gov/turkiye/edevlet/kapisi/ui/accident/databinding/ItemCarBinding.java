package tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ItemCarBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17200a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17201b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final RadioButton f17202c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f17203d;

    public ItemCarBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull RadioButton radioButton, @NonNull AppCompatTextView appCompatTextView) {
        this.f17200a = constraintLayout;
        this.f17201b = constraintLayout2;
        this.f17202c = radioButton;
        this.f17203d = appCompatTextView;
    }

    @NonNull
    public static ItemCarBinding bind(@NonNull View view) {
        int r02 = R.id.guideline1;
        if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline1)) != null) {
            r02 = R.id.guideline2;
            if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline2)) != null) {
                r02 = R.id.item_container;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.item_container);
                if (constraintLayout != null) {
                    r02 = R.id.radio_car_select;
                    RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(view, R.id.radio_car_select);
                    if (radioButton != null) {
                        r02 = R.id.txt_platen_number;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_platen_number);
                        if (appCompatTextView != null) {
                            return new ItemCarBinding((ConstraintLayout) view, constraintLayout, radioButton, appCompatTextView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ItemCarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_car, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17200a;
    }
}
