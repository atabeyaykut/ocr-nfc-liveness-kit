package rc;

import androidx.browser.trusted.sharing.ShareTarget;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import rc.c;
import rc.q;
import rc.r;

/* loaded from: classes2.dex */
public final class x {

    /* renamed from: a, reason: collision with root package name */
    public c f14597a;

    /* renamed from: b, reason: collision with root package name */
    public final r f14598b;

    /* renamed from: c, reason: collision with root package name */
    public final String f14599c;

    /* renamed from: d, reason: collision with root package name */
    public final q f14600d;

    /* renamed from: e, reason: collision with root package name */
    public final a0 f14601e;
    public final Map<Class<?>, Object> f;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public r f14602a;

        /* renamed from: b, reason: collision with root package name */
        public String f14603b;

        /* renamed from: c, reason: collision with root package name */
        public q.a f14604c;

        /* renamed from: d, reason: collision with root package name */
        public a0 f14605d;

        /* renamed from: e, reason: collision with root package name */
        public LinkedHashMap f14606e;

        public a() {
            this.f14606e = new LinkedHashMap();
            this.f14603b = ShareTarget.METHOD_GET;
            this.f14604c = new q.a();
        }

        public a(x xVar) {
            this.f14606e = new LinkedHashMap();
            this.f14602a = xVar.f14598b;
            this.f14603b = xVar.f14599c;
            this.f14605d = xVar.f14601e;
            Map<Class<?>, Object> map = xVar.f;
            this.f14606e = map.isEmpty() ? new LinkedHashMap() : m9.e0.V0(map);
            this.f14604c = xVar.f14600d.u();
        }

        public final x a() {
            Map mapUnmodifiableMap;
            r rVar = this.f14602a;
            if (rVar == null) {
                throw new IllegalStateException("url == null".toString());
            }
            String str = this.f14603b;
            q qVarC = this.f14604c.c();
            a0 a0Var = this.f14605d;
            LinkedHashMap toImmutableMap = this.f14606e;
            byte[] bArr = sc.c.f15380a;
            kotlin.jvm.internal.h.f(toImmutableMap, "$this$toImmutableMap");
            if (toImmutableMap.isEmpty()) {
                mapUnmodifiableMap = m9.w.f10174a;
            } else {
                mapUnmodifiableMap = Collections.unmodifiableMap(new LinkedHashMap(toImmutableMap));
                kotlin.jvm.internal.h.e(mapUnmodifiableMap, "Collections.unmodifiableMap(LinkedHashMap(this))");
            }
            return new x(rVar, str, qVarC, a0Var, mapUnmodifiableMap);
        }

        public final void b(c cacheControl) {
            kotlin.jvm.internal.h.f(cacheControl, "cacheControl");
            String string = cacheControl.toString();
            if (string.length() == 0) {
                this.f14604c.d("Cache-Control");
            } else {
                c("Cache-Control", string);
            }
        }

        public final void c(String str, String value) {
            kotlin.jvm.internal.h.f(value, "value");
            q.a aVar = this.f14604c;
            aVar.getClass();
            q.f14511b.getClass();
            q.b.a(str);
            q.b.b(value, str);
            aVar.d(str);
            aVar.b(str, value);
        }

        public final void d(String method, a0 a0Var) {
            kotlin.jvm.internal.h.f(method, "method");
            if (!(method.length() > 0)) {
                throw new IllegalArgumentException("method.isEmpty() == true".toString());
            }
            if (a0Var == null) {
                if (!(!(kotlin.jvm.internal.h.a(method, ShareTarget.METHOD_POST) || kotlin.jvm.internal.h.a(method, "PUT") || kotlin.jvm.internal.h.a(method, "PATCH") || kotlin.jvm.internal.h.a(method, "PROPPATCH") || kotlin.jvm.internal.h.a(method, "REPORT")))) {
                    throw new IllegalArgumentException(androidx.browser.browseractions.a.a("method ", method, " must have a request body.").toString());
                }
            } else if (!a0.b.o(method)) {
                throw new IllegalArgumentException(androidx.browser.browseractions.a.a("method ", method, " must not have a request body.").toString());
            }
            this.f14603b = method;
            this.f14605d = a0Var;
        }

        public final void e(Class type, Object obj) {
            kotlin.jvm.internal.h.f(type, "type");
            if (obj == null) {
                this.f14606e.remove(type);
                return;
            }
            if (this.f14606e.isEmpty()) {
                this.f14606e = new LinkedHashMap();
            }
            LinkedHashMap linkedHashMap = this.f14606e;
            Object objCast = type.cast(obj);
            kotlin.jvm.internal.h.c(objCast);
            linkedHashMap.put(type, objCast);
        }

        public final void f(String toHttpUrl) {
            String strSubstring;
            String str;
            kotlin.jvm.internal.h.f(toHttpUrl, "url");
            if (!mc.j.D(toHttpUrl, "ws:", true)) {
                if (mc.j.D(toHttpUrl, "wss:", true)) {
                    strSubstring = toHttpUrl.substring(4);
                    kotlin.jvm.internal.h.e(strSubstring, "(this as java.lang.String).substring(startIndex)");
                    str = "https:";
                }
                r.f14515l.getClass();
                kotlin.jvm.internal.h.f(toHttpUrl, "$this$toHttpUrl");
                r.a aVar = new r.a();
                aVar.c(null, toHttpUrl);
                this.f14602a = aVar.a();
            }
            strSubstring = toHttpUrl.substring(3);
            kotlin.jvm.internal.h.e(strSubstring, "(this as java.lang.String).substring(startIndex)");
            str = "http:";
            toHttpUrl = str.concat(strSubstring);
            r.f14515l.getClass();
            kotlin.jvm.internal.h.f(toHttpUrl, "$this$toHttpUrl");
            r.a aVar2 = new r.a();
            aVar2.c(null, toHttpUrl);
            this.f14602a = aVar2.a();
        }
    }

    public x(r rVar, String method, q qVar, a0 a0Var, Map<Class<?>, ? extends Object> map) {
        kotlin.jvm.internal.h.f(method, "method");
        this.f14598b = rVar;
        this.f14599c = method;
        this.f14600d = qVar;
        this.f14601e = a0Var;
        this.f = map;
    }

    public final c a() {
        c cVar = this.f14597a;
        if (cVar != null) {
            return cVar;
        }
        c.f14412p.getClass();
        c cVarA = c.b.a(this.f14600d);
        this.f14597a = cVarA;
        return cVarA;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Request{method=");
        sb2.append(this.f14599c);
        sb2.append(", url=");
        sb2.append(this.f14598b);
        q qVar = this.f14600d;
        if (qVar.f14512a.length / 2 != 0) {
            sb2.append(", headers=[");
            int r22 = 0;
            for (l9.g<? extends String, ? extends String> gVar : qVar) {
                int r42 = r22 + 1;
                if (r22 < 0) {
                    b8.f.k0();
                    throw null;
                }
                l9.g<? extends String, ? extends String> gVar2 = gVar;
                String str = (String) gVar2.f9582a;
                String str2 = (String) gVar2.f9583b;
                if (r22 > 0) {
                    sb2.append(", ");
                }
                sb2.append(str);
                sb2.append(':');
                sb2.append(str2);
                r22 = r42;
            }
            sb2.append(']');
        }
        Map<Class<?>, Object> map = this.f;
        if (!map.isEmpty()) {
            sb2.append(", tags=");
            sb2.append(map);
        }
        sb2.append('}');
        String string = sb2.toString();
        kotlin.jvm.internal.h.e(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
