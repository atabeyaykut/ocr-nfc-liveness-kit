package g0;

import android.graphics.PointF;
import androidx.annotation.Nullable;
import g0.a;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public final class m extends a<PointF, PointF> {

    /* renamed from: i, reason: collision with root package name */
    public final PointF f5762i;

    /* renamed from: j, reason: collision with root package name */
    public final PointF f5763j;

    /* renamed from: k, reason: collision with root package name */
    public final a<Float, Float> f5764k;

    /* renamed from: l, reason: collision with root package name */
    public final a<Float, Float> f5765l;

    /* renamed from: m, reason: collision with root package name */
    @Nullable
    public q0.c<Float> f5766m;

    /* renamed from: n, reason: collision with root package name */
    @Nullable
    public q0.c<Float> f5767n;

    public m(c cVar, c cVar2) {
        super(Collections.emptyList());
        this.f5762i = new PointF();
        this.f5763j = new PointF();
        this.f5764k = cVar;
        this.f5765l = cVar2;
        j(this.f5738d);
    }

    @Override // g0.a
    public final PointF f() {
        return l(0.0f);
    }

    @Override // g0.a
    public final /* bridge */ /* synthetic */ PointF g(q0.a<PointF> aVar, float f) {
        return l(f);
    }

    @Override // g0.a
    public final void j(float f) {
        a<Float, Float> aVar = this.f5764k;
        aVar.j(f);
        a<Float, Float> aVar2 = this.f5765l;
        aVar2.j(f);
        this.f5762i.set(aVar.f().floatValue(), aVar2.f().floatValue());
        int r32 = 0;
        while (true) {
            ArrayList arrayList = this.f5735a;
            if (r32 >= arrayList.size()) {
                return;
            }
            ((a.InterfaceC0091a) arrayList.get(r32)).a();
            r32++;
        }
    }

    public final PointF l(float f) {
        Float f10;
        a<Float, Float> aVar;
        q0.a<Float> aVarB;
        a<Float, Float> aVar2;
        q0.a<Float> aVarB2;
        Float f11 = null;
        if (this.f5766m == null || (aVarB2 = (aVar2 = this.f5764k).b()) == null) {
            f10 = null;
        } else {
            aVar2.d();
            Float f12 = aVarB2.f13276h;
            q0.c<Float> cVar = this.f5766m;
            if (f12 != null) {
                f12.floatValue();
            }
            f10 = (Float) cVar.a(aVarB2.f13271b, aVarB2.f13272c);
        }
        if (this.f5767n != null && (aVarB = (aVar = this.f5765l).b()) != null) {
            aVar.d();
            Float f13 = aVarB.f13276h;
            q0.c<Float> cVar2 = this.f5767n;
            if (f13 != null) {
                f13.floatValue();
            }
            f11 = (Float) cVar2.a(aVarB.f13271b, aVarB.f13272c);
        }
        PointF pointF = this.f5762i;
        PointF pointF2 = this.f5763j;
        pointF2.set(f10 == null ? pointF.x : f10.floatValue(), 0.0f);
        pointF2.set(pointF2.x, f11 == null ? pointF.y : f11.floatValue());
        return pointF2;
    }
}
