package tr.gov.turkiye.edevlet.kapisi.common.ui.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.Group;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class IncludeUpdateModuleBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final MaterialCardView f15887a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final Button f15888b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f15889c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final Group f15890d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f15891e;

    @NonNull
    public final TextView f;

    public IncludeUpdateModuleBinding(@NonNull MaterialCardView materialCardView, @NonNull Button button, @NonNull Button button2, @NonNull Group group, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f15887a = materialCardView;
        this.f15888b = button;
        this.f15889c = button2;
        this.f15890d = group;
        this.f15891e = textView;
        this.f = textView2;
    }

    @NonNull
    public static IncludeUpdateModuleBinding bind(@NonNull View view) {
        int r02 = R.id.btn_update_later;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_update_later);
        if (button != null) {
            r02 = R.id.btn_update_now;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.btn_update_now);
            if (button2 != null) {
                r02 = R.id.group_later;
                Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_later);
                if (group != null) {
                    r02 = R.id.guideline1;
                    if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline1)) != null) {
                        r02 = R.id.icon_update;
                        if (((ImageView) ViewBindings.findChildViewById(view, R.id.icon_update)) != null) {
                            r02 = R.id.txt_update_description;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.txt_update_description);
                            if (textView != null) {
                                r02 = R.id.txt_update_title;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.txt_update_title);
                                if (textView2 != null) {
                                    return new IncludeUpdateModuleBinding((MaterialCardView) view, button, button2, group, textView, textView2);
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
    public static IncludeUpdateModuleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.include_update_module, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f15887a;
    }
}
