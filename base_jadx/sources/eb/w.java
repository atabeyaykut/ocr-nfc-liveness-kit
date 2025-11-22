package eb;

import cc.e0;
import ma.q0;

/* loaded from: classes2.dex */
public final class w {
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00aa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(ma.u r6, int r7) {
        /*
            r0 = r7 & 1
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L8
            r0 = 1
            goto L9
        L8:
            r0 = 0
        L9:
            r7 = r7 & 2
            if (r7 == 0) goto Lf
            r7 = 1
            goto L10
        Lf:
            r7 = 0
        L10:
            java.lang.String r3 = "<this>"
            kotlin.jvm.internal.h.f(r6, r3)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            if (r7 == 0) goto L33
            boolean r7 = r6 instanceof ma.i
            if (r7 == 0) goto L23
            java.lang.String r7 = "<init>"
            goto L30
        L23:
            lb.f r7 = r6.getName()
            java.lang.String r7 = r7.o()
            java.lang.String r4 = "name.asString()"
            kotlin.jvm.internal.h.e(r7, r4)
        L30:
            r3.append(r7)
        L33:
            java.lang.String r7 = "("
            r3.append(r7)
            ma.o0 r7 = r6.h0()
            if (r7 == 0) goto L4e
            cc.e0 r7 = r7.getType()
            java.lang.String r4 = "it.type"
            kotlin.jvm.internal.h.e(r7, r4)
            eb.o r7 = c(r7)
            r3.append(r7)
        L4e:
            java.util.List r7 = r6.g()
            java.util.Iterator r7 = r7.iterator()
        L56:
            boolean r4 = r7.hasNext()
            if (r4 == 0) goto L73
            java.lang.Object r4 = r7.next()
            ma.a1 r4 = (ma.a1) r4
            cc.e0 r4 = r4.getType()
            java.lang.String r5 = "parameter.type"
            kotlin.jvm.internal.h.e(r4, r5)
            eb.o r4 = c(r4)
            r3.append(r4)
            goto L56
        L73:
            java.lang.String r7 = ")"
            r3.append(r7)
            if (r0 == 0) goto Lb8
            boolean r7 = r6 instanceof ma.i
            if (r7 == 0) goto L7f
            goto La1
        L7f:
            cc.e0 r7 = r6.getReturnType()
            kotlin.jvm.internal.h.c(r7)
            lb.f r0 = ja.k.f8326e
            lb.d r0 = ja.o.a.f8375d
            boolean r7 = ja.k.D(r7, r0)
            if (r7 == 0) goto La2
            cc.e0 r7 = r6.getReturnType()
            kotlin.jvm.internal.h.c(r7)
            boolean r7 = cc.q1.g(r7)
            if (r7 != 0) goto La2
            boolean r7 = r6 instanceof ma.m0
            if (r7 != 0) goto La2
        La1:
            r1 = 1
        La2:
            if (r1 == 0) goto Laa
            java.lang.String r6 = "V"
            r3.append(r6)
            goto Lb8
        Laa:
            cc.e0 r6 = r6.getReturnType()
            kotlin.jvm.internal.h.c(r6)
            eb.o r6 = c(r6)
            r3.append(r6)
        Lb8:
            java.lang.String r6 = r3.toString()
            java.lang.String r7 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.h.e(r6, r7)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: eb.w.a(ma.u, int):java.lang.String");
    }

    public static final String b(ma.a aVar) {
        kotlin.jvm.internal.h.f(aVar, "<this>");
        if (ob.i.o(aVar)) {
            return null;
        }
        ma.j jVarB = aVar.b();
        ma.e eVar = jVarB instanceof ma.e ? (ma.e) jVarB : null;
        if (eVar == null || eVar.getName().f9677b) {
            return null;
        }
        ma.a aVarA = aVar.a();
        q0 q0Var = aVarA instanceof q0 ? (q0) aVarA : null;
        if (q0Var == null) {
            return null;
        }
        return b8.f.i0(eVar, a(q0Var, 3));
    }

    public static final o c(e0 e0Var) {
        return (o) x5.a.o(e0Var, a0.f5168k, kc.b.f8825b);
    }
}
