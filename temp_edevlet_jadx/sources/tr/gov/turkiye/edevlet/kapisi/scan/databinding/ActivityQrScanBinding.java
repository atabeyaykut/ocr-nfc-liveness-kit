package tr.gov.turkiye.edevlet.kapisi.scan.databinding;

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
import tr.gov.turkiye.edevlet.kapisi.scan.camera.ViewFinderOverlay;

/* loaded from: classes3.dex */
public final class ActivityQrScanBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16701a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final PreviewView f16702b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f16703c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final ViewFinderOverlay f16704d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final ProgressBar f16705e;

    @NonNull
    public final MaterialToolbar f;

    public ActivityQrScanBinding(@NonNull ConstraintLayout constraintLayout, @NonNull PreviewView previewView, @NonNull ImageView imageView, @NonNull ViewFinderOverlay viewFinderOverlay, @NonNull ProgressBar progressBar, @NonNull MaterialToolbar materialToolbar) {
        this.f16701a = constraintLayout;
        this.f16702b = previewView;
        this.f16703c = imageView;
        this.f16704d = viewFinderOverlay;
        this.f16705e = progressBar;
        this.f = materialToolbar;
    }

    @NonNull
    public static ActivityQrScanBinding bind(@NonNull View view) {
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
                            return new ActivityQrScanBinding((ConstraintLayout) view, previewView, imageView, viewFinderOverlay, progressBar, materialToolbar);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ActivityQrScanBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.activity_qr_scan, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16701a;
    }
}
