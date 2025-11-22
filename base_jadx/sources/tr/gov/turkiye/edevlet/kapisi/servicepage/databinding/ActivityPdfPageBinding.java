package tr.gov.turkiye.edevlet.kapisi.servicepage.databinding;

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
public final class ActivityPdfPageBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16821a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final PDFView f16822b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final MaterialToolbar f16823c;

    public ActivityPdfPageBinding(@NonNull ConstraintLayout constraintLayout, @NonNull PDFView pDFView, @NonNull MaterialToolbar materialToolbar) {
        this.f16821a = constraintLayout;
        this.f16822b = pDFView;
        this.f16823c = materialToolbar;
    }

    @NonNull
    public static ActivityPdfPageBinding bind(@NonNull View view) {
        int r02 = R.id.pdf_viewer;
        PDFView pDFView = (PDFView) ViewBindings.findChildViewById(view, R.id.pdf_viewer);
        if (pDFView != null) {
            r02 = R.id.toolbar_service_page;
            MaterialToolbar materialToolbar = (MaterialToolbar) ViewBindings.findChildViewById(view, R.id.toolbar_service_page);
            if (materialToolbar != null) {
                return new ActivityPdfPageBinding((ConstraintLayout) view, pDFView, materialToolbar);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ActivityPdfPageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.activity_pdf_page, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16821a;
    }
}
