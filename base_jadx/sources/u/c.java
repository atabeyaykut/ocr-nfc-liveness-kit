package u;

import android.graphics.Bitmap;
import android.os.Build;
import android.view.View;
import android.webkit.MimeTypeMap;
import android.widget.ImageView;
import j7.p;
import java.io.Closeable;
import java.io.IOException;
import mc.n;
import q.a;
import rc.q;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final Bitmap.Config[] f17726a;

    /* renamed from: b, reason: collision with root package name */
    public static final Bitmap.Config f17727b;

    /* renamed from: c, reason: collision with root package name */
    public static final q f17728c;

    public /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f17729a;

        static {
            int[] r12 = new int[g.d.d(4).length];
            r12[0] = 1;
            r12[1] = 2;
            r12[2] = 3;
            r12[3] = 4;
            int[] r13 = new int[ImageView.ScaleType.values().length];
            r13[ImageView.ScaleType.FIT_START.ordinal()] = 1;
            r13[ImageView.ScaleType.FIT_CENTER.ordinal()] = 2;
            r13[ImageView.ScaleType.FIT_END.ordinal()] = 3;
            r13[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 4;
            f17729a = r13;
            int[] r02 = new int[g.d.d(2).length];
            r02[0] = 1;
            r02[1] = 2;
        }
    }

    static {
        int r02 = Build.VERSION.SDK_INT;
        f17726a = r02 >= 26 ? new Bitmap.Config[]{Bitmap.Config.ARGB_8888, Bitmap.Config.RGBA_F16} : new Bitmap.Config[]{Bitmap.Config.ARGB_8888};
        f17727b = r02 >= 26 ? Bitmap.Config.HARDWARE : Bitmap.Config.ARGB_8888;
        f17728c = new q.a().c();
    }

    public static final void a(Closeable closeable) throws IOException {
        try {
            closeable.close();
        } catch (RuntimeException e10) {
            throw e10;
        } catch (Exception unused) {
        }
    }

    public static final String b(MimeTypeMap mimeTypeMap, String str) {
        if (str == null || mc.j.y(str)) {
            return null;
        }
        String strH0 = n.h0(n.h0(str, '#'), '?');
        return mimeTypeMap.getMimeTypeFromExtension(n.d0('.', n.d0('/', strH0, strH0), ""));
    }

    public static final p.q c(View view) {
        Object tag = view.getTag(R.id.coil_request_manager);
        p.q qVar = tag instanceof p.q ? (p.q) tag : null;
        if (qVar == null) {
            synchronized (view) {
                Object tag2 = view.getTag(R.id.coil_request_manager);
                p.q qVar2 = tag2 instanceof p.q ? (p.q) tag2 : null;
                if (qVar2 == null) {
                    qVar = new p.q(view);
                    view.addOnAttachStateChangeListener(qVar);
                    view.setTag(R.id.coil_request_manager, qVar);
                } else {
                    qVar = qVar2;
                }
            }
        }
        return qVar;
    }

    public static final int d(q.a aVar, int r22) {
        if (aVar instanceof a.C0221a) {
            return ((a.C0221a) aVar).f13254a;
        }
        if (r22 == 0) {
            throw null;
        }
        int r23 = r22 - 1;
        if (r23 == 0) {
            return Integer.MIN_VALUE;
        }
        if (r23 == 1) {
            return Integer.MAX_VALUE;
        }
        throw new p();
    }
}
