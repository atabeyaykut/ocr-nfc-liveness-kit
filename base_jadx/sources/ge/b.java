package ge;

import android.graphics.Bitmap;
import android.os.Build;
import android.widget.ImageView;
import c5.w;
import kotlin.jvm.internal.h;
import m9.k;
import p.g;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class b {
    public static final void a(ImageView imageView, int r42) {
        int r02 = Build.VERSION.SDK_INT;
        if (r02 == 26 || r02 == 27) {
            imageView.setLayerType(1, null);
        }
        Integer numValueOf = Integer.valueOf(r42);
        e.f fVarL = x5.a.l(imageView.getContext());
        g.a aVar = new g.a(imageView.getContext());
        aVar.f12143c = numValueOf;
        aVar.e(imageView);
        aVar.f12157r = Boolean.FALSE;
        aVar.f12147h = Bitmap.Config.ARGB_8888;
        aVar.d(R.drawable.img_placeholder);
        aVar.c(R.drawable.img_placeholder);
        fVarL.a(aVar.a());
    }

    public static final void b(ImageView imageView, byte[] array) {
        h.f(array, "array");
        int r02 = Build.VERSION.SDK_INT;
        if (r02 == 26 || r02 == 27) {
            imageView.setLayerType(1, null);
        }
        e.f fVarL = x5.a.l(imageView.getContext());
        g.a aVar = new g.a(imageView.getContext());
        aVar.f12143c = array;
        aVar.e(imageView);
        aVar.f12157r = Boolean.FALSE;
        aVar.f12147h = Bitmap.Config.ARGB_8888;
        aVar.d(R.drawable.img_placeholder);
        aVar.c(R.drawable.img_placeholder);
        fVarL.a(aVar.a());
    }

    public static final void c(ImageView imageView, String str) {
        int r02 = Build.VERSION.SDK_INT;
        if (r02 == 26 || r02 == 27) {
            imageView.setLayerType(1, null);
        }
        e.f fVarL = x5.a.l(imageView.getContext());
        g.a aVar = new g.a(imageView.getContext());
        aVar.f12143c = str;
        aVar.e(imageView);
        aVar.b();
        aVar.f12157r = Boolean.FALSE;
        aVar.f12147h = Bitmap.Config.ARGB_8888;
        aVar.d(R.drawable.img_placeholder);
        aVar.c(R.drawable.img_placeholder);
        aVar.f12152m = w.G(k.A0(new s.b[]{new s.a(36.0f, 36.0f, 36.0f, 36.0f)}));
        fVarL.a(aVar.a());
    }

    public static final void d(ImageView imageView, String str) {
        int r02 = Build.VERSION.SDK_INT;
        if (r02 == 26 || r02 == 27) {
            imageView.setLayerType(1, null);
        }
        e.f fVarL = x5.a.l(imageView.getContext());
        g.a aVar = new g.a(imageView.getContext());
        aVar.f12143c = str;
        aVar.e(imageView);
        aVar.b();
        aVar.f12157r = Boolean.FALSE;
        aVar.f12147h = Bitmap.Config.ARGB_8888;
        aVar.d(R.drawable.modal_announcement);
        aVar.c(R.drawable.modal_announcement);
        fVarL.a(aVar.a());
    }
}
