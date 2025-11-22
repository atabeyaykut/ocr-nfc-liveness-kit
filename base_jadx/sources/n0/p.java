package n0;

import android.graphics.Color;
import android.graphics.PointF;
import androidx.annotation.ColorInt;
import java.io.IOException;
import java.util.ArrayList;
import o0.c;

/* loaded from: classes.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public static final c.a f10508a = c.a.a("x", "y");

    @ColorInt
    public static int a(o0.c cVar) throws IOException {
        cVar.a();
        int r02 = (int) (cVar.g() * 255.0d);
        int r12 = (int) (cVar.g() * 255.0d);
        int r22 = (int) (cVar.g() * 255.0d);
        while (cVar.e()) {
            cVar.p();
        }
        cVar.c();
        return Color.argb(255, r02, r12, r22);
    }

    public static PointF b(o0.c cVar, float f) throws IOException {
        int r02 = g.d.c(cVar.k());
        if (r02 == 0) {
            cVar.a();
            float fG = (float) cVar.g();
            float fG2 = (float) cVar.g();
            while (cVar.k() != 2) {
                cVar.p();
            }
            cVar.c();
            return new PointF(fG * f, fG2 * f);
        }
        if (r02 != 2) {
            if (r02 != 6) {
                throw new IllegalArgumentException("Unknown point starts with ".concat(androidx.camera.core.impl.a.m(cVar.k())));
            }
            float fG3 = (float) cVar.g();
            float fG4 = (float) cVar.g();
            while (cVar.e()) {
                cVar.p();
            }
            return new PointF(fG3 * f, fG4 * f);
        }
        cVar.b();
        float fD = 0.0f;
        float fD2 = 0.0f;
        while (cVar.e()) {
            int r22 = cVar.n(f10508a);
            if (r22 == 0) {
                fD = d(cVar);
            } else if (r22 != 1) {
                cVar.o();
                cVar.p();
            } else {
                fD2 = d(cVar);
            }
        }
        cVar.d();
        return new PointF(fD * f, fD2 * f);
    }

    public static ArrayList c(o0.c cVar, float f) throws IOException {
        ArrayList arrayList = new ArrayList();
        cVar.a();
        while (cVar.k() == 1) {
            cVar.a();
            arrayList.add(b(cVar, f));
            cVar.c();
        }
        cVar.c();
        return arrayList;
    }

    public static float d(o0.c cVar) throws IOException {
        int r02 = cVar.k();
        int r12 = g.d.c(r02);
        if (r12 != 0) {
            if (r12 == 6) {
                return (float) cVar.g();
            }
            throw new IllegalArgumentException("Unknown value for token of type ".concat(androidx.camera.core.impl.a.m(r02)));
        }
        cVar.a();
        float fG = (float) cVar.g();
        while (cVar.e()) {
            cVar.p();
        }
        cVar.c();
        return fG;
    }
}
