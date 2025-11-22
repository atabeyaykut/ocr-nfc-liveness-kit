package rc;

import java.util.Comparator;
import java.util.LinkedHashMap;

/* loaded from: classes2.dex */
public final class h {

    /* renamed from: b, reason: collision with root package name */
    public static final a f14450b;

    /* renamed from: c, reason: collision with root package name */
    public static final LinkedHashMap f14451c;

    /* renamed from: d, reason: collision with root package name */
    public static final h f14452d;

    /* renamed from: e, reason: collision with root package name */
    public static final h f14453e;
    public static final h f;

    /* renamed from: g, reason: collision with root package name */
    public static final h f14454g;

    /* renamed from: h, reason: collision with root package name */
    public static final h f14455h;

    /* renamed from: i, reason: collision with root package name */
    public static final h f14456i;

    /* renamed from: j, reason: collision with root package name */
    public static final h f14457j;

    /* renamed from: k, reason: collision with root package name */
    public static final h f14458k;

    /* renamed from: l, reason: collision with root package name */
    public static final h f14459l;

    /* renamed from: m, reason: collision with root package name */
    public static final h f14460m;

    /* renamed from: n, reason: collision with root package name */
    public static final h f14461n;

    /* renamed from: o, reason: collision with root package name */
    public static final h f14462o;

    /* renamed from: p, reason: collision with root package name */
    public static final h f14463p;

    /* renamed from: q, reason: collision with root package name */
    public static final h f14464q;

    /* renamed from: r, reason: collision with root package name */
    public static final h f14465r;

    /* renamed from: s, reason: collision with root package name */
    public static final h f14466s;

    /* renamed from: t, reason: collision with root package name */
    public static final b f14467t;

    /* renamed from: a, reason: collision with root package name */
    public final String f14468a;

