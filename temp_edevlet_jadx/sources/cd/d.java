package cd;

import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import kotlin.jvm.internal.h;
import m9.v;

/* loaded from: classes2.dex */
public final class d implements HostnameVerifier {

    /* renamed from: a, reason: collision with root package name */
    public static final d f2381a = new d();

    public static List a(X509Certificate x509Certificate, int r6) throws CertificateParsingException {
        Object obj;
        v vVar = v.f10173a;
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames != null) {
                ArrayList arrayList = new ArrayList();
                for (List<?> list : subjectAlternativeNames) {
                    if (list != null && list.size() >= 2 && !(!h.a(list.get(0), Integer.valueOf(r6))) && (obj = list.get(1)) != null) {
                        arrayList.add((String) obj);
                    }
                }
                return arrayList;
            }
        } catch (CertificateParsingException unused) {
        }
        return vVar;
    }

    public static boolean b(String str) {
        int r6;
        int length = str.length();
        int length2 = str.length();
        if (!(length2 >= 0)) {
            throw new IllegalArgumentException(androidx.appcompat.graphics.drawable.a.f("endIndex < beginIndex: ", length2, " < 0").toString());
        }
        if (!(length2 <= str.length())) {
            StringBuilder sbE = androidx.appcompat.widget.v.e("endIndex > string.length: ", length2, " > ");
            sbE.append(str.length());
            throw new IllegalArgumentException(sbE.toString().toString());
        }
        long j10 = 0;
        int r52 = 0;
        while (r52 < length2) {
            char cCharAt = str.charAt(r52);
            if (cCharAt < 128) {
                j10++;
            } else {
                if (cCharAt < 2048) {
                    r6 = 2;
                } else if (cCharAt < 55296 || cCharAt > 57343) {
                    r6 = 3;
                } else {
                    int r10 = r52 + 1;
                    char cCharAt2 = r10 < length2 ? str.charAt(r10) : (char) 0;
                    if (cCharAt > 56319 || cCharAt2 < 56320 || cCharAt2 > 57343) {
                        j10++;
                        r52 = r10;
                    } else {
                        j10 += 4;
                        r52 += 2;
                    }
                }
                j10 += r6;
            }
            r52++;
        }
        return length == ((int) j10);
    }

    /* JADX WARN: Removed duplicated region for block: B:81:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0141 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:? A[LOOP:1: B:24:0x0077->B:93:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean c(java.lang.String r11, java.security.cert.X509Certificate r12) throws java.security.cert.CertificateParsingException {
        /*
            Method dump skipped, instructions count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cd.d.c(java.lang.String, java.security.cert.X509Certificate):boolean");
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String host, SSLSession session) {
        h.f(host, "host");
        h.f(session, "session");
        if (!b(host)) {
            return false;
        }
        try {
            Certificate certificate = session.getPeerCertificates()[0];
            if (certificate != null) {
                return c(host, (X509Certificate) certificate);
            }
            throw new NullPointerException("null cannot be cast to non-null type java.security.cert.X509Certificate");
        } catch (SSLException unused) {
            return false;
        }
    }
}
