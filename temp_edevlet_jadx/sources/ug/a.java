package ug;

import kotlin.jvm.internal.j;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.services.institution.InstitutionFragment;
import x9.l;

/* loaded from: classes3.dex */
public final class a extends j implements l<c, m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ InstitutionFragment f18151a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(InstitutionFragment institutionFragment) {
        super(1);
        this.f18151a = institutionFragment;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:0|2|(1:4)(2:5|(6:7|33|10|(3:24|25|(1:27)(2:28|29))(3:(1:(2:14|(2:16|(2:18|24)(1:19))(1:20))(1:21))(1:22)|25|(0)(0))|30|31)(1:8))|9|33|10|(0)(0)|30|31) */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b4 A[Catch: Exception -> 0x00cf, TryCatch #0 {Exception -> 0x00cf, blocks: (B:10:0x0093, B:25:0x00b0, B:27:0x00b4, B:28:0x00c8, B:29:0x00ce), top: B:33:0x0093 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c8 A[Catch: Exception -> 0x00cf, TryCatch #0 {Exception -> 0x00cf, blocks: (B:10:0x0093, B:25:0x00b0, B:27:0x00b4, B:28:0x00c8, B:29:0x00ce), top: B:33:0x0093 }] */
    @Override // x9.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final l9.m invoke(ug.c r12) {
        /*
            r11 = this;
            ug.c r12 = (ug.c) r12
            java.lang.String r0 = "selectedInstitutionCategory"
            kotlin.jvm.internal.h.e(r12, r0)
            da.m<java.lang.Object>[] r0 = tr.gov.turkiye.edevlet.kapisi.services.institution.InstitutionFragment.f16894d
            tr.gov.turkiye.edevlet.kapisi.services.institution.InstitutionFragment r0 = r11.f18151a
            r0.getClass()
            int r1 = r12.f18154b
            java.lang.String r1 = r0.getString(r1)
            java.lang.String r2 = "getString(resourceId)"
            kotlin.jvm.internal.h.e(r1, r2)
            java.lang.String r2 = "tr-TR"
            java.util.Locale r2 = java.util.Locale.forLanguageTag(r2)
            java.lang.String r3 = "forLanguageTag(\"tr-TR\")"
            kotlin.jvm.internal.h.e(r2, r3)
            java.lang.String r1 = mc.j.v(r1, r2)
            r2 = 2
            r3 = 3
            java.lang.String r4 = "categoryCode"
            r5 = 0
            r6 = 1
            int r7 = r12.f18155c
            if (r7 != r3) goto L4b
            l9.g[] r1 = new l9.g[r6]
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
            l9.g r8 = new l9.g
            r8.<init>(r4, r7)
            r1[r5] = r8
            android.os.Bundle r1 = androidx.core.os.BundleKt.bundleOf(r1)
            androidx.navigation.NavController r4 = androidx.navigation.fragment.FragmentKt.findNavController(r0)
            r7 = 2131362165(0x7f0a0175, float:1.8344103E38)
            goto L90
        L4b:
            l9.g[] r8 = new l9.g[r2]
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
            boolean r9 = r12.f18157e
            java.lang.String r10 = "title"
            if (r9 == 0) goto L77
            l9.g r9 = new l9.g
            r9.<init>(r4, r7)
            r8[r5] = r9
            l9.g r4 = new l9.g
            r4.<init>(r10, r1)
            r8[r6] = r4
            android.os.Bundle r1 = androidx.core.os.BundleKt.bundleOf(r8)
            androidx.navigation.NavController r4 = androidx.navigation.fragment.FragmentKt.findNavController(r0)
            r7 = 2131362288(0x7f0a01f0, float:1.8344352E38)
            r4.navigate(r7, r1)
            r0.E(r12)
            goto L93
        L77:
            l9.g r9 = new l9.g
            r9.<init>(r4, r7)
            r8[r5] = r9
            l9.g r4 = new l9.g
            r4.<init>(r10, r1)
            r8[r6] = r4
            android.os.Bundle r1 = androidx.core.os.BundleKt.bundleOf(r8)
            androidx.navigation.NavController r4 = androidx.navigation.fragment.FragmentKt.findNavController(r0)
            r7 = 2131362291(0x7f0a01f3, float:1.8344358E38)
        L90:
            r4.navigate(r7, r1)
        L93:
            int r12 = r12.f18153a     // Catch: java.lang.Exception -> Lcf
            if (r12 == r6) goto Lae
            if (r12 == r2) goto Lab
            if (r12 == r3) goto La8
            r1 = 4
            if (r12 == r1) goto La5
            r1 = 5
            if (r12 == r1) goto La2
            goto Lae
        La2:
            java.lang.String r12 = "University"
            goto Lb0
        La5:
            java.lang.String r12 = "Firm"
            goto Lb0
        La8:
            java.lang.String r12 = "Company"
            goto Lb0
        Lab:
            java.lang.String r12 = "Municipality"
            goto Lb0
        Lae:
            java.lang.String r12 = "Institutions"
        Lb0:
            com.google.firebase.analytics.FirebaseAnalytics r0 = r0.f16895a     // Catch: java.lang.Exception -> Lcf
            if (r0 == 0) goto Lc8
            java.lang.String r1 = "EDK_Services"
            c5.b4 r3 = new c5.b4     // Catch: java.lang.Exception -> Lcf
            r3.<init>(r2, r5)     // Catch: java.lang.Exception -> Lcf
            java.lang.String r2 = "action"
            r3.d(r2, r12)     // Catch: java.lang.Exception -> Lcf
            java.lang.Object r12 = r3.f1418a     // Catch: java.lang.Exception -> Lcf
            android.os.Bundle r12 = (android.os.Bundle) r12     // Catch: java.lang.Exception -> Lcf
            r0.a(r12, r1)     // Catch: java.lang.Exception -> Lcf
            goto Lcf
        Lc8:
            java.lang.String r12 = "firebaseAnalytics"
            kotlin.jvm.internal.h.n(r12)     // Catch: java.lang.Exception -> Lcf
            r12 = 0
            throw r12     // Catch: java.lang.Exception -> Lcf
        Lcf:
            l9.m r12 = l9.m.f9594a
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: ug.a.invoke(java.lang.Object):java.lang.Object");
    }
}
