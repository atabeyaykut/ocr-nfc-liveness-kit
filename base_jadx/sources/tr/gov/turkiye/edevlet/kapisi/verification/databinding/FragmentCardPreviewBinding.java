package tr.gov.turkiye.edevlet.kapisi.verification.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.constraintlayout.widget.Guideline;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class FragmentCardPreviewBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f17644a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final Button f17645b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final Group f17646c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f17647d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f17648e;

    @NonNull
    public final TextView f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f17649g;

    public FragmentCardPreviewBinding(@NonNull NestedScrollView nestedScrollView, @NonNull Button button, @NonNull Group group, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f17644a = nestedScrollView;
        this.f17645b = button;
        this.f17646c = group;
        this.f17647d = textView;
        this.f17648e = textView2;
        this.f = textView3;
        this.f17649g = textView4;
    }

    @NonNull
    public static FragmentCardPreviewBinding bind(@NonNull View view) {
        int r02 = R.id.btn_check_over;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_check_over);
        if (button != null) {
            r02 = R.id.group_phone_number;
            Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_phone_number);
            if (group != null) {
                r02 = R.id.guideline;
                if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline)) != null) {
                    r02 = R.id.guideline_birth_date;
                    if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline_birth_date)) != null) {
                        r02 = R.id.guideline_serial_no;
                        if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline_serial_no)) != null) {
                            r02 = R.id.guideline_valid_date;
                            if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline_valid_date)) != null) {
                                r02 = R.id.preview_birth_date_container;
                                if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.preview_birth_date_container)) != null) {
                                    r02 = R.id.preview_card_info_container;
                                    if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.preview_card_info_container)) != null) {
                                        r02 = R.id.preview_header_info;
                                        if (((TextView) ViewBindings.findChildViewById(view, R.id.preview_header_info)) != null) {
                                            r02 = R.id.preview_id_card_title;
                                            if (((TextView) ViewBindings.findChildViewById(view, R.id.preview_id_card_title)) != null) {
                                                r02 = R.id.preview_phone_number_container;
                                                if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.preview_phone_number_container)) != null) {
                                                    r02 = R.id.preview_phone_title;
                                                    if (((TextView) ViewBindings.findChildViewById(view, R.id.preview_phone_title)) != null) {
                                                        r02 = R.id.preview_serial_no_container;
                                                        if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.preview_serial_no_container)) != null) {
                                                            r02 = R.id.preview_txt_birth_date;
                                                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.preview_txt_birth_date);
                                                            if (textView != null) {
                                                                r02 = R.id.preview_txt_phone_number;
                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.preview_txt_phone_number);
                                                                if (textView2 != null) {
                                                                    r02 = R.id.preview_txt_serial_no;
                                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.preview_txt_serial_no);
                                                                    if (textView3 != null) {
                                                                        r02 = R.id.preview_txt_valid_date;
                                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.preview_txt_valid_date);
                                                                        if (textView4 != null) {
                                                                            r02 = R.id.preview_valid_date_container;
                                                                            if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.preview_valid_date_container)) != null) {
                                                                                return new FragmentCardPreviewBinding((NestedScrollView) view, button, group, textView, textView2, textView3, textView4);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static FragmentCardPreviewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_card_preview, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17644a;
    }
}
