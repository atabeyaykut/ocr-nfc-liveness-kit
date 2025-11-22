package g0;

import android.graphics.PointF;
import java.util.List;

/* loaded from: classes.dex */
public final class c extends f<Float> {
    public c(List<q0.a<Float>> list) {
        super(list);
    }

    @Override // g0.a
    public final Object g(q0.a aVar, float f) {
        return Float.valueOf(m(aVar, f));
    }

    public final float l() {
        return m(b(), d());
    }

    public final float m(q0.a<Float> aVar, float f) {
        if (aVar.f13271b == null || aVar.f13272c == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        q0.c<A> cVar = this.f5739e;
        Float f10 = aVar.f13271b;
        if (cVar != 0) {
            aVar.f13276h.floatValue();
            Float f11 = aVar.f13272c;
            e();
            Float f12 = (Float) cVar.a(f10, f11);
            if (f12 != null) {
                return f12.floatValue();
            }
        }
        if (aVar.f13277i == -3987645.8f) {
            aVar.f13277i = f10.floatValue();
        }
        float f13 = aVar.f13277i;
        if (aVar.f13278j == -3987645.8f) {
            aVar.f13278j = aVar.f13272c.floatValue();
        }
        float f14 = aVar.f13278j;
        PointF pointF = p0.f.f12212a;
        return androidx.appcompat.graphics.drawable.a.d(f14, f13, f, f13);
    }
}
