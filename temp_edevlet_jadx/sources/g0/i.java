package g0;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import java.util.List;

/* loaded from: classes.dex */
public final class i extends f<PointF> {

    /* renamed from: i, reason: collision with root package name */
    public final PointF f5754i;

    /* renamed from: j, reason: collision with root package name */
    public final float[] f5755j;

    /* renamed from: k, reason: collision with root package name */
    public final PathMeasure f5756k;

    /* renamed from: l, reason: collision with root package name */
    public h f5757l;

    public i(List<? extends q0.a<PointF>> list) {
        super(list);
        this.f5754i = new PointF();
        this.f5755j = new float[2];
        this.f5756k = new PathMeasure();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // g0.a
    public final Object g(q0.a aVar, float f) {
        h hVar = (h) aVar;
        Path path = hVar.f5752q;
        if (path == null) {
            return (PointF) aVar.f13271b;
        }
        q0.c<A> cVar = this.f5739e;
        if (cVar != 0) {
            hVar.f13276h.floatValue();
            T t10 = hVar.f13272c;
            e();
            PointF pointF = (PointF) cVar.a(hVar.f13271b, t10);
            if (pointF != null) {
                return pointF;
            }
        }
        h hVar2 = this.f5757l;
        PathMeasure pathMeasure = this.f5756k;
        if (hVar2 != hVar) {
            pathMeasure.setPath(path, false);
            this.f5757l = hVar;
        }
        float length = pathMeasure.getLength() * f;
        float[] fArr = this.f5755j;
        pathMeasure.getPosTan(length, fArr, null);
        PointF pointF2 = this.f5754i;
        pointF2.set(fArr[0], fArr[1]);
        return pointF2;
    }
}
