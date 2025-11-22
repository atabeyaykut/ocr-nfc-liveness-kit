package g0;

import android.graphics.PointF;
import java.util.List;

/* loaded from: classes.dex */
public final class e extends f<Integer> {
    public e(List<q0.a<Integer>> list) {
        super(list);
    }

    @Override // g0.a
    public final Object g(q0.a aVar, float f) {
        return Integer.valueOf(l(aVar, f));
    }

    public final int l(q0.a<Integer> aVar, float f) {
        if (aVar.f13271b == null || aVar.f13272c == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        q0.c<A> cVar = this.f5739e;
        Integer num = aVar.f13271b;
        if (cVar != 0) {
            aVar.f13276h.floatValue();
            Integer num2 = aVar.f13272c;
            e();
            Integer num3 = (Integer) cVar.a(num, num2);
            if (num3 != null) {
                return num3.intValue();
            }
        }
        if (aVar.f13279k == 784923401) {
            aVar.f13279k = num.intValue();
        }
        int r02 = aVar.f13279k;
        if (aVar.f13280l == 784923401) {
            aVar.f13280l = aVar.f13272c.intValue();
        }
        int r42 = aVar.f13280l;
        PointF pointF = p0.f.f12212a;
        return (int) ((f * (r42 - r02)) + r02);
    }
}
