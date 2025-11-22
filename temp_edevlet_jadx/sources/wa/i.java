package wa;

import da.m;
import ja.o;
import java.util.Map;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.w;
import p4.g7;

/* loaded from: classes2.dex */
public final class i extends b {

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f18847h = {w.c(new r(w.a(i.class), "allValueArguments", "getAllValueArguments()Ljava/util/Map;"))};

    /* renamed from: g, reason: collision with root package name */
    public final bc.i f18848g;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<Map<lb.f, ? extends qb.g<?>>> {
        public a() {
            super(0);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x003b  */
        @Override // x9.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.util.Map<lb.f, ? extends qb.g<?>> invoke() {
            /*
                r4 = this;
                java.util.Map<java.lang.String, java.util.EnumSet<na.n>> r0 = wa.e.f18840a
                wa.i r0 = wa.i.this
                cb.b r0 = r0.f18831d
                boolean r1 = r0 instanceof cb.m
                r2 = 0
                if (r1 == 0) goto Le
                cb.m r0 = (cb.m) r0
                goto Lf
            Le:
                r0 = r2
            Lf:
                if (r0 == 0) goto L3b
                java.util.Map<java.lang.String, na.m> r1 = wa.e.f18841b
                lb.f r0 = r0.d()
                if (r0 == 0) goto L1e
                java.lang.String r0 = r0.o()
                goto L1f
            L1e:
                r0 = r2
            L1f:
                java.lang.Object r0 = r1.get(r0)
                na.m r0 = (na.m) r0
                if (r0 == 0) goto L3b
                qb.k r1 = new qb.k
                lb.c r3 = ja.o.a.f8392v
                lb.b r3 = lb.b.l(r3)
                java.lang.String r0 = r0.name()
                lb.f r0 = lb.f.t(r0)
                r1.<init>(r3, r0)
                goto L3c
            L3b:
                r1 = r2
            L3c:
                if (r1 == 0) goto L49
                lb.f r0 = wa.c.f18837c
                l9.g r2 = new l9.g
                r2.<init>(r0, r1)
                java.util.Map r2 = b8.f.W(r2)
            L49:
                if (r2 != 0) goto L4d
                m9.w r2 = m9.w.f10174a
            L4d:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: wa.i.a.invoke():java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(cb.a annotation, g7 c10) {
        super(c10, annotation, o.a.w);
        kotlin.jvm.internal.h.f(annotation, "annotation");
        kotlin.jvm.internal.h.f(c10, "c");
        this.f18848g = c10.b().d(new a());
    }

    @Override // wa.b, na.c
    public final Map<lb.f, qb.g<?>> a() {
        return (Map) b8.f.O(this.f18848g, f18847h[0]);
    }
}
