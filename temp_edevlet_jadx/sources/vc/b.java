package vc;

import java.io.IOException;
import java.net.UnknownServiceException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;
import rc.h;
import rc.i;

/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public int f18471a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f18472b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f18473c;

    /* renamed from: d, reason: collision with root package name */
    public final List<rc.i> f18474d;

    public b(List<rc.i> connectionSpecs) {
        kotlin.jvm.internal.h.f(connectionSpecs, "connectionSpecs");
        this.f18474d = connectionSpecs;
    }

    public final rc.i a(SSLSocket sSLSocket) throws IOException, CloneNotSupportedException {
        rc.i iVar;
        boolean z10;
        String[] cipherSuitesIntersection;
        String[] tlsVersionsIntersection;
        int r02 = this.f18471a;
        List<rc.i> list = this.f18474d;
        int size = list.size();
        while (true) {
            if (r02 >= size) {
                iVar = null;
                break;
            }
            iVar = list.get(r02);
            if (iVar.b(sSLSocket)) {
                this.f18471a = r02 + 1;
                break;
            }
            r02++;
        }
        if (iVar == null) {
            StringBuilder sb2 = new StringBuilder("Unable to find acceptable protocols. isFallback=");
            sb2.append(this.f18473c);
            sb2.append(", modes=");
            sb2.append(list);
            sb2.append(", supported protocols=");
            String[] enabledProtocols = sSLSocket.getEnabledProtocols();
            kotlin.jvm.internal.h.c(enabledProtocols);
            String string = Arrays.toString(enabledProtocols);
            kotlin.jvm.internal.h.e(string, "java.util.Arrays.toString(this)");
            sb2.append(string);
            throw new UnknownServiceException(sb2.toString());
        }
        int r03 = this.f18471a;
        int size2 = list.size();
        while (true) {
            if (r03 >= size2) {
                z10 = false;
                break;
            }
            if (list.get(r03).b(sSLSocket)) {
                z10 = true;
                break;
            }
            r03++;
        }
        this.f18472b = z10;
        boolean z11 = this.f18473c;
        String[] strArr = iVar.f14472c;
        if (strArr != null) {
            String[] enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
            kotlin.jvm.internal.h.e(enabledCipherSuites, "sslSocket.enabledCipherSuites");
            rc.h.f14467t.getClass();
            cipherSuitesIntersection = sc.c.o(enabledCipherSuites, strArr, rc.h.f14450b);
        } else {
            cipherSuitesIntersection = sSLSocket.getEnabledCipherSuites();
        }
        String[] strArr2 = iVar.f14473d;
        if (strArr2 != null) {
            String[] enabledProtocols2 = sSLSocket.getEnabledProtocols();
            kotlin.jvm.internal.h.e(enabledProtocols2, "sslSocket.enabledProtocols");
            tlsVersionsIntersection = sc.c.o(enabledProtocols2, strArr2, o9.a.f11262a);
        } else {
            tlsVersionsIntersection = sSLSocket.getEnabledProtocols();
        }
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        kotlin.jvm.internal.h.e(supportedCipherSuites, "supportedCipherSuites");
        rc.h.f14467t.getClass();
        h.a comparator = rc.h.f14450b;
        byte[] bArr = sc.c.f15380a;
        kotlin.jvm.internal.h.f(comparator, "comparator");
        int length = supportedCipherSuites.length;
        int r92 = 0;
        while (true) {
            if (r92 >= length) {
                r92 = -1;
                break;
            }
            if (comparator.compare(supportedCipherSuites[r92], "TLS_FALLBACK_SCSV") == 0) {
                break;
            }
            r92++;
        }
        if (z11 && r92 != -1) {
            kotlin.jvm.internal.h.e(cipherSuitesIntersection, "cipherSuitesIntersection");
            String str = supportedCipherSuites[r92];
            kotlin.jvm.internal.h.e(str, "supportedCipherSuites[indexOfFallbackScsv]");
            Object[] objArrCopyOf = Arrays.copyOf(cipherSuitesIntersection, cipherSuitesIntersection.length + 1);
            kotlin.jvm.internal.h.e(objArrCopyOf, "java.util.Arrays.copyOf(this, newSize)");
            cipherSuitesIntersection = (String[]) objArrCopyOf;
            cipherSuitesIntersection[cipherSuitesIntersection.length - 1] = str;
        }
        i.a aVar = new i.a(iVar);
        kotlin.jvm.internal.h.e(cipherSuitesIntersection, "cipherSuitesIntersection");
        aVar.b((String[]) Arrays.copyOf(cipherSuitesIntersection, cipherSuitesIntersection.length));
        kotlin.jvm.internal.h.e(tlsVersionsIntersection, "tlsVersionsIntersection");
        aVar.e((String[]) Arrays.copyOf(tlsVersionsIntersection, tlsVersionsIntersection.length));
        rc.i iVarA = aVar.a();
        if (iVarA.c() != null) {
            sSLSocket.setEnabledProtocols(iVarA.f14473d);
        }
        if (iVarA.a() != null) {
            sSLSocket.setEnabledCipherSuites(iVarA.f14472c);
        }
        return iVar;
    }
}
