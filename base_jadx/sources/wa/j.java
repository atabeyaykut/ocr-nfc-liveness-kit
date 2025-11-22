package wa;

import da.m;
import ja.o;
import java.util.Map;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.w;
import p4.g7;

/* loaded from: classes2.dex */
public final class j extends b {

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f18850h = {w.c(new r(w.a(j.class), "allValueArguments", "getAllValueArguments()Ljava/util/Map;"))};

    /* renamed from: g, reason: collision with root package name */
    public final bc.i f18851g;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<Map<lb.f, ? extends qb.g<? extends Object>>> {
        public a() {
            super(0);
        }

        /* JADX WARN: Removed duplicated region for block: B:33:0x00ab  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00b8  */
        /* JADX WARN: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
        @Override // x9.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.util.Map<lb.f, ? extends qb.g<? extends java.lang.Object>> invoke() {
            /*
                r6 = this;
                wa.j r0 = wa.j.this
                cb.b r0 = r0.f18831d
                boolean r1 = r0 instanceof cb.e
                r2 = 0
                if (r1 == 0) goto L12
                java.util.Map<java.lang.String, java.util.EnumSet<na.n>> r1 = wa.e.f18840a
                cb.e r0 = (cb.e) r0
                java.util.ArrayList r0 = r0.e()
                goto L1c
            L12:
                boolean r1 = r0 instanceof cb.m
                if (r1 == 0) goto La8
                java.util.Map<java.lang.String, java.util.EnumSet<na.n>> r1 = wa.e.f18840a
                java.util.List r0 = b8.f.S(r0)
            L1c:
                java.lang.String r1 = "arguments"
                kotlin.jvm.internal.h.f(r0, r1)
                java.lang.Iterable r0 = (java.lang.Iterable) r0
                java.util.ArrayList r1 = new java.util.ArrayList
                r1.<init>()
                java.util.Iterator r0 = r0.iterator()
            L2c:
                boolean r3 = r0.hasNext()
                if (r3 == 0) goto L3e
                java.lang.Object r3 = r0.next()
                boolean r4 = r3 instanceof cb.m
                if (r4 == 0) goto L2c
                r1.add(r3)
                goto L2c
            L3e:
                java.util.ArrayList r0 = new java.util.ArrayList
                r0.<init>()
                java.util.Iterator r1 = r1.iterator()
            L47:
                boolean r3 = r1.hasNext()
                if (r3 == 0) goto L70
                java.lang.Object r3 = r1.next()
                cb.m r3 = (cb.m) r3
                lb.f r3 = r3.d()
                if (r3 == 0) goto L5e
                java.lang.String r3 = r3.o()
                goto L5f
            L5e:
                r3 = r2
            L5f:
                java.util.Map<java.lang.String, java.util.EnumSet<na.n>> r4 = wa.e.f18840a
                java.lang.Object r3 = r4.get(r3)
                java.util.EnumSet r3 = (java.util.EnumSet) r3
                if (r3 == 0) goto L6a
                goto L6c
            L6a:
                m9.x r3 = m9.x.f10175a
            L6c:
                m9.p.T0(r3, r0)
                goto L47
            L70:
                java.util.ArrayList r1 = new java.util.ArrayList
                int r3 = m9.n.Q0(r0)
                r1.<init>(r3)
                java.util.Iterator r0 = r0.iterator()
            L7d:
                boolean r3 = r0.hasNext()
                if (r3 == 0) goto La0
                java.lang.Object r3 = r0.next()
                na.n r3 = (na.n) r3
                qb.k r4 = new qb.k
                lb.c r5 = ja.o.a.f8391u
                lb.b r5 = lb.b.l(r5)
                java.lang.String r3 = r3.name()
                lb.f r3 = lb.f.t(r3)
                r4.<init>(r5, r3)
                r1.add(r4)
                goto L7d
            La0:
                qb.b r0 = new qb.b
                wa.d r3 = wa.d.f18839a
                r0.<init>(r1, r3)
                goto La9
            La8:
                r0 = r2
            La9:
                if (r0 == 0) goto Lb6
                lb.f r1 = wa.c.f18836b
                l9.g r2 = new l9.g
                r2.<init>(r1, r0)
                java.util.Map r2 = b8.f.W(r2)
            Lb6:
                if (r2 != 0) goto Lba
                m9.w r2 = m9.w.f10174a
            Lba:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: wa.j.a.invoke():java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(cb.a annotation, g7 c10) {
        super(c10, annotation, o.a.f8390t);
        kotlin.jvm.internal.h.f(annotation, "annotation");
        kotlin.jvm.internal.h.f(c10, "c");
        this.f18851g = c10.b().d(new a());
    }

    @Override // wa.b, na.c
    public final Map<lb.f, qb.g<Object>> a() {
        return (Map) b8.f.O(this.f18851g, f18850h[0]);
    }
}
