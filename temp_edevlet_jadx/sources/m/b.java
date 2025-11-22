package m;

import android.net.Uri;
import java.io.File;

/* loaded from: classes.dex */
public final class b implements d<Uri, File> {
    /* JADX WARN: Removed duplicated region for block: B:25:0x0058  */
    @Override // m.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.File a(android.net.Uri r5, p.k r6) {
        /*
            r4 = this;
            android.net.Uri r5 = (android.net.Uri) r5
            android.graphics.Bitmap$Config[] r6 = u.c.f17726a
            java.lang.String r6 = r5.getScheme()
            java.lang.String r0 = "file"
            boolean r6 = kotlin.jvm.internal.h.a(r6, r0)
            r1 = 1
            r2 = 0
            if (r6 == 0) goto L26
            java.util.List r6 = r5.getPathSegments()
            java.lang.Object r6 = m9.t.c1(r6)
            java.lang.String r6 = (java.lang.String) r6
            java.lang.String r3 = "android_asset"
            boolean r6 = kotlin.jvm.internal.h.a(r6, r3)
            if (r6 == 0) goto L26
            r6 = 1
            goto L27
        L26:
            r6 = 0
        L27:
            if (r6 != 0) goto L58
            java.lang.String r6 = r5.getScheme()
            if (r6 == 0) goto L38
            boolean r6 = kotlin.jvm.internal.h.a(r6, r0)
            if (r6 == 0) goto L36
            goto L38
        L36:
            r6 = 0
            goto L39
        L38:
            r6 = 1
        L39:
            if (r6 == 0) goto L58
            java.lang.String r6 = r5.getPath()
            if (r6 != 0) goto L43
            java.lang.String r6 = ""
        L43:
            r0 = 47
            boolean r6 = mc.n.Z(r6, r0)
            if (r6 == 0) goto L58
            java.util.List r6 = r5.getPathSegments()
            java.lang.Object r6 = m9.t.c1(r6)
            java.lang.String r6 = (java.lang.String) r6
            if (r6 == 0) goto L58
            goto L59
        L58:
            r1 = 0
        L59:
            if (r1 != 0) goto L5d
            r5 = 0
            goto L6a
        L5d:
            java.io.File r6 = new java.io.File
            java.lang.String r5 = r5.getPath()
            kotlin.jvm.internal.h.c(r5)
            r6.<init>(r5)
            r5 = r6
        L6a:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: m.b.a(java.lang.Object, p.k):java.lang.Object");
    }
}
