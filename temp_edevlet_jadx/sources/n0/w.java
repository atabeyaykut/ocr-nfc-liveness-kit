package n0;

import android.graphics.PointF;
import java.io.IOException;

/* loaded from: classes.dex */
public final class w implements h0<PointF> {

    /* renamed from: a, reason: collision with root package name */
    public static final w f10523a = new w();

    @Override // n0.h0
    public final PointF a(o0.c cVar, float f) throws IOException {
        int r02 = cVar.k();
        if (r02 == 1 || r02 == 3) {
            return p.b(cVar, f);
        }
        if (r02 != 7) {
            throw new IllegalArgumentException("Cannot convert json to point. Next token is ".concat(androidx.camera.core.impl.a.m(r02)));
        }
        PointF pointF = new PointF(((float) cVar.g()) * f, ((float) cVar.g()) * f);
        while (cVar.e()) {
            cVar.p();
        }
        return pointF;
    }
}
