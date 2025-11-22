package tr.gov.turkiye.edevlet.kapisi.profile.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.airbnb.lottie.LottieAnimationView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeNoConnectionBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeSystemErrorBinding;

/* loaded from: classes3.dex */
public final class FragmentProfileBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final FrameLayout f16643a;

    public FragmentProfileBinding(@NonNull FrameLayout frameLayout) {
        this.f16643a = frameLayout;
    }

    @NonNull
    public static FragmentProfileBinding bind(@NonNull View view) {
        int r02 = R.id.animation_view;
        if (((LottieAnimationView) ViewBindings.findChildViewById(view, R.id.animation_view)) != null) {
            r02 = R.id.container_id_verification;
            if (((LinearLayout) ViewBindings.findChildViewById(view, R.id.container_id_verification)) != null) {
                r02 = R.id.guideline;
                if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline)) != null) {
                    r02 = R.id.no_connection_view;
                    View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.no_connection_view);
                    if (viewFindChildViewById != null) {
                        IncludeNoConnectionBinding.bind(viewFindChildViewById);
                        r02 = R.id.profile_banner_container;
                        if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.profile_banner_container)) != null) {
                            r02 = R.id.profile_banner_negative;
                            if (((MaterialButton) ViewBindings.findChildViewById(view, R.id.profile_banner_negative)) != null) {
                                r02 = R.id.profile_banner_positive;
                                if (((MaterialButton) ViewBindings.findChildViewById(view, R.id.profile_banner_positive)) != null) {
                                    r02 = R.id.profile_btn_email_update;
                                    if (((Button) ViewBindings.findChildViewById(view, R.id.profile_btn_email_update)) != null) {
                                        r02 = R.id.profile_btn_id_verification;
                                        if (((Button) ViewBindings.findChildViewById(view, R.id.profile_btn_id_verification)) != null) {
                                            r02 = R.id.profile_btn_refresh_contact;
                                            if (((Button) ViewBindings.findChildViewById(view, R.id.profile_btn_refresh_contact)) != null) {
                                                r02 = R.id.profile_btn_refresh_identity;
                                                if (((Button) ViewBindings.findChildViewById(view, R.id.profile_btn_refresh_identity)) != null) {
                                                    r02 = R.id.profile_container;
                                                    if (((NestedScrollView) ViewBindings.findChildViewById(view, R.id.profile_container)) != null) {
                                                        r02 = R.id.profile_cv_banner;
                                                        if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.profile_cv_banner)) != null) {
                                                            r02 = R.id.profile_cv_contact;
                                                            if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.profile_cv_contact)) != null) {
                                                                r02 = R.id.profile_cv_email_contact;
                                                                if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.profile_cv_email_contact)) != null) {
                                                                    r02 = R.id.profile_cv_identity;
                                                                    if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.profile_cv_identity)) != null) {
                                                                        r02 = R.id.profile_email_status;
                                                                        if (((TextView) ViewBindings.findChildViewById(view, R.id.profile_email_status)) != null) {
                                                                            r02 = R.id.profile_fragment_progressBar;
                                                                            if (((ProgressBar) ViewBindings.findChildViewById(view, R.id.profile_fragment_progressBar)) != null) {
                                                                                FrameLayout frameLayout = (FrameLayout) view;
                                                                                if (((TextView) ViewBindings.findChildViewById(view, R.id.profile_phone_status)) == null) {
                                                                                    r02 = R.id.profile_phone_status;
                                                                                } else if (((TextView) ViewBindings.findChildViewById(view, R.id.profile_txt_address)) == null) {
                                                                                    r02 = R.id.profile_txt_address;
                                                                                } else if (((TextView) ViewBindings.findChildViewById(view, R.id.profile_txt_birthdate)) == null) {
                                                                                    r02 = R.id.profile_txt_birthdate;
                                                                                } else if (((TextView) ViewBindings.findChildViewById(view, R.id.profile_txt_birthplace)) == null) {
                                                                                    r02 = R.id.profile_txt_birthplace;
                                                                                } else if (((TextView) ViewBindings.findChildViewById(view, R.id.profile_txt_father_name)) == null) {
                                                                                    r02 = R.id.profile_txt_father_name;
                                                                                } else if (((TextView) ViewBindings.findChildViewById(view, R.id.profile_txt_info_contact)) == null) {
                                                                                    r02 = R.id.profile_txt_info_contact;
                                                                                } else if (((TextView) ViewBindings.findChildViewById(view, R.id.profile_txt_info_email)) == null) {
                                                                                    r02 = R.id.profile_txt_info_email;
                                                                                } else if (((TextView) ViewBindings.findChildViewById(view, R.id.profile_txt_info_identity)) == null) {
                                                                                    r02 = R.id.profile_txt_info_identity;
                                                                                } else if (((TextView) ViewBindings.findChildViewById(view, R.id.profile_txt_mail)) == null) {
                                                                                    r02 = R.id.profile_txt_mail;
                                                                                } else if (((TextView) ViewBindings.findChildViewById(view, R.id.profile_txt_mother_name)) == null) {
                                                                                    r02 = R.id.profile_txt_mother_name;
                                                                                } else if (((TextView) ViewBindings.findChildViewById(view, R.id.profile_txt_name)) == null) {
                                                                                    r02 = R.id.profile_txt_name;
                                                                                } else if (((TextView) ViewBindings.findChildViewById(view, R.id.profile_txt_tel)) == null) {
                                                                                    r02 = R.id.profile_txt_tel;
                                                                                } else if (((TextView) ViewBindings.findChildViewById(view, R.id.profile_txt_update_date)) != null) {
                                                                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.system_error_view);
                                                                                    if (viewFindChildViewById2 != null) {
                                                                                        IncludeSystemErrorBinding.bind(viewFindChildViewById2);
                                                                                        if (((TextView) ViewBindings.findChildViewById(view, R.id.text_id_verification_page)) == null) {
                                                                                            r02 = R.id.text_id_verification_page;
                                                                                        } else if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_banner_description)) == null) {
                                                                                            r02 = R.id.txt_banner_description;
                                                                                        } else {
                                                                                            if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_banner_title)) != null) {
                                                                                                return new FragmentProfileBinding(frameLayout);
                                                                                            }
                                                                                            r02 = R.id.txt_banner_title;
                                                                                        }
                                                                                    } else {
                                                                                        r02 = R.id.system_error_view;
                                                                                    }
                                                                                } else {
                                                                                    r02 = R.id.profile_txt_update_date;
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static FragmentProfileBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_profile, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16643a;
    }
}
