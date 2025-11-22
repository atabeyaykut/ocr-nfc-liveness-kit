package v9;

import c5.w;
import java.io.File;
import v9.c;
import v9.c.b;

/* loaded from: classes2.dex */
public class d extends w {
    public static final void g0(File file) {
        c.b bVar = new c(file).new b();
        while (true) {
            boolean z10 = true;
            while (bVar.hasNext()) {
                File next = bVar.next();
                if (!next.delete() && next.exists()) {
                    z10 = false;
                } else if (z10) {
                    break;
                } else {
                    z10 = false;
                }
            }
            return;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0048 A[PHI: r2
      0x0048: PHI (r2v4 int) = (r2v2 int), (r2v12 int) binds: [B:17:0x0046, B:11:0x0037] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.io.File h0(java.io.File r7) {
        /*
            java.io.File r0 = new java.io.File
            java.lang.String r1 = "image_cache"
            r0.<init>(r1)
            java.lang.String r1 = r0.getPath()
            java.lang.String r2 = "path"
            kotlin.jvm.internal.h.e(r1, r2)
            char r2 = java.io.File.separatorChar
            r3 = 0
            r4 = 4
            int r2 = mc.n.M(r1, r2, r3, r3, r4)
            r5 = 1
            if (r2 != 0) goto L3c
            int r2 = r1.length()
            if (r2 <= r5) goto L3a
            char r2 = r1.charAt(r5)
            char r6 = java.io.File.separatorChar
            if (r2 != r6) goto L3a
            r2 = 2
            int r2 = mc.n.M(r1, r6, r2, r3, r4)
            if (r2 < 0) goto L3a
            char r6 = java.io.File.separatorChar
            int r2 = r2 + r5
            int r2 = mc.n.M(r1, r6, r2, r3, r4)
            if (r2 < 0) goto L54
            goto L48
        L3a:
            r1 = 1
            goto L5a
        L3c:
            r4 = 58
            if (r2 <= 0) goto L4b
            int r6 = r2 + (-1)
            char r6 = r1.charAt(r6)
            if (r6 != r4) goto L4b
        L48:
            int r1 = r2 + 1
            goto L5a
        L4b:
            r5 = -1
            if (r2 != r5) goto L59
            boolean r2 = mc.n.I(r1, r4)
            if (r2 == 0) goto L59
        L54:
            int r1 = r1.length()
            goto L5a
        L59:
            r1 = 0
        L5a:
            if (r1 <= 0) goto L5e
            r1 = 1
            goto L5f
        L5e:
            r1 = 0
        L5f:
            if (r1 == 0) goto L62
            goto La8
        L62:
            java.lang.String r7 = r7.toString()
            java.lang.String r1 = "this.toString()"
            kotlin.jvm.internal.h.e(r7, r1)
            int r1 = r7.length()
            if (r1 != 0) goto L72
            r3 = 1
        L72:
            if (r3 != 0) goto L93
            char r1 = java.io.File.separatorChar
            boolean r1 = mc.n.I(r7, r1)
            if (r1 == 0) goto L7d
            goto L93
        L7d:
            java.io.File r1 = new java.io.File
            java.lang.StringBuilder r7 = androidx.constraintlayout.core.a.e(r7)
            char r2 = java.io.File.separatorChar
            r7.append(r2)
            r7.append(r0)
            java.lang.String r7 = r7.toString()
            r1.<init>(r7)
            goto La7
        L93:
            java.io.File r1 = new java.io.File
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r7)
            r2.append(r0)
            java.lang.String r7 = r2.toString()
            r1.<init>(r7)
        La7:
            r0 = r1
        La8:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: v9.d.h0(java.io.File):java.io.File");
    }
}