    public static final class a implements Comparator<String> {
        /* JADX WARN: Code restructure failed: missing block: B:9:0x002f, code lost:
        
            return -1;
         */
        @Override // java.util.Comparator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int compare(java.lang.String r7, java.lang.String r8) {
            /*
                r6 = this;
                java.lang.String r7 = (java.lang.String) r7
                java.lang.String r8 = (java.lang.String) r8
                java.lang.String r0 = "a"
                kotlin.jvm.internal.h.f(r7, r0)
                java.lang.String r0 = "b"
                kotlin.jvm.internal.h.f(r8, r0)
                int r0 = r7.length()
                int r1 = r8.length()
                int r0 = java.lang.Math.min(r0, r1)
                r1 = 4
            L1b:
                r2 = 1
                r3 = -1
                if (r1 >= r0) goto L34
                char r4 = r7.charAt(r1)
                char r5 = r8.charAt(r1)
                if (r4 == r5) goto L31
                int r7 = kotlin.jvm.internal.h.h(r4, r5)
                if (r7 >= 0) goto L42
            L2f:
                r2 = -1
                goto L42
            L31:
                int r1 = r1 + 1
                goto L1b
            L34:
                int r7 = r7.length()
                int r8 = r8.length()
                if (r7 == r8) goto L41
                if (r7 >= r8) goto L42
                goto L2f
            L41:
                r2 = 0
            L42:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: rc.h.a.compare(java.lang.Object, java.lang.Object):int");
        }
    }

    public static final class b {
        public static final h a(b bVar, String str) {
            h hVar = new h(str);
            h.f14451c.put(str, hVar);
            return hVar;
        }

        public final synchronized h b(String javaName) {
            h hVar;
            String strConcat;
            kotlin.jvm.internal.h.f(javaName, "javaName");
            LinkedHashMap linkedHashMap = h.f14451c;
            hVar = (h) linkedHashMap.get(javaName);
            if (hVar == null) {
                if (mc.j.D(javaName, "TLS_", false)) {
                    String strSubstring = javaName.substring(4);
                    kotlin.jvm.internal.h.e(strSubstring, "(this as java.lang.String).substring(startIndex)");
                    strConcat = "SSL_".concat(strSubstring);
                } else if (mc.j.D(javaName, "SSL_", false)) {
                    String strSubstring2 = javaName.substring(4);
                    kotlin.jvm.internal.h.e(strSubstring2, "(this as java.lang.String).substring(startIndex)");
                    strConcat = "TLS_".concat(strSubstring2);
                } else {
                    strConcat = javaName;
                }
                hVar = (h) linkedHashMap.get(strConcat);
                if (hVar == null) {
                    hVar = new h(javaName);
                }
                linkedHashMap.put(javaName, hVar);
            }
            return hVar;
        }
    }

    static {
        b bVar = new b();
        f14467t = bVar;
        f14450b = new a();
        f14451c = new LinkedHashMap();
        b.a(bVar, "SSL_RSA_WITH_NULL_MD5");
        b.a(bVar, "SSL_RSA_WITH_NULL_SHA");
        b.a(bVar, "SSL_RSA_EXPORT_WITH_RC4_40_MD5");
        b.a(bVar, "SSL_RSA_WITH_RC4_128_MD5");
        b.a(bVar, "SSL_RSA_WITH_RC4_128_SHA");
        b.a(bVar, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA");
        b.a(bVar, "SSL_RSA_WITH_DES_CBC_SHA");
        f14452d = b.a(bVar, "SSL_RSA_WITH_3DES_EDE_CBC_SHA");
        b.a(bVar, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA");
        b.a(bVar, "SSL_DHE_DSS_WITH_DES_CBC_SHA");
        b.a(bVar, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA");
        b.a(bVar, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA");
        b.a(bVar, "SSL_DHE_RSA_WITH_DES_CBC_SHA");
        b.a(bVar, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA");
        b.a(bVar, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5");
        b.a(bVar, "SSL_DH_anon_WITH_RC4_128_MD5");
        b.a(bVar, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA");
        b.a(bVar, "SSL_DH_anon_WITH_DES_CBC_SHA");
        b.a(bVar, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA");
        b.a(bVar, "TLS_KRB5_WITH_DES_CBC_SHA");
        b.a(bVar, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA");
        b.a(bVar, "TLS_KRB5_WITH_RC4_128_SHA");
        b.a(bVar, "TLS_KRB5_WITH_DES_CBC_MD5");
        b.a(bVar, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5");
        b.a(bVar, "TLS_KRB5_WITH_RC4_128_MD5");
        b.a(bVar, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA");
        b.a(bVar, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA");
        b.a(bVar, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5");
        b.a(bVar, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5");
        f14453e = b.a(bVar, "TLS_RSA_WITH_AES_128_CBC_SHA");
        b.a(bVar, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA");
        b.a(bVar, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA");
        b.a(bVar, "TLS_DH_anon_WITH_AES_128_CBC_SHA");
        f = b.a(bVar, "TLS_RSA_WITH_AES_256_CBC_SHA");
        b.a(bVar, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA");
        b.a(bVar, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA");
        b.a(bVar, "TLS_DH_anon_WITH_AES_256_CBC_SHA");
        b.a(bVar, "TLS_RSA_WITH_NULL_SHA256");
        b.a(bVar, "TLS_RSA_WITH_AES_128_CBC_SHA256");
        b.a(bVar, "TLS_RSA_WITH_AES_256_CBC_SHA256");
        b.a(bVar, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256");
        b.a(bVar, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA");
        b.a(bVar, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA");
        b.a(bVar, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA");
        b.a(bVar, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256");
        b.a(bVar, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256");
        b.a(bVar, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256");
        b.a(bVar, "TLS_DH_anon_WITH_AES_128_CBC_SHA256");
        b.a(bVar, "TLS_DH_anon_WITH_AES_256_CBC_SHA256");
        b.a(bVar, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA");
        b.a(bVar, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA");
        b.a(bVar, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA");
        b.a(bVar, "TLS_PSK_WITH_RC4_128_SHA");
        b.a(bVar, "TLS_PSK_WITH_3DES_EDE_CBC_SHA");
        b.a(bVar, "TLS_PSK_WITH_AES_128_CBC_SHA");
        b.a(bVar, "TLS_PSK_WITH_AES_256_CBC_SHA");
        b.a(bVar, "TLS_RSA_WITH_SEED_CBC_SHA");
        f14454g = b.a(bVar, "TLS_RSA_WITH_AES_128_GCM_SHA256");
        f14455h = b.a(bVar, "TLS_RSA_WITH_AES_256_GCM_SHA384");
        b.a(bVar, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256");
        b.a(bVar, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384");
        b.a(bVar, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256");
        b.a(bVar, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384");
        b.a(bVar, "TLS_DH_anon_WITH_AES_128_GCM_SHA256");
        b.a(bVar, "TLS_DH_anon_WITH_AES_256_GCM_SHA384");
        b.a(bVar, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV");
        b.a(bVar, "TLS_FALLBACK_SCSV");
        b.a(bVar, "TLS_ECDH_ECDSA_WITH_NULL_SHA");
        b.a(bVar, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA");
        b.a(bVar, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA");
        b.a(bVar, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA");
        b.a(bVar, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA");
        b.a(bVar, "TLS_ECDHE_ECDSA_WITH_NULL_SHA");
        b.a(bVar, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA");
        b.a(bVar, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA");
        b.a(bVar, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA");
        b.a(bVar, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA");
        b.a(bVar, "TLS_ECDH_RSA_WITH_NULL_SHA");
        b.a(bVar, "TLS_ECDH_RSA_WITH_RC4_128_SHA");
        b.a(bVar, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA");
        b.a(bVar, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA");
        b.a(bVar, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA");
        b.a(bVar, "TLS_ECDHE_RSA_WITH_NULL_SHA");
        b.a(bVar, "TLS_ECDHE_RSA_WITH_RC4_128_SHA");
        b.a(bVar, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA");
        f14456i = b.a(bVar, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA");
        f14457j = b.a(bVar, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA");
        b.a(bVar, "TLS_ECDH_anon_WITH_NULL_SHA");
        b.a(bVar, "TLS_ECDH_anon_WITH_RC4_128_SHA");
        b.a(bVar, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA");
        b.a(bVar, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA");
        b.a(bVar, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA");
        b.a(bVar, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256");
        b.a(bVar, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384");
        b.a(bVar, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256");
        b.a(bVar, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384");
        b.a(bVar, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256");
        b.a(bVar, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384");
        b.a(bVar, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256");
        b.a(bVar, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384");
        f14458k = b.a(bVar, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256");
        f14459l = b.a(bVar, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384");
        b.a(bVar, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256");
        b.a(bVar, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384");
        f14460m = b.a(bVar, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256");
        f14461n = b.a(bVar, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384");
        b.a(bVar, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256");
        b.a(bVar, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384");
        b.a(bVar, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA");
        b.a(bVar, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA");
        f14462o = b.a(bVar, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256");
        f14463p = b.a(bVar, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256");
        b.a(bVar, "TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256");
        b.a(bVar, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256");
        f14464q = b.a(bVar, "TLS_AES_128_GCM_SHA256");
        f14465r = b.a(bVar, "TLS_AES_256_GCM_SHA384");
        f14466s = b.a(bVar, "TLS_CHACHA20_POLY1305_SHA256");
        b.a(bVar, "TLS_AES_128_CCM_SHA256");
        b.a(bVar, "TLS_AES_128_CCM_8_SHA256");
    }

    public h(String str) {
        this.f14468a = str;
    }

    public final String toString() {
        return this.f14468a;
    }
}
