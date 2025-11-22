package tr.gov.turkiye.edevlet.kapisi.verification.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.verification.ocr.CameraSourcePreview;
import tr.gov.turkiye.edevlet.kapisi.verification.ocr.GraphicOverlay;

/* loaded from: classes3.dex */
public final class ActivityCardOcrBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17603a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final FloatingActionButton f17604b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final MaterialToolbar f17605c;

    public ActivityCardOcrBinding(@NonNull ConstraintLayout constraintLayout, @NonNull FloatingActionButton floatingActionButton, @NonNull MaterialToolbar materialToolbar) {
        this.f17603a = constraintLayout;
        this.f17604b = floatingActionButton;
        this.f17605c = materialToolbar;
    }

    @NonNull
    public static ActivityCardOcrBinding bind(@NonNull View view) {
        int r02 = R.id.camera_source_preview;
        if (((CameraSourcePreview) ViewBindings.findChildViewById(view, R.id.camera_source_preview)) != null) {
            r02 = R.id.fab_use_keyboard;
            FloatingActionButton floatingActionButton = (FloatingActionButton) ViewBindings.findChildViewById(view, R.id.fab_use_keyboard);
            if (floatingActionButton != null) {
                r02 = R.id.graphics_overlay;
                if (((GraphicOverlay) ViewBindings.findChildViewById(view, R.id.graphics_overlay)) != null) {
                    r02 = R.id.imageView8;
                    if (((ImageView) ViewBindings.findChildViewById(view, R.id.imageView8)) != null) {
                        r02 = R.id.textView3;
                        if (((TextView) ViewBindings.findChildViewById(view, R.id.textView3)) != null) {
                            r02 = R.id.textView4;
                            if (((TextView) ViewBindings.findChildViewById(view, R.id.textView4)) != null) {
                                r02 = R.id.toolbar_ocr_scan;
                                MaterialToolbar materialToolbar = (MaterialToolbar) ViewBindings.findChildViewById(view, R.id.toolbar_ocr_scan);
                                if (materialToolbar != null) {
                                    r02 = R.id.view2;
                                    if (ViewBindings.findChildViewById(view, R.id.view2) != null) {
                                        r02 = R.id.view3;
                                        if (ViewBindings.findChildViewById(view, R.id.view3) != null) {
                                            return new ActivityCardOcrBinding((ConstraintLayout) view, floatingActionButton, materialToolbar);
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
    public static ActivityCardOcrBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.activity_card_ocr, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17603a;
    }
}
