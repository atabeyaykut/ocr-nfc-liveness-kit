package yc;

import ed.h;

/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public static final ed.h f19537a;

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f19538b;

    /* renamed from: c, reason: collision with root package name */
    public static final String[] f19539c;

    /* renamed from: d, reason: collision with root package name */
    public static final String[] f19540d;

    /* renamed from: e, reason: collision with root package name */
    public static final e f19541e = new e();

    static {
        ed.h hVar = ed.h.f5315d;
        f19537a = h.a.b("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
        f19538b = new String[]{"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};
        f19539c = new String[64];
        String[] strArr = new String[256];
        for (int r32 = 0; r32 < 256; r32++) {
            String binaryString = Integer.toBinaryString(r32);
            kotlin.jvm.internal.h.e(binaryString, "Integer.toBinaryString(it)");
            strArr[r32] = mc.j.B(sc.c.h("%8s", binaryString), ' ', '0');
        }
        f19540d = strArr;
        String[] strArr2 = f19539c;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] r33 = {1};
        strArr2[8] = "PADDED";
        strArr2[9] = kotlin.jvm.internal.h.k("|PADDED", "END_STREAM");
        strArr2[4] = "END_HEADERS";
        strArr2[32] = "PRIORITY";
        strArr2[36] = "END_HEADERS|PRIORITY";
        int[] r12 = {4, 32, 36};
        for (int r42 = 0; r42 < 3; r42++) {
            int r72 = r12[r42];
            int r82 = r33[0];
            String[] strArr3 = f19539c;
            int r10 = r82 | r72;
            strArr3[r10] = strArr3[r82] + "|" + strArr3[r72];
            StringBuilder sb2 = new StringBuilder();
            sb2.append(strArr3[r82]);
            sb2.append("|");
            strArr3[r10 | 8] = androidx.camera.camera2.internal.c.h(sb2, strArr3[r72], "|PADDED");
        }
        int length = f19539c.length;
        for (int r22 = 0; r22 < length; r22++) {
            String[] strArr4 = f19539c;
            if (strArr4[r22] == null) {
                strArr4[r22] = f19540d[r22];
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(int r10, int r11, int r12, int r13, boolean r14) {
        /*
            java.lang.String[] r0 = yc.e.f19538b
            int r1 = r0.length
            r2 = 0
            r3 = 1
            if (r12 >= r1) goto La
            r0 = r0[r12]
            goto L18
        La:
            java.lang.Object[] r0 = new java.lang.Object[r3]
            java.lang.Integer r1 = java.lang.Integer.valueOf(r12)
            r0[r2] = r1
            java.lang.String r1 = "0x%02x"
            java.lang.String r0 = sc.c.h(r1, r0)
        L18:
            r1 = 4
            r4 = 5
            r5 = 3
            r6 = 2
            if (r13 != 0) goto L21
            java.lang.String r12 = ""
            goto L66
        L21:
            java.lang.String[] r7 = yc.e.f19540d
            if (r12 == r6) goto L64
            if (r12 == r5) goto L64
            if (r12 == r1) goto L5c
            r8 = 6
            if (r12 == r8) goto L5c
            r8 = 7
            if (r12 == r8) goto L64
            r8 = 8
            if (r12 == r8) goto L64
            java.lang.String[] r8 = yc.e.f19539c
            int r9 = r8.length
            if (r13 >= r9) goto L3e
            r7 = r8[r13]
            kotlin.jvm.internal.h.c(r7)
            goto L40
        L3e:
            r7 = r7[r13]
        L40:
            if (r12 != r4) goto L4b
            r8 = r13 & 4
            if (r8 == 0) goto L4b
            java.lang.String r12 = "HEADERS"
            java.lang.String r13 = "PUSH_PROMISE"
            goto L55
        L4b:
            if (r12 != 0) goto L5a
            r12 = r13 & 32
            if (r12 == 0) goto L5a
            java.lang.String r12 = "PRIORITY"
            java.lang.String r13 = "COMPRESSED"
        L55:
            java.lang.String r12 = mc.j.C(r7, r12, r13)
            goto L66
        L5a:
            r12 = r7
            goto L66
        L5c:
            if (r13 != r3) goto L61
            java.lang.String r12 = "ACK"
            goto L66
        L61:
            r12 = r7[r13]
            goto L66
        L64:
            r12 = r7[r13]
        L66:
            if (r14 == 0) goto L6b
            java.lang.String r13 = "<<"
            goto L6d
        L6b:
            java.lang.String r13 = ">>"
        L6d:
            java.lang.Object[] r14 = new java.lang.Object[r4]
            r14[r2] = r13
            java.lang.Integer r10 = java.lang.Integer.valueOf(r10)
            r14[r3] = r10
            java.lang.Integer r10 = java.lang.Integer.valueOf(r11)
            r14[r6] = r10
            r14[r5] = r0
            r14[r1] = r12
            java.lang.String r10 = "%s 0x%08x %5d %-13s %s"
            java.lang.String r10 = sc.c.h(r10, r14)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: yc.e.a(int, int, int, int, boolean):java.lang.String");
    }
}
