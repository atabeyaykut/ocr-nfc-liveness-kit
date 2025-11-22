package g0;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.Nullable;
import p0.g;

/* loaded from: classes.dex */
public final class h extends q0.a<PointF> {

    /* renamed from: q, reason: collision with root package name */
    @Nullable
    public Path f5752q;

    /* renamed from: r, reason: collision with root package name */
    public final q0.a<PointF> f5753r;

    public h(d0.f fVar, q0.a<PointF> aVar) {
        super(fVar, aVar.f13271b, aVar.f13272c, aVar.f13273d, aVar.f13274e, aVar.f, aVar.f13275g, aVar.f13276h);
        this.f5753r = aVar;
        d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void d() {
        T t10;
        T t11 = this.f13272c;
        T t12 = this.f13271b;
        boolean z10 = (t11 == 0 || t12 == 0 || !((PointF) t12).equals(((PointF) t11).x, ((PointF) t11).y)) ? false : true;
        if (t12 == 0 || (t10 = this.f13272c) == 0 || z10) {
            return;
        }
        PointF pointF = (PointF) t12;
        PointF pointF2 = (PointF) t10;
        q0.a<PointF> aVar = this.f5753r;
        PointF pointF3 = aVar.f13283o;
        PointF pointF4 = aVar.f13284p;
        g.a aVar2 = p0.g.f12213a;
        Path path = new Path();
        path.moveTo(pointF.x, pointF.y);
        if (pointF3 == null || pointF4 == null || (pointF3.length() == 0.0f && pointF4.length() == 0.0f)) {
            path.lineTo(pointF2.x, pointF2.y);
        } else {
            float f = pointF3.x + pointF.x;
            float f10 = pointF.y + pointF3.y;
            float f11 = pointF2.x;
            float f12 = f11 + pointF4.x;
            float f13 = pointF2.y;
            path.cubicTo(f, f10, f12, f13 + pointF4.y, f11, f13);
        }
        this.f5752q = path;
    }
}
