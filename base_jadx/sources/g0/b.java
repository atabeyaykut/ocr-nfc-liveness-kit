package g0;

import java.util.List;

/* loaded from: classes.dex */
public final class b extends f<Integer> {
    public b(List<q0.a<Integer>> list) {
        super(list);
    }

    @Override // g0.a
    public final Object g(q0.a aVar, float f) {
        return Integer.valueOf(l(aVar, f));
    }

    public final int l(q0.a<Integer> aVar, float f) {
        Integer num = aVar.f13271b;
        if (num == null || aVar.f13272c == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        int r02 = num.intValue();
        int r12 = aVar.f13272c.intValue();
        q0.c<A> cVar = this.f5739e;
        if (cVar != 0) {
            aVar.f13276h.floatValue();
            Integer numValueOf = Integer.valueOf(r02);
            Integer numValueOf2 = Integer.valueOf(r12);
            e();
            Integer num2 = (Integer) cVar.a(numValueOf, numValueOf2);
            if (num2 != null) {
                return num2.intValue();
            }
        }
        return b8.f.D(p0.f.b(f, 0.0f, 1.0f), r02, r12);
    }
}
