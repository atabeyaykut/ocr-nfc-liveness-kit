package ae;

import a3.k;
import android.graphics.Matrix;
import android.media.Image;
import android.util.Size;
import androidx.camera.camera2.interop.f;
import androidx.camera.core.ExperimentalGetImage;
import androidx.camera.core.ImageAnalysis;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.s;
import com.google.mlkit.vision.barcode.internal.BarcodeScannerImpl;
import h5.z;
import java.util.List;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import m9.t;
import tr.gov.turkiye.edevlet.kapisi.barcode.qr.BarcodeScanningActivity;
import x7.d;
import x9.l;

/* loaded from: classes3.dex */
public final class a implements ImageAnalysis.Analyzer {

    /* renamed from: a, reason: collision with root package name */
    public final b f269a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f270b;

    /* renamed from: ae.a$a, reason: collision with other inner class name */
    public static final class C0012a extends j implements l<List<x7.a>, m> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ImageProxy f272b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0012a(ImageProxy imageProxy) {
            super(1);
            this.f272b = imageProxy;
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
            a aVar2 = a.this;
            if (strP != null) {
                aVar2.f269a.a(strP, z10);
            }
            aVar2.f270b = false;
            this.f272b.close();
            return m.f9594a;
        }
    }

    public a(BarcodeScanningActivity.b bVar) {
        this.f269a = bVar;
    }

    @Override // androidx.camera.core.ImageAnalysis.Analyzer
    @ExperimentalGetImage
    public final void analyze(ImageProxy imageProxy) {
        h.f(imageProxy, "imageProxy");
        Image image = imageProxy.getImage();
        if (image == null || this.f270b) {
            return;
        }
        a8.a aVarA = a8.a.a(image, imageProxy.getImageInfo().getRotationDegrees());
        BarcodeScannerImpl barcodeScannerImplA = d.a();
        this.f270b = true;
        z zVarA = barcodeScannerImplA.a(aVarA);
        f fVar = new f(3, new C0012a(imageProxy));
        zVarA.getClass();
        zVarA.d(h5.m.f6842a, fVar);
        zVarA.p(new k(this, imageProxy));
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
