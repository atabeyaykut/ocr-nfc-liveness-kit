package mc;

/* loaded from: classes2.dex */
public class i extends h {
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002c, code lost:
    
        if (r3 == '+') goto L17;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Integer t(java.lang.String r10) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.h.f(r10, r0)
            r0 = 10
            a6.a.j(r0)
            int r1 = r10.length()
            if (r1 != 0) goto L11
            goto L56
        L11:
            r2 = 0
            char r3 = r10.charAt(r2)
            r4 = 48
            int r4 = kotlin.jvm.internal.h.h(r3, r4)
            if (r4 >= 0) goto L2f
            r4 = 1
            if (r1 != r4) goto L22
            goto L56
        L22:
            r5 = 45
            if (r3 != r5) goto L2a
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = 1
            goto L34
        L2a:
            r5 = 43
            if (r3 != r5) goto L56
            goto L30
        L2f:
            r4 = 0
        L30:
            r3 = -2147483647(0xffffffff80000001, float:-1.4E-45)
            r5 = 0
        L34:
            r6 = -59652323(0xfffffffffc71c71d, float:-5.0215282E36)
            r7 = -59652323(0xfffffffffc71c71d, float:-5.0215282E36)
        L3a:
            if (r4 >= r1) goto L5c
            char r8 = r10.charAt(r4)
            int r8 = java.lang.Character.digit(r8, r0)
            if (r8 >= 0) goto L47
            goto L56
        L47:
            if (r2 >= r7) goto L50
            if (r7 != r6) goto L56
            int r7 = r3 / 10
            if (r2 >= r7) goto L50
            goto L56
        L50:
            int r2 = r2 * 10
            int r9 = r3 + r8
            if (r2 >= r9) goto L58
        L56:
            r10 = 0
            goto L68
        L58:
            int r2 = r2 - r8
            int r4 = r4 + 1
            goto L3a
        L5c:
            if (r5 == 0) goto L63
            java.lang.Integer r10 = java.lang.Integer.valueOf(r2)
            goto L68
        L63:
            int r10 = -r2
            java.lang.Integer r10 = java.lang.Integer.valueOf(r10)
        L68:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: mc.i.t(java.lang.String):java.lang.Integer");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002f, code lost:
    
        if (r4 == '+') goto L17;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005d A[PHI: r12
      0x005d: PHI (r12v2 long) = (r12v1 long), (r12v4 long) binds: [B:24:0x004f, B:28:0x005a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Long u(java.lang.String r18) {
        /*
            r0 = r18
            java.lang.String r1 = "<this>"
            kotlin.jvm.internal.h.f(r0, r1)
            r1 = 10
            a6.a.j(r1)
            int r2 = r18.length()
            if (r2 != 0) goto L13
            goto L67
        L13:
            r3 = 0
            char r4 = r0.charAt(r3)
            r5 = 48
            int r5 = kotlin.jvm.internal.h.h(r4, r5)
            if (r5 >= 0) goto L32
            r5 = 1
            if (r2 != r5) goto L24
            goto L67
        L24:
            r6 = 45
            if (r4 != r6) goto L2d
            r3 = -9223372036854775808
            r6 = r3
            r3 = 1
            goto L38
        L2d:
            r6 = 43
            if (r4 != r6) goto L67
            goto L33
        L32:
            r5 = 0
        L33:
            r6 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
        L38:
            r8 = -256204778801521550(0xfc71c71c71c71c72, double:-2.772000429909333E291)
            r10 = 0
            r12 = r8
        L40:
            if (r5 >= r2) goto L6d
            char r4 = r0.charAt(r5)
            int r4 = java.lang.Character.digit(r4, r1)
            if (r4 >= 0) goto L4d
            goto L67
        L4d:
            int r14 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r14 >= 0) goto L5d
            int r14 = (r12 > r8 ? 1 : (r12 == r8 ? 0 : -1))
            if (r14 != 0) goto L67
            long r12 = (long) r1
            long r12 = r6 / r12
            int r14 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r14 >= 0) goto L5d
            goto L67
        L5d:
            long r14 = (long) r1
            long r10 = r10 * r14
            long r14 = (long) r4
            long r16 = r6 + r14
            int r4 = (r10 > r16 ? 1 : (r10 == r16 ? 0 : -1))
            if (r4 >= 0) goto L69
        L67:
            r0 = 0
            goto L79
        L69:
            long r10 = r10 - r14
            int r5 = r5 + 1
            goto L40
        L6d:
            if (r3 == 0) goto L74
            java.lang.Long r0 = java.lang.Long.valueOf(r10)
            goto L79
        L74:
            long r0 = -r10
            java.lang.Long r0 = java.lang.Long.valueOf(r0)
        L79:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: mc.i.u(java.lang.String):java.lang.Long");
    }
}
