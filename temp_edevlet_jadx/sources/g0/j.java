package g0;

import android.graphics.PointF;
import java.util.List;

/* loaded from: classes.dex */
public final class j extends f<PointF> {

    /* renamed from: i, reason: collision with root package name */
    public final PointF f5758i;

    public j(List<q0.a<PointF>> list) {
        super(list);
        this.f5758i = new PointF();
    }

    @Override // g0.a
    public final Object g(q0.a aVar, float f) {
        return h(aVar, f, f, f);
    }

    @Override // g0.a
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public final PointF h(q0.a<PointF> aVar, float f, float f10, float f11) {
        PointF pointF;
        PointF pointF2 = aVar.f13271b;
        if (pointF2 == null || (pointF = aVar.f13272c) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        PointF pointF3 = pointF2;
        PointF pointF4 = pointF;
        q0.c<A> cVar = this.f5739e;
        if (cVar != 0) {
            aVar.f13276h.floatValue();
            e();
            PointF pointF5 = (PointF) cVar.a(pointF3, pointF4);
            if (pointF5 != null) {
                return pointF5;
            }
        }
        PointF pointF6 = this.f5758i;
        float f12 = pointF3.x;
        float fD = androidx.appcompat.graphics.drawable.a.d(pointF4.x, f12, f10, f12);
        float f13 = pointF3.y;
        pointF6.set(fD, ((pointF4.y - f13) * f11) + f13);
        return pointF6;
    }
}
