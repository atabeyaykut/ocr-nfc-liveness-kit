package m;

import android.net.Uri;

/* loaded from: classes.dex */
public final class f implements d<Uri, Uri> {
    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    @Override // m.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.net.Uri a(android.net.Uri r6, p.k r7) throws android.content.pm.PackageManager.NameNotFoundException {
        /*
            r5 = this;
            android.net.Uri r6 = (android.net.Uri) r6
            java.lang.String r0 = r6.getScheme()
            java.lang.String r1 = "android.resource"
            boolean r0 = kotlin.jvm.internal.h.a(r0, r1)
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L31
            java.lang.String r0 = r6.getAuthority()
            if (r0 == 0) goto L1f
            boolean r0 = mc.j.y(r0)
            if (r0 == 0) goto L1d
            goto L1f
        L1d:
            r0 = 0
            goto L20
        L1f:
            r0 = 1
        L20:
            if (r0 != 0) goto L31
            java.util.List r0 = r6.getPathSegments()
            java.util.Collection r0 = (java.util.Collection) r0
            int r0 = r0.size()
            r3 = 2
            if (r0 != r3) goto L31
            r0 = 1
            goto L32
        L31:
            r0 = 0
        L32:
            if (r0 != 0) goto L36
            r6 = 0
            goto L81
        L36:
            java.lang.String r0 = r6.getAuthority()
            if (r0 != 0) goto L3e
            java.lang.String r0 = ""
        L3e:
            android.content.Context r7 = r7.f12166a
            android.content.pm.PackageManager r7 = r7.getPackageManager()
            android.content.res.Resources r7 = r7.getResourcesForApplication(r0)
            java.util.List r3 = r6.getPathSegments()
            java.lang.Object r4 = r3.get(r2)
            java.lang.String r4 = (java.lang.String) r4
            java.lang.Object r3 = r3.get(r1)
            java.lang.String r3 = (java.lang.String) r3
            int r7 = r7.getIdentifier(r3, r4, r0)
            if (r7 == 0) goto L5f
            goto L60
        L5f:
            r1 = 0
        L60:
            if (r1 == 0) goto L82
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            java.lang.String r1 = "android.resource://"
            r6.<init>(r1)
            r6.append(r0)
            r0 = 47
            r6.append(r0)
            r6.append(r7)
            java.lang.String r6 = r6.toString()
            android.net.Uri r6 = android.net.Uri.parse(r6)
            java.lang.String r7 = "parse(this)"
            kotlin.jvm.internal.h.e(r6, r7)
        L81:
            return r6
        L82:
            java.lang.String r7 = "Invalid android.resource URI: "
            java.lang.String r6 = kotlin.jvm.internal.h.k(r6, r7)
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r6 = r6.toString()
            r7.<init>(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: m.f.a(java.lang.Object, p.k):java.lang.Object");
    }
}
