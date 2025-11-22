package g0;

import android.graphics.PointF;
import java.util.List;

/* loaded from: classes.dex */
public final class d extends f<k0.c> {

    /* renamed from: i, reason: collision with root package name */
    public final k0.c f5748i;

    public d(List<q0.a<k0.c>> list) {
        super(list);
        k0.c cVar = list.get(0).f13271b;
        int length = cVar != null ? cVar.f8618b.length : 0;
        this.f5748i = new k0.c(new float[length], new int[length]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // g0.a
    public final Object g(q0.a aVar, float f) {
        k0.c cVar = (k0.c) aVar.f13271b;
        k0.c cVar2 = (k0.c) aVar.f13272c;
        k0.c cVar3 = this.f5748i;
        cVar3.getClass();
        int[] r22 = cVar.f8618b;
        int length = r22.length;
        int[] r42 = cVar2.f8618b;
        if (length != r42.length) {
            StringBuilder sb2 = new StringBuilder("Cannot interpolate between gradients. Lengths vary (");
            sb2.append(r22.length);
            sb2.append(" vs ");
            throw new IllegalArgumentException(androidx.browser.browseractions.a.b(sb2, r42.length, ")"));
        }
        for (int r32 = 0; r32 < r22.length; r32++) {
            float f10 = cVar.f8617a[r32];
            float f11 = cVar2.f8617a[r32];
            PointF pointF = p0.f.f12212a;
            cVar3.f8617a[r32] = androidx.appcompat.graphics.drawable.a.d(f11, f10, f, f10);
            cVar3.f8618b[r32] = b8.f.D(f, r22[r32], r42[r32]);
        }
        return cVar3;
    }
}
