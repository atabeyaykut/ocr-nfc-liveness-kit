package cd;

import kotlin.jvm.internal.h;

/* loaded from: classes2.dex */
public final class a extends c {

    /* renamed from: a, reason: collision with root package name */
    public final e f2379a;

    public a(e trustRootIndex) {
        h.f(trustRootIndex, "trustRootIndex");
        this.f2379a = trustRootIndex;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x006d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00a3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:? A[LOOP:1: B:24:0x0079->B:63:?, LOOP_END, SYNTHETIC] */
    @Override // cd.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List a(java.lang.String r11, java.util.List r12) throws java.security.NoSuchAlgorithmException, java.security.SignatureException, java.security.InvalidKeyException, java.security.cert.CertificateException, java.security.NoSuchProviderException, javax.net.ssl.SSLPeerUnverifiedException {
        /*
            r10 = this;
            java.lang.String r0 = "chain"
            kotlin.jvm.internal.h.f(r12, r0)
            java.lang.String r0 = "hostname"
            kotlin.jvm.internal.h.f(r11, r0)
            java.util.ArrayDeque r11 = new java.util.ArrayDeque
            java.util.Collection r12 = (java.util.Collection) r12
            r11.<init>(r12)
            java.util.ArrayList r12 = new java.util.ArrayList
            r12.<init>()
            java.lang.Object r0 = r11.removeFirst()
            java.lang.String r1 = "queue.removeFirst()"
            kotlin.jvm.internal.h.e(r0, r1)
            r12.add(r0)
            r0 = 0
            r1 = 0
            r2 = 0
        L25:
            r3 = 9
            if (r1 >= r3) goto Ld0
            int r3 = r12.size()
            r4 = 1
            int r3 = r3 - r4
            java.lang.Object r3 = r12.get(r3)
            java.lang.String r5 = "null cannot be cast to non-null type java.security.cert.X509Certificate"
            if (r3 == 0) goto Lca
            java.security.cert.X509Certificate r3 = (java.security.cert.X509Certificate) r3
            cd.e r6 = r10.f2379a
            java.security.cert.X509Certificate r6 = r6.a(r3)
            if (r6 == 0) goto L70
            int r2 = r12.size()
            if (r2 > r4) goto L4e
            boolean r2 = kotlin.jvm.internal.h.a(r3, r6)
            r2 = r2 ^ r4
            if (r2 == 0) goto L51
        L4e:
            r12.add(r6)
        L51:
            java.security.Principal r2 = r6.getIssuerDN()
            java.security.Principal r3 = r6.getSubjectDN()
            boolean r2 = kotlin.jvm.internal.h.a(r2, r3)
            r2 = r2 ^ r4
            if (r2 == 0) goto L61
            goto L6a
        L61:
            java.security.PublicKey r2 = r6.getPublicKey()     // Catch: java.security.GeneralSecurityException -> L6a
            r6.verify(r2)     // Catch: java.security.GeneralSecurityException -> L6a
            r2 = 1
            goto L6b
        L6a:
            r2 = 0
        L6b:
            if (r2 == 0) goto L6e
            return r12
        L6e:
            r2 = 1
            goto La9
        L70:
            java.util.Iterator r6 = r11.iterator()
            java.lang.String r7 = "queue.iterator()"
            kotlin.jvm.internal.h.e(r6, r7)
        L79:
            boolean r7 = r6.hasNext()
            if (r7 == 0) goto Lb3
            java.lang.Object r7 = r6.next()
            if (r7 == 0) goto Lad
            java.security.cert.X509Certificate r7 = (java.security.cert.X509Certificate) r7
            java.security.Principal r8 = r3.getIssuerDN()
            java.security.Principal r9 = r7.getSubjectDN()
            boolean r8 = kotlin.jvm.internal.h.a(r8, r9)
            r8 = r8 ^ r4
            if (r8 == 0) goto L97
            goto La0
        L97:
            java.security.PublicKey r8 = r7.getPublicKey()     // Catch: java.security.GeneralSecurityException -> La0
            r3.verify(r8)     // Catch: java.security.GeneralSecurityException -> La0
            r8 = 1
            goto La1
        La0:
            r8 = 0
        La1:
            if (r8 == 0) goto L79
            r6.remove()
            r12.add(r7)
        La9:
            int r1 = r1 + 1
            goto L25
        Lad:
            java.lang.NullPointerException r11 = new java.lang.NullPointerException
            r11.<init>(r5)
            throw r11
        Lb3:
            if (r2 == 0) goto Lb6
            return r12
        Lb6:
            javax.net.ssl.SSLPeerUnverifiedException r11 = new javax.net.ssl.SSLPeerUnverifiedException
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            java.lang.String r0 = "Failed to find a trusted cert that signed "
            r12.<init>(r0)
            r12.append(r3)
            java.lang.String r12 = r12.toString()
            r11.<init>(r12)
            throw r11
        Lca:
            java.lang.NullPointerException r11 = new java.lang.NullPointerException
            r11.<init>(r5)
            throw r11
        Ld0:
            javax.net.ssl.SSLPeerUnverifiedException r11 = new javax.net.ssl.SSLPeerUnverifiedException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Certificate chain too long: "
            r0.<init>(r1)
            r0.append(r12)
            java.lang.String r12 = r0.toString()
            r11.<init>(r12)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: cd.a.a(java.lang.String, java.util.List):java.util.List");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof a) && h.a(((a) obj).f2379a, this.f2379a);
    }

    public final int hashCode() {
        return this.f2379a.hashCode();
    }
}
