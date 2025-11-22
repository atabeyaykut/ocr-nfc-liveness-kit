package tr.gov.turkiye.edevlet.kapisi.barcode.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.barteksc.pdfviewer.PDFView;
import com.google.android.material.appbar.MaterialToolbar;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ActivityBarcodePdfBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f15786a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final PDFView f15787b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final MaterialToolbar f15788c;

    public ActivityBarcodePdfBinding(@NonNull ConstraintLayout constraintLayout, @NonNull PDFView pDFView, @NonNull MaterialToolbar materialToolbar) {
        this.f15786a = constraintLayout;
        this.f15787b = pDFView;
        this.f15788c = materialToolbar;
    }

    @NonNull
    public static ActivityBarcodePdfBinding bind(@NonNull View view) {
        int r02 = R.id.pdf_viewer;
        PDFView pDFView = (PDFView) ViewBindings.findChildViewById(view, R.id.pdf_viewer);
        if (pDFView != null) {
            r02 = R.id.toolbar_service_page;
            MaterialToolbar materialToolbar = (MaterialToolbar) ViewBindings.findChildViewById(view, R.id.toolbar_service_page);
            if (materialToolbar != null) {
                return new ActivityBarcodePdfBinding((ConstraintLayout) view, pDFView, materialToolbar);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ActivityBarcodePdfBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.activity_barcode_pdf, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f15786a;
    }
}
