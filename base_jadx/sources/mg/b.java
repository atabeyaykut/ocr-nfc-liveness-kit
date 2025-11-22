package mg;

import android.graphics.Matrix;
import android.media.Image;
import android.util.Size;
import androidx.camera.core.ExperimentalGetImage;
import androidx.camera.core.ImageAnalysis;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.s;
import com.google.mlkit.vision.barcode.internal.BarcodeScannerImpl;
import h5.f;
import h5.z;
import java.util.List;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import m9.t;
import tr.gov.turkiye.edevlet.kapisi.scan.QRScanActivity;
import x7.d;
import x9.l;

/* loaded from: classes3.dex */
public final class b implements ImageAnalysis.Analyzer {

    /* renamed from: a, reason: collision with root package name */
    public final c f10427a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f10428b;

    public static final class a extends j implements l<List<x7.a>, m> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ImageProxy f10430b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ImageProxy imageProxy) {
            super(1);
            this.f10430b = imageProxy;
        }

        @Override // x9.l
        public final m invoke(List<x7.a> list) {
            Integer numValueOf;
            List<x7.a> list2 = list;
            x7.a aVar = list2 != null ? (x7.a) t.c1(list2) : null;
            if (aVar != null) {
                int r12 = aVar.f19182a.a();
                int r32 = -1;
                if (r12 <= 4096) {
                    if (r12 != 0) {
                    }
                    numValueOf = Integer.valueOf(r32);
                } else {
                    r12 = -1;
                }
                r32 = r12;
                numValueOf = Integer.valueOf(r32);
            } else {
                numValueOf = null;
            }
            boolean z10 = numValueOf != null && numValueOf.intValue() == 256;
            String strP = aVar != null ? aVar.f19182a.p() : null;
            b bVar = b.this;
            if (strP != null) {
                bVar.f10427a.a(strP, z10);
            }
            bVar.f10428b = false;
            this.f10430b.close();
            return m.f9594a;
        }
    }

    public b(QRScanActivity.b bVar) {
        this.f10427a = bVar;
    }

    @Override // androidx.camera.core.ImageAnalysis.Analyzer
    @ExperimentalGetImage
    public final void analyze(final ImageProxy imageProxy) {
        h.f(imageProxy, "imageProxy");
        Image image = imageProxy.getImage();
        if (image == null || this.f10428b) {
            return;
        }
        a8.a aVarA = a8.a.a(image, imageProxy.getImageInfo().getRotationDegrees());
        BarcodeScannerImpl barcodeScannerImplA = d.a();
        this.f10428b = true;
        z zVarA = barcodeScannerImplA.a(aVarA);
        androidx.camera.camera2.interop.d dVar = new androidx.camera.camera2.interop.d(7, new a(imageProxy));
        zVarA.getClass();
        zVarA.d(h5.m.f6842a, dVar);
        zVarA.p(new f() { // from class: mg.a
            @Override // h5.f
            public final void e(Exception it) {
                b this$0 = this.f10425a;
                h.f(this$0, "this$0");
                ImageProxy imageProxy2 = imageProxy;
                h.f(imageProxy2, "$imageProxy");
                h.f(it, "it");
                this$0.f10428b = false;
                imageProxy2.close();
            }
        });
    }

    @Override // androidx.camera.core.ImageAnalysis.Analyzer
    public final /* synthetic */ int getTargetCoordinateSystem() {
        return s.a(this);
    }

    @Override // androidx.camera.core.ImageAnalysis.Analyzer
    public final /* synthetic */ Size getTargetResolutionOverride() {
        return s.b(this);
    }

    @Override // androidx.camera.core.ImageAnalysis.Analyzer
    public final /* synthetic */ void updateTransform(Matrix matrix) {
        s.c(this, matrix);
    }
}
