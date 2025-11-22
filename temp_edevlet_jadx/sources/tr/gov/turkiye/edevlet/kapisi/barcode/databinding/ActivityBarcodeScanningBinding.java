package tr.gov.turkiye.edevlet.kapisi.barcode.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.camera.view.PreviewView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.MaterialToolbar;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.barcode.camera.ViewFinderOverlay;

/* loaded from: classes3.dex */
public final class ActivityBarcodeScanningBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f15789a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final PreviewView f15790b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f15791c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final ViewFinderOverlay f15792d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final ProgressBar f15793e;

    @NonNull
    public final MaterialToolbar f;

    public ActivityBarcodeScanningBinding(@NonNull ConstraintLayout constraintLayout, @NonNull PreviewView previewView, @NonNull ImageView imageView, @NonNull ViewFinderOverlay viewFinderOverlay, @NonNull ProgressBar progressBar, @NonNull MaterialToolbar materialToolbar) {
        this.f15789a = constraintLayout;
        this.f15790b = previewView;
        this.f15791c = imageView;
        this.f15792d = viewFinderOverlay;
        this.f15793e = progressBar;
        this.f = materialToolbar;
    }

    @NonNull
    public static ActivityBarcodeScanningBinding bind(@NonNull View view) {
        int r02 = R.id.cameraPreview;
        PreviewView previewView = (PreviewView) ViewBindings.findChildViewById(view, R.id.cameraPreview);
        if (previewView != null) {
            r02 = R.id.ivFlashControl;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivFlashControl);
            if (imageView != null) {
                r02 = R.id.overlay;
                ViewFinderOverlay viewFinderOverlay = (ViewFinderOverlay) ViewBindings.findChildViewById(view, R.id.overlay);
                if (viewFinderOverlay != null) {
                    r02 = R.id.progressBar;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
                    if (progressBar != null) {
                        r02 = R.id.toolbar_barcode_scanning_page;
                        MaterialToolbar materialToolbar = (MaterialToolbar) ViewBindings.findChildViewById(view, R.id.toolbar_barcode_scanning_page);
                        if (materialToolbar != null) {
                            return new ActivityBarcodeScanningBinding((ConstraintLayout) view, previewView, imageView, viewFinderOverlay, progressBar, materialToolbar);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ActivityBarcodeScanningBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.activity_barcode_scanning, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f15789a;
    }
}
