package ke;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import com.google.android.gms.internal.clearcut.d0;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.view.CustomSnackbarView;

/* loaded from: classes3.dex */
public final class d extends BaseTransientBottomBar<d> {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f8929a = 0;

    public static final class a {
        public static d a(ViewGroup viewGroup, int r42, View view, int r6, int r72) {
            ViewGroup viewGroupN = d0.n(viewGroup);
            if (viewGroupN == null) {
                throw new IllegalArgumentException("No suitable parent found from the given view. Please provide a valid view.");
            }
            try {
                View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.custom_snackbar_view, viewGroupN, false);
                h.d(viewInflate, "null cannot be cast to non-null type tr.gov.turkiye.edevlet.kapisi.common.ui.view.CustomSnackbarView");
                CustomSnackbarView customSnackbarView = (CustomSnackbarView) viewInflate;
                customSnackbarView.getTvMsg().setText(r42);
                customSnackbarView.getImLeft().setImageResource(r6);
                customSnackbarView.getLayRoot().setBackgroundColor(r72);
                return new d(viewGroupN, customSnackbarView, view).setDuration(0);
            } catch (Exception unused) {
                return null;
            }
        }

        public static d b(ViewGroup viewGroup, String message, int r6) {
            h.f(message, "message");
            ViewGroup viewGroupN = d0.n(viewGroup);
            if (viewGroupN == null) {
                throw new IllegalArgumentException("No suitable parent found from the given view. Please provide a valid view.");
            }
            try {
                View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.custom_snackbar_view, viewGroupN, false);
                h.d(viewInflate, "null cannot be cast to non-null type tr.gov.turkiye.edevlet.kapisi.common.ui.view.CustomSnackbarView");
                CustomSnackbarView customSnackbarView = (CustomSnackbarView) viewInflate;
                customSnackbarView.getTvMsg().setText(message);
                customSnackbarView.getImLeft().setImageResource(R.drawable.toast_error);
                customSnackbarView.getLayRoot().setBackgroundColor(r6);
                return new d(viewGroupN, customSnackbarView, null).setDuration(0);
            } catch (Exception unused) {
                return null;
            }
        }

        public static d c(ConstraintLayout constraintLayout, int r52, int r6) {
            ViewGroup viewGroupN = d0.n(constraintLayout);
            if (viewGroupN == null) {
                throw new IllegalArgumentException("No suitable parent found from the given view. Please provide a valid view.");
            }
            try {
                View viewInflate = LayoutInflater.from(constraintLayout.getContext()).inflate(R.layout.custom_snackbar_view, viewGroupN, false);
                h.d(viewInflate, "null cannot be cast to non-null type tr.gov.turkiye.edevlet.kapisi.common.ui.view.CustomSnackbarView");
                CustomSnackbarView customSnackbarView = (CustomSnackbarView) viewInflate;
                customSnackbarView.getTvMsg().setText(r52);
                customSnackbarView.getImLeft().setImageResource(R.drawable.toast_error);
                customSnackbarView.getLayRoot().setBackgroundColor(r6);
                return new d(viewGroupN, customSnackbarView, null).setDuration(0);
            } catch (Exception unused) {
                return null;
            }
        }

        public static d d(ConstraintLayout constraintLayout, int r6, int r72, int r82, int r92) {
            ViewGroup viewGroupN = d0.n(constraintLayout);
            if (viewGroupN == null) {
                throw new IllegalArgumentException("No suitable parent found from the given view. Please provide a valid view.");
            }
            try {
                View viewInflate = LayoutInflater.from(constraintLayout.getContext()).inflate(R.layout.custom_snackbar_view, viewGroupN, false);
                h.d(viewInflate, "null cannot be cast to non-null type tr.gov.turkiye.edevlet.kapisi.common.ui.view.CustomSnackbarView");
                CustomSnackbarView customSnackbarView = (CustomSnackbarView) viewInflate;
                customSnackbarView.getTvMsg().setTextColor(ContextCompat.getColor(constraintLayout.getContext(), r92));
                customSnackbarView.getTvMsg().setText(r6);
                customSnackbarView.getImLeft().setImageResource(r72);
                customSnackbarView.getLayRoot().setBackgroundColor(r82);
                return new d(viewGroupN, customSnackbarView, null).setDuration(0);
            } catch (Exception unused) {
                return null;
            }
        }

        public static d e(ViewGroup viewGroup, int r42, View view, int r6, int r72) {
            ViewGroup viewGroupN = d0.n(viewGroup);
            if (viewGroupN == null) {
                throw new IllegalArgumentException("No suitable parent found from the given view. Please provide a valid view.");
            }
            try {
                View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.custom_snackbar_view, viewGroupN, false);
                h.d(viewInflate, "null cannot be cast to non-null type tr.gov.turkiye.edevlet.kapisi.common.ui.view.CustomSnackbarView");
                CustomSnackbarView customSnackbarView = (CustomSnackbarView) viewInflate;
                customSnackbarView.getTvMsg().setText(r42);
                customSnackbarView.getTvMsg().setTextColor(r6);
                customSnackbarView.getImLeft().setImageResource(R.drawable.toast_warning);
                customSnackbarView.getLayRoot().setBackgroundColor(r72);
                return new d(viewGroupN, customSnackbarView, view).setDuration(0);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    public d(ViewGroup viewGroup, CustomSnackbarView customSnackbarView, View view) {
        super(viewGroup, customSnackbarView, customSnackbarView);
        getView().setBackgroundColor(ContextCompat.getColor(this.view.getContext(), android.R.color.transparent));
        if (view != null) {
            setAnchorView(view);
        }
        getView().setPadding(0, 0, 0, 0);
    }
}
