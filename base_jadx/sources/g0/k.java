package g0;

import android.graphics.PointF;
import java.util.List;

/* loaded from: classes.dex */
public final class k extends f<q0.d> {

    /* renamed from: i, reason: collision with root package name */
    public final q0.d f5759i;

    public k(List<q0.a<q0.d>> list) {
        super(list);
        this.f5759i = new q0.d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // g0.a
    public final Object g(q0.a aVar, float f) {
        T t10;
        T t11 = aVar.f13271b;
        if (t11 == 0 || (t10 = aVar.f13272c) == 0) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        q0.d dVar = (q0.d) t11;
        q0.d dVar2 = (q0.d) t10;
        q0.c<A> cVar = this.f5739e;
        if (cVar != 0) {
            aVar.f13276h.floatValue();
            e();
            q0.d dVar3 = (q0.d) cVar.a(dVar, dVar2);
            if (dVar3 != null) {
                return dVar3;
            }
        }
        float f10 = dVar.f13289a;
        float f11 = dVar2.f13289a;
        PointF pointF = p0.f.f12212a;
        float fD = androidx.appcompat.graphics.drawable.a.d(f11, f10, f, f10);
        float f12 = dVar.f13290b;
        float fD2 = androidx.appcompat.graphics.drawable.a.d(dVar2.f13290b, f12, f, f12);
        q0.d dVar4 = this.f5759i;
        dVar4.f13289a = fD;
        dVar4.f13290b = fD2;
        return dVar4;
    }
}
