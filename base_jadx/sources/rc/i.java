package rc;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import javax.net.ssl.SSLSocket;
import rc.f0;

/* loaded from: classes2.dex */
public final class i {

    /* renamed from: e, reason: collision with root package name */
    public static final i f14469e;
    public static final i f;

    /* renamed from: a, reason: collision with root package name */
    public final boolean f14470a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f14471b;

    /* renamed from: c, reason: collision with root package name */
    public final String[] f14472c;

    /* renamed from: d, reason: collision with root package name */
    public final String[] f14473d;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final boolean f14474a;

        /* renamed from: b, reason: collision with root package name */
        public String[] f14475b;

        /* renamed from: c, reason: collision with root package name */
        public String[] f14476c;

        /* renamed from: d, reason: collision with root package name */
        public boolean f14477d;

        public a() {
            this.f14474a = true;
        }

        public a(i iVar) {
            this.f14474a = iVar.f14470a;
            this.f14475b = iVar.f14472c;
            this.f14476c = iVar.f14473d;
            this.f14477d = iVar.f14471b;
        }

        public final i a() {
            return new i(this.f14474a, this.f14477d, this.f14475b, this.f14476c);
        }

        public final void b(String... cipherSuites) throws CloneNotSupportedException {
            kotlin.jvm.internal.h.f(cipherSuites, "cipherSuites");
            if (!this.f14474a) {
                throw new IllegalArgumentException("no cipher suites for cleartext connections".toString());
            }
            if (!(!(cipherSuites.length == 0))) {
                throw new IllegalArgumentException("At least one cipher suite is required".toString());
            }
            Object objClone = cipherSuites.clone();
            if (objClone == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.String>");
            }
            this.f14475b = (String[]) objClone;
        }

        public final void c(h... cipherSuites) throws CloneNotSupportedException {
            kotlin.jvm.internal.h.f(cipherSuites, "cipherSuites");
            if (!this.f14474a) {
                throw new IllegalArgumentException("no cipher suites for cleartext connections".toString());
            }
            ArrayList arrayList = new ArrayList(cipherSuites.length);
            for (h hVar : cipherSuites) {
                arrayList.add(hVar.f14468a);
            }
            Object[] array = arrayList.toArray(new String[0]);
            if (array == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            String[] strArr = (String[]) array;
            b((String[]) Arrays.copyOf(strArr, strArr.length));
        }

        public final void d() {
            if (!this.f14474a) {
                throw new IllegalArgumentException("no TLS extensions for cleartext connections".toString());
            }
            this.f14477d = true;
        }

        public final void e(String... tlsVersions) throws CloneNotSupportedException {
            kotlin.jvm.internal.h.f(tlsVersions, "tlsVersions");
            if (!this.f14474a) {
                throw new IllegalArgumentException("no TLS versions for cleartext connections".toString());
            }
            if (!(!(tlsVersions.length == 0))) {
                throw new IllegalArgumentException("At least one TLS version is required".toString());
            }
            Object objClone = tlsVersions.clone();
            if (objClone == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.String>");
            }
            this.f14476c = (String[]) objClone;
        }

        public final void f(f0... f0VarArr) throws CloneNotSupportedException {
            if (!this.f14474a) {
                throw new IllegalArgumentException("no TLS versions for cleartext connections".toString());
            }
            ArrayList arrayList = new ArrayList(f0VarArr.length);
            for (f0 f0Var : f0VarArr) {
                arrayList.add(f0Var.f14446a);
            }
            Object[] array = arrayList.toArray(new String[0]);
            if (array == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            String[] strArr = (String[]) array;
            e((String[]) Arrays.copyOf(strArr, strArr.length));
        }
    }

    static {
        h hVar = h.f14464q;
        h hVar2 = h.f14465r;
        h hVar3 = h.f14466s;
        h hVar4 = h.f14458k;
        h hVar5 = h.f14460m;
        h hVar6 = h.f14459l;
        h hVar7 = h.f14461n;
        h hVar8 = h.f14463p;
        h hVar9 = h.f14462o;
        h[] hVarArr = {hVar, hVar2, hVar3, hVar4, hVar5, hVar6, hVar7, hVar8, hVar9};
        h[] hVarArr2 = {hVar, hVar2, hVar3, hVar4, hVar5, hVar6, hVar7, hVar8, hVar9, h.f14456i, h.f14457j, h.f14454g, h.f14455h, h.f14453e, h.f, h.f14452d};
        a aVar = new a();
        aVar.c((h[]) Arrays.copyOf(hVarArr, 9));
        f0 f0Var = f0.TLS_1_3;
        f0 f0Var2 = f0.TLS_1_2;
        aVar.f(f0Var, f0Var2);
        aVar.d();
        aVar.a();
        a aVar2 = new a();
        aVar2.c((h[]) Arrays.copyOf(hVarArr2, 16));
        aVar2.f(f0Var, f0Var2);
        aVar2.d();
        f14469e = aVar2.a();
        a aVar3 = new a();
        aVar3.c((h[]) Arrays.copyOf(hVarArr2, 16));
        aVar3.f(f0Var, f0Var2, f0.TLS_1_1, f0.TLS_1_0);
        aVar3.d();
        aVar3.a();
        f = new i(false, false, null, null);
    }

    public i(boolean z10, boolean z11, String[] strArr, String[] strArr2) {
        this.f14470a = z10;
        this.f14471b = z11;
        this.f14472c = strArr;
        this.f14473d = strArr2;
    }

    public final List<h> a() {
        String[] strArr = this.f14472c;
        if (strArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(h.f14467t.b(str));
        }
        return m9.t.v1(arrayList);
    }

    public final boolean b(SSLSocket sSLSocket) {
        if (!this.f14470a) {
            return false;
        }
        String[] strArr = this.f14473d;
        if (strArr != null && !sc.c.i(strArr, sSLSocket.getEnabledProtocols(), o9.a.f11262a)) {
            return false;
        }
        String[] strArr2 = this.f14472c;
        if (strArr2 == null) {
            return true;
        }
        String[] enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
        h.f14467t.getClass();
        return sc.c.i(strArr2, enabledCipherSuites, h.f14450b);
    }

    public final List<f0> c() {
        String[] strArr = this.f14473d;
        if (strArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(f0.a.a(str));
        }
        return m9.t.v1(arrayList);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof i)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        i iVar = (i) obj;
        boolean z10 = iVar.f14470a;
        boolean z11 = this.f14470a;
        if (z11 != z10) {
            return false;
        }
        return !z11 || (Arrays.equals(this.f14472c, iVar.f14472c) && Arrays.equals(this.f14473d, iVar.f14473d) && this.f14471b == iVar.f14471b);
    }

    public final int hashCode() {
        if (!this.f14470a) {
            return 17;
        }
        String[] strArr = this.f14472c;
        int r22 = (527 + (strArr != null ? Arrays.hashCode(strArr) : 0)) * 31;
        String[] strArr2 = this.f14473d;
        return ((r22 + (strArr2 != null ? Arrays.hashCode(strArr2) : 0)) * 31) + (!this.f14471b ? 1 : 0);
    }

    public final String toString() {
        if (!this.f14470a) {
            return "ConnectionSpec()";
        }
        StringBuilder sb2 = new StringBuilder("ConnectionSpec(cipherSuites=");
        sb2.append(Objects.toString(a(), "[all enabled]"));
        sb2.append(", tlsVersions=");
        sb2.append(Objects.toString(c(), "[all enabled]"));
        sb2.append(", supportsTlsExtensions=");
        return androidx.browser.browseractions.b.f(sb2, this.f14471b, ')');
    }
}
