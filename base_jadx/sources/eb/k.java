package eb;

import fb.a;
import java.util.Set;

/* loaded from: classes2.dex */
public final class k {

    /* renamed from: b, reason: collision with root package name */
    public static final Set<a.EnumC0087a> f5212b = x5.a.r(a.EnumC0087a.CLASS);

    /* renamed from: c, reason: collision with root package name */
    public static final Set<a.EnumC0087a> f5213c = x5.a.s(a.EnumC0087a.FILE_FACADE, a.EnumC0087a.MULTIFILE_CLASS_PART);

    /* renamed from: d, reason: collision with root package name */
    public static final kb.e f5214d;

    /* renamed from: e, reason: collision with root package name */
    public static final kb.e f5215e;

    /* renamed from: a, reason: collision with root package name */
    public yb.l f5216a;

    static {
        new kb.e(new int[]{1, 1, 2}, false);
        f5214d = new kb.e(new int[]{1, 1, 11}, false);
        f5215e = new kb.e(new int[]{1, 1, 13}, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final ac.j a(pa.i0 r12, eb.s r13) {
        /*
            r11 = this;
            java.lang.String r0 = "Could not read data from "
            java.lang.String r1 = "descriptor"
            kotlin.jvm.internal.h.f(r12, r1)
            java.lang.String r1 = "kotlinClass"
            kotlin.jvm.internal.h.f(r13, r1)
            fb.a r1 = r13.a()
            java.lang.String[] r2 = r1.f5555c
            if (r2 != 0) goto L16
            java.lang.String[] r2 = r1.f5556d
        L16:
            r3 = 0
            if (r2 == 0) goto L24
            fb.a$a r1 = r1.f5553a
            java.util.Set<fb.a$a> r4 = eb.k.f5213c
            boolean r1 = r4.contains(r1)
            if (r1 == 0) goto L24
            goto L25
        L24:
            r2 = r3
        L25:
            if (r2 != 0) goto L28
            return r3
        L28:
            fb.a r1 = r13.a()
            java.lang.String[] r1 = r1.f5557e
            if (r1 != 0) goto L31
            return r3
        L31:
            l9.g r0 = kb.h.h(r2, r1)     // Catch: java.lang.Throwable -> L36 mb.j -> L38
            goto L65
        L36:
            r0 = move-exception
            goto L4f
        L38:
            r1 = move-exception
            java.lang.IllegalStateException r2 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L36
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L36
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L36
            java.lang.String r0 = r13.e()     // Catch: java.lang.Throwable -> L36
            r4.append(r0)     // Catch: java.lang.Throwable -> L36
            java.lang.String r0 = r4.toString()     // Catch: java.lang.Throwable -> L36
            r2.<init>(r0, r1)     // Catch: java.lang.Throwable -> L36
            throw r2     // Catch: java.lang.Throwable -> L36
        L4f:
            yb.l r1 = r11.c()
            yb.m r1 = r1.f19444c
            r1.d()
            fb.a r1 = r13.a()
            kb.e r1 = r1.f5554b
            boolean r1 = r1.c()
            if (r1 != 0) goto Lab
            r0 = r3
        L65:
            if (r0 != 0) goto L68
            return r3
        L68:
            A r1 = r0.f9582a
            r5 = r1
            kb.f r5 = (kb.f) r5
            B r0 = r0.f9583b
            r4 = r0
            gb.k r4 = (gb.k) r4
            eb.n r7 = new eb.n
            r11.d(r13)
            r11.e(r13)
            int r0 = r11.b(r13)
            r7.<init>(r13, r4, r5, r0)
            ac.j r0 = new ac.j
            fb.a r13 = r13.a()
            kb.e r6 = r13.f5554b
            yb.l r8 = r11.c()
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            java.lang.String r1 = "scope for "
            r13.<init>(r1)
            r13.append(r7)
            java.lang.String r1 = " in "
            r13.append(r1)
            r13.append(r12)
            java.lang.String r9 = r13.toString()
            eb.j r10 = eb.j.f5211a
            r2 = r0
            r3 = r12
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10)
            return r0
        Lab:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: eb.k.a(pa.i0, eb.s):ac.j");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int b(eb.s r5) {
        /*
            r4 = this;
            yb.l r0 = r4.c()
            yb.m r0 = r0.f19444c
            r0.b()
            fb.a r0 = r5.a()
            int r0 = r0.f5558g
            r1 = r0 & 64
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L17
            r1 = 1
            goto L18
        L17:
            r1 = 0
        L18:
            if (r1 == 0) goto L25
            r0 = r0 & 32
            if (r0 == 0) goto L20
            r0 = 1
            goto L21
        L20:
            r0 = 0
        L21:
            if (r0 != 0) goto L25
            r0 = 1
            goto L26
        L25:
            r0 = 0
        L26:
            if (r0 == 0) goto L2a
            r3 = 2
            goto L46
        L2a:
            fb.a r5 = r5.a()
            int r5 = r5.f5558g
            r0 = r5 & 16
            if (r0 == 0) goto L36
            r0 = 1
            goto L37
        L36:
            r0 = 0
        L37:
            if (r0 == 0) goto L43
            r5 = r5 & 32
            if (r5 == 0) goto L3f
            r5 = 1
            goto L40
        L3f:
            r5 = 0
        L40:
            if (r5 != 0) goto L43
            r2 = 1
        L43:
            if (r2 == 0) goto L46
            r3 = 3
        L46:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: eb.k.b(eb.s):int");
    }

    public final yb.l c() {
        yb.l lVar = this.f5216a;
        if (lVar != null) {
            return lVar;
        }
        kotlin.jvm.internal.h.n("components");
        throw null;
    }

    public final yb.w<kb.e> d(s sVar) {
        c().f19444c.d();
        if (sVar.a().f5554b.c()) {
            return null;
        }
        return new yb.w<>(sVar.a().f5554b, kb.e.f8815g, sVar.e(), sVar.c());
    }

    public final boolean e(s sVar) {
        c().f19444c.e();
        c().f19444c.c();
        return ((sVar.a().f5558g & 2) != 0) && kotlin.jvm.internal.h.a(sVar.a().f5554b, f5214d);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final yb.h f(eb.s r6) {
        /*
            r5 = this;
            java.lang.String r0 = "Could not read data from "
            fb.a r1 = r6.a()
            java.lang.String[] r2 = r1.f5555c
            if (r2 != 0) goto Lc
            java.lang.String[] r2 = r1.f5556d
        Lc:
            r3 = 0
            if (r2 == 0) goto L1a
            fb.a$a r1 = r1.f5553a
            java.util.Set<fb.a$a> r4 = eb.k.f5212b
            boolean r1 = r4.contains(r1)
            if (r1 == 0) goto L1a
            goto L1b
        L1a:
            r2 = r3
        L1b:
            if (r2 != 0) goto L1e
            return r3
        L1e:
            fb.a r1 = r6.a()
            java.lang.String[] r1 = r1.f5557e
            if (r1 != 0) goto L27
            return r3
        L27:
            l9.g r0 = kb.h.f(r2, r1)     // Catch: java.lang.Throwable -> L2c mb.j -> L2e
            goto L5b
        L2c:
            r0 = move-exception
            goto L45
        L2e:
            r1 = move-exception
            java.lang.IllegalStateException r2 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L2c
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L2c
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L2c
            java.lang.String r0 = r6.e()     // Catch: java.lang.Throwable -> L2c
            r4.append(r0)     // Catch: java.lang.Throwable -> L2c
            java.lang.String r0 = r4.toString()     // Catch: java.lang.Throwable -> L2c
            r2.<init>(r0, r1)     // Catch: java.lang.Throwable -> L2c
            throw r2     // Catch: java.lang.Throwable -> L2c
        L45:
            yb.l r1 = r5.c()
            yb.m r1 = r1.f19444c
            r1.d()
            fb.a r1 = r6.a()
            kb.e r1 = r1.f5554b
            boolean r1 = r1.c()
            if (r1 != 0) goto L81
            r0 = r3
        L5b:
            if (r0 != 0) goto L5e
            return r3
        L5e:
            A r1 = r0.f9582a
            kb.f r1 = (kb.f) r1
            B r0 = r0.f9583b
            gb.b r0 = (gb.b) r0
            eb.u r2 = new eb.u
            r5.d(r6)
            r5.e(r6)
            int r3 = r5.b(r6)
            r2.<init>(r6, r3)
            yb.h r3 = new yb.h
            fb.a r6 = r6.a()
            kb.e r6 = r6.f5554b
            r3.<init>(r1, r0, r6, r2)
            return r3
        L81:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: eb.k.f(eb.s):yb.h");
    }
}
