package pa;

import java.util.Set;

/* loaded from: classes2.dex */
public final class q0 extends vb.j {

    /* renamed from: b, reason: collision with root package name */
    public final ma.b0 f12978b;

    /* renamed from: c, reason: collision with root package name */
    public final lb.c f12979c;

    public q0(g0 moduleDescriptor, lb.c fqName) {
        kotlin.jvm.internal.h.f(moduleDescriptor, "moduleDescriptor");
        kotlin.jvm.internal.h.f(fqName, "fqName");
        this.f12978b = moduleDescriptor;
        this.f12979c = fqName;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x006f  */
    @Override // vb.j, vb.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Collection<ma.j> f(vb.d r6, x9.l<? super lb.f, java.lang.Boolean> r7) {
        /*
            r5 = this;
            java.lang.String r0 = "kindFilter"
            kotlin.jvm.internal.h.f(r6, r0)
            java.lang.String r0 = "nameFilter"
            kotlin.jvm.internal.h.f(r7, r0)
            int r0 = vb.d.f18424h
            boolean r0 = r6.a(r0)
            m9.v r1 = m9.v.f10173a
            if (r0 != 0) goto L15
            return r1
        L15:
            lb.c r0 = r5.f12979c
            boolean r2 = r0.d()
            if (r2 == 0) goto L28
            vb.c$b r2 = vb.c.b.f18419a
            java.util.List<vb.c> r6 = r6.f18436a
            boolean r6 = r6.contains(r2)
            if (r6 == 0) goto L28
            return r1
        L28:
            ma.b0 r6 = r5.f12978b
            java.util.Collection r1 = r6.n(r0, r7)
            java.util.ArrayList r2 = new java.util.ArrayList
            int r3 = r1.size()
            r2.<init>(r3)
            java.util.Iterator r1 = r1.iterator()
        L3b:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto L74
            java.lang.Object r3 = r1.next()
            lb.c r3 = (lb.c) r3
            lb.f r3 = r3.f()
            java.lang.String r4 = "subFqName.shortName()"
            kotlin.jvm.internal.h.e(r3, r4)
            java.lang.Object r4 = r7.invoke(r3)
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            if (r4 == 0) goto L3b
            boolean r4 = r3.f9677b
            if (r4 == 0) goto L61
            goto L6f
        L61:
            lb.c r3 = r0.c(r3)
            ma.i0 r3 = r6.I0(r3)
            boolean r4 = r3.isEmpty()
            if (r4 == 0) goto L70
        L6f:
            r3 = 0
        L70:
            com.google.android.gms.internal.clearcut.d0.f(r3, r2)
            goto L3b
        L74:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: pa.q0.f(vb.d, x9.l):java.util.Collection");
    }

    @Override // vb.j, vb.i
    public final Set<lb.f> g() {
        return m9.x.f10175a;
    }

    public final String toString() {
        return "subpackages of " + this.f12979c + " from " + this.f12978b;
    }
}
