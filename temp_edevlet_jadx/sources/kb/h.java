package kb;

import gb.b;
import gb.k;
import gb.m;
import gb.p;
import ib.b;
import java.io.ByteArrayInputStream;
import jb.a;
import mb.j;

/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public static final mb.f f8820a;

    static {
        mb.f fVar = new mb.f();
        fVar.a(jb.a.f8410a);
        fVar.a(jb.a.f8411b);
        fVar.a(jb.a.f8412c);
        fVar.a(jb.a.f8413d);
        fVar.a(jb.a.f8414e);
        fVar.a(jb.a.f);
        fVar.a(jb.a.f8415g);
        fVar.a(jb.a.f8416h);
        fVar.a(jb.a.f8417i);
        fVar.a(jb.a.f8418j);
        fVar.a(jb.a.f8419k);
        fVar.a(jb.a.f8420l);
        fVar.a(jb.a.f8421m);
        fVar.a(jb.a.f8422n);
        f8820a = fVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0045  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static kb.d.b a(gb.c r10, ib.c r11, ib.g r12) throws java.io.IOException {
        /*
            java.lang.String r0 = "proto"
            kotlin.jvm.internal.h.f(r10, r0)
            java.lang.String r0 = "nameResolver"
            kotlin.jvm.internal.h.f(r11, r0)
            java.lang.String r0 = "typeTable"
            kotlin.jvm.internal.h.f(r12, r0)
            mb.h$e<gb.c, jb.a$b> r0 = jb.a.f8410a
            java.lang.String r1 = "constructorSignature"
            kotlin.jvm.internal.h.e(r0, r1)
            java.lang.Object r0 = ib.e.a(r10, r0)
            jb.a$b r0 = (jb.a.b) r0
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L31
            int r3 = r0.f8436b
            r3 = r3 & r2
            if (r3 != r2) goto L27
            r3 = 1
            goto L28
        L27:
            r3 = 0
        L28:
            if (r3 == 0) goto L31
            int r3 = r0.f8437c
            java.lang.String r3 = r11.getString(r3)
            goto L33
        L31:
            java.lang.String r3 = "<init>"
        L33:
            if (r0 == 0) goto L45
            int r4 = r0.f8436b
            r5 = 2
            r4 = r4 & r5
            if (r4 != r5) goto L3c
            r1 = 1
        L3c:
            if (r1 == 0) goto L45
            int r10 = r0.f8438d
            java.lang.String r10 = r11.getString(r10)
            goto L89
        L45:
            java.util.List<gb.t> r10 = r10.f6257e
            java.lang.String r0 = "proto.valueParameterList"
            kotlin.jvm.internal.h.e(r10, r0)
            java.lang.Iterable r10 = (java.lang.Iterable) r10
            java.util.ArrayList r4 = new java.util.ArrayList
            int r0 = m9.n.Q0(r10)
            r4.<init>(r0)
            java.util.Iterator r10 = r10.iterator()
        L5b:
            boolean r0 = r10.hasNext()
            if (r0 == 0) goto L7c
            java.lang.Object r0 = r10.next()
            gb.t r0 = (gb.t) r0
            java.lang.String r1 = "it"
            kotlin.jvm.internal.h.e(r0, r1)
            gb.p r0 = ib.f.e(r0, r12)
            java.lang.String r0 = e(r0, r11)
            if (r0 != 0) goto L78
            r10 = 0
            return r10
        L78:
            r4.add(r0)
            goto L5b
        L7c:
            java.lang.String r5 = ""
            java.lang.String r6 = "("
            java.lang.String r7 = ")V"
            r8 = 0
            r9 = 56
            java.lang.String r10 = m9.t.g1(r4, r5, r6, r7, r8, r9)
        L89:
            kb.d$b r11 = new kb.d$b
            r11.<init>(r3, r10)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: kb.h.a(gb.c, ib.c, ib.g):kb.d$b");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static kb.d.a b(gb.m r6, ib.c r7, ib.g r8, boolean r9) {
        /*
            java.lang.String r0 = "proto"
            kotlin.jvm.internal.h.f(r6, r0)
            java.lang.String r0 = "nameResolver"
            kotlin.jvm.internal.h.f(r7, r0)
            java.lang.String r0 = "typeTable"
            kotlin.jvm.internal.h.f(r8, r0)
            mb.h$e<gb.m, jb.a$c> r0 = jb.a.f8413d
            java.lang.String r1 = "propertySignature"
            kotlin.jvm.internal.h.e(r0, r1)
            java.lang.Object r0 = ib.e.a(r6, r0)
            jb.a$c r0 = (jb.a.c) r0
            r1 = 0
            if (r0 != 0) goto L20
            return r1
        L20:
            int r2 = r0.f8446b
            r3 = 1
            r2 = r2 & r3
            r4 = 0
            if (r2 != r3) goto L29
            r2 = 1
            goto L2a
        L29:
            r2 = 0
        L2a:
            if (r2 == 0) goto L2f
            jb.a$a r0 = r0.f8447c
            goto L30
        L2f:
            r0 = r1
        L30:
            if (r0 != 0) goto L35
            if (r9 == 0) goto L35
            return r1
        L35:
            if (r0 == 0) goto L44
            int r9 = r0.f8426b
            r9 = r9 & r3
            if (r9 != r3) goto L3e
            r9 = 1
            goto L3f
        L3e:
            r9 = 0
        L3f:
            if (r9 == 0) goto L44
            int r9 = r0.f8427c
            goto L46
        L44:
            int r9 = r6.f
        L46:
            if (r0 == 0) goto L59
            int r2 = r0.f8426b
            r5 = 2
            r2 = r2 & r5
            if (r2 != r5) goto L4f
            goto L50
        L4f:
            r3 = 0
        L50:
            if (r3 == 0) goto L59
            int r6 = r0.f8428d
            java.lang.String r6 = r7.getString(r6)
            goto L64
        L59:
            gb.p r6 = ib.f.d(r6, r8)
            java.lang.String r6 = e(r6, r7)
            if (r6 != 0) goto L64
            return r1
        L64:
            kb.d$a r8 = new kb.d$a
            java.lang.String r7 = r7.getString(r9)
            r8.<init>(r7, r6)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kb.h.b(gb.m, ib.c, ib.g, boolean):kb.d$a");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static kb.d.b c(gb.h r10, ib.c r11, ib.g r12) {
        /*
            java.lang.String r0 = "proto"
            kotlin.jvm.internal.h.f(r10, r0)
            java.lang.String r0 = "nameResolver"
            kotlin.jvm.internal.h.f(r11, r0)
            java.lang.String r0 = "typeTable"
            kotlin.jvm.internal.h.f(r12, r0)
            mb.h$e<gb.h, jb.a$b> r0 = jb.a.f8411b
            java.lang.String r1 = "methodSignature"
            kotlin.jvm.internal.h.e(r0, r1)
            java.lang.Object r0 = ib.e.a(r10, r0)
            jb.a$b r0 = (jb.a.b) r0
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L2d
            int r3 = r0.f8436b
            r3 = r3 & r2
            if (r3 != r2) goto L27
            r3 = 1
            goto L28
        L27:
            r3 = 0
        L28:
            if (r3 == 0) goto L2d
            int r3 = r0.f8437c
            goto L2f
        L2d:
            int r3 = r10.f
        L2f:
            if (r0 == 0) goto L42
            int r4 = r0.f8436b
            r5 = 2
            r4 = r4 & r5
            if (r4 != r5) goto L38
            r1 = 1
        L38:
            if (r1 == 0) goto L42
            int r10 = r0.f8438d
            java.lang.String r10 = r11.getString(r10)
            goto Lc0
        L42:
            gb.p r0 = ib.f.b(r10, r12)
            java.util.List r0 = b8.f.U(r0)
            java.util.Collection r0 = (java.util.Collection) r0
            java.util.List<gb.t> r1 = r10.f6339q
            java.lang.String r2 = "proto.valueParameterList"
            kotlin.jvm.internal.h.e(r1, r2)
            java.lang.Iterable r1 = (java.lang.Iterable) r1
            java.util.ArrayList r2 = new java.util.ArrayList
            int r4 = m9.n.Q0(r1)
            r2.<init>(r4)
            java.util.Iterator r1 = r1.iterator()
        L62:
            boolean r4 = r1.hasNext()
            if (r4 == 0) goto L7b
            java.lang.Object r4 = r1.next()
            gb.t r4 = (gb.t) r4
            java.lang.String r5 = "it"
            kotlin.jvm.internal.h.e(r4, r5)
            gb.p r4 = ib.f.e(r4, r12)
            r2.add(r4)
            goto L62
        L7b:
            java.util.ArrayList r0 = m9.t.m1(r2, r0)
            java.util.ArrayList r4 = new java.util.ArrayList
            int r1 = m9.n.Q0(r0)
            r4.<init>(r1)
            java.util.Iterator r0 = r0.iterator()
        L8c:
            boolean r1 = r0.hasNext()
            r2 = 0
            if (r1 == 0) goto La4
            java.lang.Object r1 = r0.next()
            gb.p r1 = (gb.p) r1
            java.lang.String r1 = e(r1, r11)
            if (r1 != 0) goto La0
            return r2
        La0:
            r4.add(r1)
            goto L8c
        La4:
            gb.p r10 = ib.f.c(r10, r12)
            java.lang.String r10 = e(r10, r11)
            if (r10 != 0) goto Laf
            return r2
        Laf:
            java.lang.String r5 = ""
            java.lang.String r6 = "("
            java.lang.String r7 = ")"
            r8 = 0
            r9 = 56
            java.lang.String r12 = m9.t.g1(r4, r5, r6, r7, r8, r9)
            java.lang.String r10 = r12.concat(r10)
        Lc0:
            kb.d$b r12 = new kb.d$b
            java.lang.String r11 = r11.getString(r3)
            r12.<init>(r11, r10)
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: kb.h.c(gb.h, ib.c, ib.g):kb.d$b");
    }

    public static final boolean d(m proto) {
        kotlin.jvm.internal.h.f(proto, "proto");
        b.a aVar = c.f8810a;
        b.a aVar2 = c.f8810a;
        Object objK = proto.k(jb.a.f8414e);
        kotlin.jvm.internal.h.e(objK, "proto.getExtension(JvmProtoBuf.flags)");
        Boolean boolC = aVar2.c(((Number) objK).intValue());
        kotlin.jvm.internal.h.e(boolC, "JvmFlags.IS_MOVED_FROM_I…nsion(JvmProtoBuf.flags))");
        return boolC.booleanValue();
    }

    public static String e(p pVar, ib.c cVar) {
        if (pVar.q()) {
            return b.b(cVar.a(pVar.f6461j));
        }
        return null;
    }

    public static final l9.g<f, gb.b> f(String[] strArr, String[] strArr2) throws j {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(a.b(strArr));
        f fVarG = g(byteArrayInputStream, strArr2);
        b.a aVar = gb.b.O;
        aVar.getClass();
        mb.d dVar = new mb.d(byteArrayInputStream);
        mb.p pVar = (mb.p) aVar.a(dVar, f8820a);
        try {
            dVar.a(0);
            mb.b.b(pVar);
            return new l9.g<>(fVarG, (gb.b) pVar);
        } catch (j e10) {
            e10.f10298a = pVar;
            throw e10;
        }
    }

    public static f g(ByteArrayInputStream byteArrayInputStream, String[] strArr) {
        a.d dVar = (a.d) a.d.f8459h.c(byteArrayInputStream, f8820a);
        kotlin.jvm.internal.h.e(dVar, "parseDelimitedFrom(this, EXTENSION_REGISTRY)");
        return new f(dVar, strArr);
    }

    public static final l9.g<f, k> h(String[] strArr, String[] strArr2) throws j {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(a.b(strArr));
        f fVarG = g(byteArrayInputStream, strArr2);
        k.a aVar = k.f6363m;
        aVar.getClass();
        mb.d dVar = new mb.d(byteArrayInputStream);
        mb.p pVar = (mb.p) aVar.a(dVar, f8820a);
        try {
            dVar.a(0);
            mb.b.b(pVar);
            return new l9.g<>(fVarG, (k) pVar);
        } catch (j e10) {
            e10.f10298a = pVar;
            throw e10;
        }
    }
}
