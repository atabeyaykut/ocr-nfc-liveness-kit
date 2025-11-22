package la;

import kc.a;
import la.k;

/* loaded from: classes2.dex */
public final class q extends a.b<ma.e, k.a> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f9651a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ kotlin.jvm.internal.v<k.a> f9652b;

    public q(String str, kotlin.jvm.internal.v<k.a> vVar) {
        this.f9651a = str;
        this.f9652b = vVar;
    }

    @Override // kc.a.d
    public final Object a() {
        k.a aVar = this.f9652b.f8975a;
        return aVar == null ? k.a.NOT_CONSIDERED : aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0037 A[ORIG_RETURN, RETURN] */
    @Override // kc.a.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean c(java.lang.Object r3) {
        /*
            r2 = this;
            ma.e r3 = (ma.e) r3
            java.lang.String r0 = "javaClassDescriptor"
            kotlin.jvm.internal.h.f(r3, r0)
            java.lang.String r0 = r2.f9651a
            java.lang.String r3 = b8.f.i0(r3, r0)
            java.util.LinkedHashSet r0 = la.u.f9656b
            boolean r0 = r0.contains(r3)
            kotlin.jvm.internal.v<la.k$a> r1 = r2.f9652b
            if (r0 == 0) goto L1a
            la.k$a r3 = la.k.a.HIDDEN
            goto L2f
        L1a:
            java.util.LinkedHashSet r0 = la.u.f9657c
            boolean r0 = r0.contains(r3)
            if (r0 == 0) goto L25
            la.k$a r3 = la.k.a.VISIBLE
            goto L2f
        L25:
            java.util.LinkedHashSet r0 = la.u.f9655a
            boolean r3 = r0.contains(r3)
            if (r3 == 0) goto L31
            la.k$a r3 = la.k.a.DROP
        L2f:
            r1.f8975a = r3
        L31:
            T r3 = r1.f8975a
            if (r3 != 0) goto L37
            r3 = 1
            goto L38
        L37:
            r3 = 0
        L38:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: la.q.c(java.lang.Object):boolean");
    }
}
