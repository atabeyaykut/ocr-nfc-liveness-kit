package rg;

import kotlin.jvm.internal.j;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.services.contact.InstitutionContactFragment;
import x9.q;

/* loaded from: classes3.dex */
public final class d extends j implements q<String, String, String, m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ InstitutionContactFragment f14685a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(InstitutionContactFragment institutionContactFragment) {
        super(3);
        this.f14685a = institutionContactFragment;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00c8  */
    @Override // x9.q
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final l9.m i(java.lang.String r8, java.lang.String r9, java.lang.String r10) {
        /*
            r7 = this;
            java.lang.String r8 = (java.lang.String) r8
            java.lang.String r9 = (java.lang.String) r9
            java.lang.String r10 = (java.lang.String) r10
            da.m<java.lang.Object>[] r0 = tr.gov.turkiye.edevlet.kapisi.services.contact.InstitutionContactFragment.f16844c
            tr.gov.turkiye.edevlet.kapisi.services.contact.InstitutionContactFragment r0 = r7.f14685a
            r0.getClass()
            java.lang.String r1 = "android.intent.action.VIEW"
            java.lang.String r2 = "geo:"
            r3 = 1
            r4 = 0
            if (r8 == 0) goto L1e
            int r5 = r8.length()
            if (r5 != 0) goto L1c
            goto L1e
        L1c:
            r5 = 0
            goto L1f
        L1e:
            r5 = 1
        L1f:
            if (r5 != 0) goto Lc8
            if (r9 == 0) goto L2c
            int r5 = r9.length()
            if (r5 != 0) goto L2a
            goto L2c
        L2a:
            r5 = 0
            goto L2d
        L2c:
            r5 = 1
        L2d:
            if (r5 != 0) goto Lc8
            java.lang.String r5 = "-"
            boolean r6 = kotlin.jvm.internal.h.a(r8, r5)
            if (r6 != 0) goto Lce
            boolean r5 = kotlin.jvm.internal.h.a(r9, r5)
            if (r5 != 0) goto Lce
            if (r10 == 0) goto L47
            int r5 = r10.length()     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            if (r5 != 0) goto L46
            goto L47
        L46:
            r3 = 0
        L47:
            r4 = 44
            java.lang.String r5 = "geo:0,0?q="
            if (r3 != 0) goto L6d
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            r3.<init>(r5)     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            r3.append(r8)     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            r3.append(r4)     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            r3.append(r9)     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            r5 = 40
            r3.append(r5)     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            r3.append(r10)     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            r10 = 41
            r3.append(r10)     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            java.lang.String r10 = r3.toString()     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            goto L7f
        L6d:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            r10.<init>(r5)     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            r10.append(r8)     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            r10.append(r4)     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            r10.append(r9)     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            java.lang.String r10 = r10.toString()     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
        L7f:
            android.net.Uri r10 = android.net.Uri.parse(r10)     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            android.content.Intent r3 = new android.content.Intent     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            r3.<init>(r1, r10)     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            java.lang.String r10 = "com.google.android.apps.maps"
            r3.setPackage(r10)     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            androidx.fragment.app.FragmentActivity r10 = r0.getActivity()     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            if (r10 == 0) goto L9e
            android.content.pm.PackageManager r10 = r10.getPackageManager()     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            if (r10 == 0) goto L9e
            android.content.ComponentName r10 = r3.resolveActivity(r10)     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            goto L9f
        L9e:
            r10 = 0
        L9f:
            if (r10 == 0) goto La5
            r0.startActivity(r3)     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            goto Lce
        La5:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            r10.<init>(r2)     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            r10.append(r8)     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            r10.append(r4)     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            r10.append(r9)     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            java.lang.String r8 = r10.toString()     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            android.net.Uri r8 = android.net.Uri.parse(r8)     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            android.content.Intent r9 = new android.content.Intent     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            r9.<init>(r1, r8)     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            r0.startActivity(r9)     // Catch: android.content.ActivityNotFoundException -> Lc4 java.lang.Exception -> Lc8
            goto Lce
        Lc4:
            r8 = 2131951848(0x7f1300e8, float:1.9540122E38)
            goto Lcb
        Lc8:
            r8 = 2131952313(0x7f1302b9, float:1.9541065E38)
        Lcb:
            r0.F(r8)
        Lce:
            l9.m r8 = l9.m.f9594a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: rg.d.i(java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
    }
}
