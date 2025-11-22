package tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeNoConnectionBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeSystemErrorBinding;

/* loaded from: classes3.dex */
public final class FragmentDashPointBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f17097a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final Button f17098b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17099c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final AppCompatImageView f17100d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final AppCompatImageView f17101e;

    @NonNull
    public final AppCompatImageView f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public final AppCompatImageView f17102g;

    /* renamed from: h, reason: collision with root package name */
    @NonNull
    public final AppCompatImageView f17103h;

    /* renamed from: i, reason: collision with root package name */
    @NonNull
    public final AppCompatImageView f17104i;

    /* renamed from: j, reason: collision with root package name */
    @NonNull
    public final AppCompatImageView f17105j;

    /* renamed from: k, reason: collision with root package name */
    @NonNull
    public final AppCompatImageView f17106k;

    /* renamed from: l, reason: collision with root package name */
    @NonNull
    public final AppCompatImageView f17107l;

    /* renamed from: m, reason: collision with root package name */
    @NonNull
    public final AppCompatImageView f17108m;

    /* renamed from: n, reason: collision with root package name */
    @NonNull
    public final AppCompatImageView f17109n;

    /* renamed from: o, reason: collision with root package name */
    @NonNull
    public final AppCompatImageView f17110o;

    /* renamed from: p, reason: collision with root package name */
    @NonNull
    public final AppCompatImageView f17111p;

    /* renamed from: q, reason: collision with root package name */
    @NonNull
    public final AppCompatImageView f17112q;

    /* renamed from: r, reason: collision with root package name */
    @NonNull
    public final AppCompatImageView f17113r;

    /* renamed from: s, reason: collision with root package name */
    @NonNull
    public final AppCompatImageView f17114s;

    /* renamed from: t, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f17115t;

    public FragmentDashPointBinding(@NonNull NestedScrollView nestedScrollView, @NonNull Button button, @NonNull ConstraintLayout constraintLayout, @NonNull AppCompatImageView appCompatImageView, @NonNull AppCompatImageView appCompatImageView2, @NonNull AppCompatImageView appCompatImageView3, @NonNull AppCompatImageView appCompatImageView4, @NonNull AppCompatImageView appCompatImageView5, @NonNull AppCompatImageView appCompatImageView6, @NonNull AppCompatImageView appCompatImageView7, @NonNull AppCompatImageView appCompatImageView8, @NonNull AppCompatImageView appCompatImageView9, @NonNull AppCompatImageView appCompatImageView10, @NonNull AppCompatImageView appCompatImageView11, @NonNull AppCompatImageView appCompatImageView12, @NonNull AppCompatImageView appCompatImageView13, @NonNull AppCompatImageView appCompatImageView14, @NonNull AppCompatImageView appCompatImageView15, @NonNull AppCompatImageView appCompatImageView16, @NonNull NestedScrollView nestedScrollView2) {
        this.f17097a = nestedScrollView;
        this.f17098b = button;
        this.f17099c = constraintLayout;
        this.f17100d = appCompatImageView;
        this.f17101e = appCompatImageView2;
        this.f = appCompatImageView3;
        this.f17102g = appCompatImageView4;
        this.f17103h = appCompatImageView5;
        this.f17104i = appCompatImageView6;
        this.f17105j = appCompatImageView7;
        this.f17106k = appCompatImageView8;
        this.f17107l = appCompatImageView9;
        this.f17108m = appCompatImageView10;
        this.f17109n = appCompatImageView11;
        this.f17110o = appCompatImageView12;
        this.f17111p = appCompatImageView13;
        this.f17112q = appCompatImageView14;
        this.f17113r = appCompatImageView15;
        this.f17114s = appCompatImageView16;
        this.f17115t = nestedScrollView2;
    }

    @NonNull
    public static FragmentDashPointBinding bind(@NonNull View view) {
        int r12 = R.id.btn_manual_next;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_manual_next);
        if (button != null) {
            r12 = R.id.content_container;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.content_container);
            if (constraintLayout != null) {
                r12 = R.id.guideline1;
                if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline1)) != null) {
                    r12 = R.id.guideline2;
                    if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline2)) != null) {
                        r12 = R.id.guideline3;
                        if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline3)) != null) {
                            r12 = R.id.img_approve_info;
                            if (((AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_approve_info)) != null) {
                                r12 = R.id.img_back_left_point;
                                AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_back_left_point);
                                if (appCompatImageView != null) {
                                    r12 = R.id.img_back_point;
                                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_back_point);
                                    if (appCompatImageView2 != null) {
                                        r12 = R.id.img_back_right_point;
                                        AppCompatImageView appCompatImageView3 = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_back_right_point);
                                        if (appCompatImageView3 != null) {
                                            r12 = R.id.img_car_info;
                                            if (((AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_car_info)) != null) {
                                                r12 = R.id.img_dash_point_car;
                                                if (((AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_dash_point_car)) != null) {
                                                    r12 = R.id.img_driver_info;
                                                    if (((AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_driver_info)) != null) {
                                                        r12 = R.id.img_final_info;
                                                        if (((AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_final_info)) != null) {
                                                            r12 = R.id.img_front_left_point;
                                                            AppCompatImageView appCompatImageView4 = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_front_left_point);
                                                            if (appCompatImageView4 != null) {
                                                                r12 = R.id.img_front_point;
                                                                AppCompatImageView appCompatImageView5 = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_front_point);
                                                                if (appCompatImageView5 != null) {
                                                                    r12 = R.id.img_front_right_point;
                                                                    AppCompatImageView appCompatImageView6 = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_front_right_point);
                                                                    if (appCompatImageView6 != null) {
                                                                        r12 = R.id.img_left_back_door_point;
                                                                        AppCompatImageView appCompatImageView7 = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_left_back_door_point);
                                                                        if (appCompatImageView7 != null) {
                                                                            r12 = R.id.img_left_back_point;
                                                                            AppCompatImageView appCompatImageView8 = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_left_back_point);
                                                                            if (appCompatImageView8 != null) {
                                                                                r12 = R.id.img_left_front_door_point;
                                                                                AppCompatImageView appCompatImageView9 = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_left_front_door_point);
                                                                                if (appCompatImageView9 != null) {
                                                                                    r12 = R.id.img_left_front_point;
                                                                                    AppCompatImageView appCompatImageView10 = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_left_front_point);
                                                                                    if (appCompatImageView10 != null) {
                                                                                        r12 = R.id.img_left_middle_point;
                                                                                        AppCompatImageView appCompatImageView11 = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_left_middle_point);
                                                                                        if (appCompatImageView11 != null) {
                                                                                            r12 = R.id.img_right_back_door_point;
                                                                                            AppCompatImageView appCompatImageView12 = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_right_back_door_point);
                                                                                            if (appCompatImageView12 != null) {
                                                                                                r12 = R.id.img_right_back_point;
                                                                                                AppCompatImageView appCompatImageView13 = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_right_back_point);
                                                                                                if (appCompatImageView13 != null) {
                                                                                                    r12 = R.id.img_right_front_door_point;
                                                                                                    AppCompatImageView appCompatImageView14 = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_right_front_door_point);
                                                                                                    if (appCompatImageView14 != null) {
                                                                                                        r12 = R.id.img_right_front_point;
                                                                                                        AppCompatImageView appCompatImageView15 = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_right_front_point);
                                                                                                        if (appCompatImageView15 != null) {
                                                                                                            r12 = R.id.img_right_middle_point;
                                                                                                            AppCompatImageView appCompatImageView16 = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_right_middle_point);
                                                                                                            if (appCompatImageView16 != null) {
                                                                                                                r12 = R.id.item_divider;
                                                                                                                if (ViewBindings.findChildViewById(view, R.id.item_divider) != null) {
                                                                                                                    r12 = R.id.item_divider_2;
                                                                                                                    if (ViewBindings.findChildViewById(view, R.id.item_divider_2) != null) {
                                                                                                                        r12 = R.id.item_divider_3;
                                                                                                                        if (ViewBindings.findChildViewById(view, R.id.item_divider_3) != null) {
                                                                                                                            r12 = R.id.logo_container_0;
                                                                                                                            if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.logo_container_0)) != null) {
                                                                                                                                r12 = R.id.logo_container_1;
                                                                                                                                if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.logo_container_1)) != null) {
                                                                                                                                    r12 = R.id.logo_container_2;
                                                                                                                                    if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.logo_container_2)) != null) {
                                                                                                                                        r12 = R.id.logo_container_3;
                                                                                                                                        if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.logo_container_3)) != null) {
                                                                                                                                            r12 = R.id.mkt_breadcrumb_container;
                                                                                                                                            if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.mkt_breadcrumb_container)) != null) {
                                                                                                                                                r12 = R.id.mkt_dash_point_content_container;
                                                                                                                                                if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.mkt_dash_point_content_container)) != null) {
                                                                                                                                                    NestedScrollView nestedScrollView = (NestedScrollView) view;
                                                                                                                                                    r12 = R.id.no_connection_view;
                                                                                                                                                    View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.no_connection_view);
                                                                                                                                                    if (viewFindChildViewById != null) {
                                                                                                                                                        IncludeNoConnectionBinding.bind(viewFindChildViewById);
                                                                                                                                                        r12 = R.id.system_error_view;
                                                                                                                                                        View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.system_error_view);
                                                                                                                                                        if (viewFindChildViewById2 != null) {
                                                                                                                                                            IncludeSystemErrorBinding.bind(viewFindChildViewById2);
                                                                                                                                                            r12 = R.id.txt_dash_point_main_description;
                                                                                                                                                            if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_dash_point_main_description)) != null) {
                                                                                                                                                                r12 = R.id.txt_dash_point_main_title;
                                                                                                                                                                if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_dash_point_main_title)) != null) {
                                                                                                                                                                    return new FragmentDashPointBinding(nestedScrollView, button, constraintLayout, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, appCompatImageView5, appCompatImageView6, appCompatImageView7, appCompatImageView8, appCompatImageView9, appCompatImageView10, appCompatImageView11, appCompatImageView12, appCompatImageView13, appCompatImageView14, appCompatImageView15, appCompatImageView16, nestedScrollView);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r12)));
    }

    @NonNull
    public static FragmentDashPointBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_dash_point, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17097a;
    }
}
