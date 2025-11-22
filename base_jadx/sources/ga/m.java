package ga;

import java.lang.reflect.Type;

/* loaded from: classes2.dex */
public final class m extends kotlin.jvm.internal.j implements x9.a<Type> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h<Object> f6051a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(h<Object> hVar) {
        super(0);
        this.f6051a = hVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0019  */
    @Override // x9.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.reflect.Type invoke() {
        /*
            r5 = this;
            ga.h<java.lang.Object> r0 = r5.f6051a
            ma.b r1 = r0.o()
            boolean r2 = r1 instanceof ma.u
            r3 = 0
            if (r2 == 0) goto Le
            ma.u r1 = (ma.u) r1
            goto Lf
        Le:
            r1 = r3
        Lf:
            if (r1 == 0) goto L19
            boolean r1 = r1.isSuspend()
            r2 = 1
            if (r1 != r2) goto L19
            goto L1a
        L19:
            r2 = 0
        L1a:
            if (r2 == 0) goto L64
            ha.f r1 = r0.k()
            java.util.List r1 = r1.a()
            java.lang.Object r1 = m9.t.j1(r1)
            boolean r2 = r1 instanceof java.lang.reflect.ParameterizedType
            if (r2 == 0) goto L2f
            java.lang.reflect.ParameterizedType r1 = (java.lang.reflect.ParameterizedType) r1
            goto L30
        L2f:
            r1 = r3
        L30:
            if (r1 == 0) goto L37
            java.lang.reflect.Type r2 = r1.getRawType()
            goto L38
        L37:
            r2 = r3
        L38:
            java.lang.Class<p9.d> r4 = p9.d.class
            boolean r2 = kotlin.jvm.internal.h.a(r2, r4)
            if (r2 == 0) goto L64
            java.lang.reflect.Type[] r1 = r1.getActualTypeArguments()
            java.lang.String r2 = "continuationType.actualTypeArguments"
            kotlin.jvm.internal.h.e(r1, r2)
            java.lang.Object r1 = m9.k.y0(r1)
            boolean r2 = r1 instanceof java.lang.reflect.WildcardType
            if (r2 == 0) goto L54
            java.lang.reflect.WildcardType r1 = (java.lang.reflect.WildcardType) r1
            goto L55
        L54:
            r1 = r3
        L55:
            if (r1 == 0) goto L64
            java.lang.reflect.Type[] r1 = r1.getLowerBounds()
            if (r1 == 0) goto L64
            java.lang.Object r1 = m9.k.q0(r1)
            r3 = r1
            java.lang.reflect.Type r3 = (java.lang.reflect.Type) r3
        L64:
            if (r3 != 0) goto L6e
            ha.f r0 = r0.k()
            java.lang.reflect.Type r3 = r0.getReturnType()
        L6e:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: ga.m.invoke():java.lang.Object");
    }
}
