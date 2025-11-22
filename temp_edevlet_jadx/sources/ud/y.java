package ud;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.Objects;
import rc.q;
import rc.u;
import ud.a;

/* loaded from: classes2.dex */
public abstract class y<T> {

    public static final class a<T> extends y<T> {

        /* renamed from: a, reason: collision with root package name */
        public final Method f18073a;

        /* renamed from: b, reason: collision with root package name */
        public final int f18074b;

        /* renamed from: c, reason: collision with root package name */
        public final ud.f<T, rc.a0> f18075c;

        public a(Method method, int r22, ud.f<T, rc.a0> fVar) {
            this.f18073a = method;
            this.f18074b = r22;
            this.f18075c = fVar;
        }

        @Override // ud.y
        public final void a(a0 a0Var, T t10) {
            int r12 = this.f18074b;
            Method method = this.f18073a;
            if (t10 == null) {
                throw h0.k(method, r12, "Body parameter value must not be null.", new Object[0]);
            }
            try {
                a0Var.f17956k = this.f18075c.a(t10);
            } catch (IOException e10) {
                throw h0.l(method, e10, r12, "Unable to convert " + t10 + " to RequestBody", new Object[0]);
            }
        }
    }

    public static final class b<T> extends y<T> {

        /* renamed from: a, reason: collision with root package name */
        public final String f18076a;

        /* renamed from: b, reason: collision with root package name */
        public final ud.f<T, String> f18077b;

        /* renamed from: c, reason: collision with root package name */
        public final boolean f18078c;

        public b(String str, boolean z10) {
            a.d dVar = a.d.f17942a;
            Objects.requireNonNull(str, "name == null");
            this.f18076a = str;
            this.f18077b = dVar;
            this.f18078c = z10;
        }

        @Override // ud.y
        public final void a(a0 a0Var, T t10) throws IOException {
            String strA;
            if (t10 == null || (strA = this.f18077b.a(t10)) == null) {
                return;
            }
            a0Var.a(this.f18076a, strA, this.f18078c);
        }
    }

    public static final class c<T> extends y<Map<String, T>> {

        /* renamed from: a, reason: collision with root package name */
        public final Method f18079a;

        /* renamed from: b, reason: collision with root package name */
        public final int f18080b;

        /* renamed from: c, reason: collision with root package name */
        public final boolean f18081c;

        public c(Method method, int r22, boolean z10) {
            this.f18079a = method;
            this.f18080b = r22;
            this.f18081c = z10;
        }

        @Override // ud.y
        public final void a(a0 a0Var, Object obj) throws IOException {
            Map map = (Map) obj;
            int r12 = this.f18080b;
            Method method = this.f18079a;
            if (map == null) {
                throw h0.k(method, r12, "Field map was null.", new Object[0]);
            }
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw h0.k(method, r12, "Field map contained null key.", new Object[0]);
                }
                Object value = entry.getValue();
                if (value == null) {
                    throw h0.k(method, r12, androidx.browser.browseractions.a.a("Field map contained null value for key '", str, "'."), new Object[0]);
                }
                String string = value.toString();
                if (string == null) {
                    throw h0.k(method, r12, "Field map value '" + value + "' converted to null by " + a.d.class.getName() + " for key '" + str + "'.", new Object[0]);
                }
                a0Var.a(str, string, this.f18081c);
            }
        }
    }

    public static final class d<T> extends y<T> {

        /* renamed from: a, reason: collision with root package name */
        public final String f18082a;

        /* renamed from: b, reason: collision with root package name */
        public final ud.f<T, String> f18083b;

        public d(String str) {
            a.d dVar = a.d.f17942a;
            Objects.requireNonNull(str, "name == null");
            this.f18082a = str;
            this.f18083b = dVar;
        }

        @Override // ud.y
        public final void a(a0 a0Var, T t10) throws IOException {
            String strA;
            if (t10 == null || (strA = this.f18083b.a(t10)) == null) {
                return;
            }
            a0Var.b(this.f18082a, strA);
        }
    }

    public static final class e<T> extends y<Map<String, T>> {

        /* renamed from: a, reason: collision with root package name */
        public final Method f18084a;

        /* renamed from: b, reason: collision with root package name */
        public final int f18085b;

        public e(Method method, int r22) {
            this.f18084a = method;
            this.f18085b = r22;
        }

        @Override // ud.y
        public final void a(a0 a0Var, Object obj) throws IOException {
            Map map = (Map) obj;
            int r12 = this.f18085b;
            Method method = this.f18084a;
            if (map == null) {
                throw h0.k(method, r12, "Header map was null.", new Object[0]);
            }
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw h0.k(method, r12, "Header map contained null key.", new Object[0]);
                }
                Object value = entry.getValue();
                if (value == null) {
                    throw h0.k(method, r12, androidx.browser.browseractions.a.a("Header map contained null value for key '", str, "'."), new Object[0]);
                }
                a0Var.b(str, value.toString());
            }
        }
    }

    public static final class f extends y<rc.q> {

        /* renamed from: a, reason: collision with root package name */
        public final Method f18086a;

        /* renamed from: b, reason: collision with root package name */
        public final int f18087b;

        public f(int r12, Method method) {
            this.f18086a = method;
            this.f18087b = r12;
        }

        @Override // ud.y
        public final void a(a0 a0Var, rc.q qVar) throws IOException {
            rc.q qVar2 = qVar;
            if (qVar2 == null) {
                int r6 = this.f18087b;
                throw h0.k(this.f18086a, r6, "Headers parameter must not be null.", new Object[0]);
            }
            q.a aVar = a0Var.f;
            aVar.getClass();
            int length = qVar2.f14512a.length / 2;
            for (int r02 = 0; r02 < length; r02++) {
                aVar.b(qVar2.o(r02), qVar2.w(r02));
            }
        }
    }

    public static final class g<T> extends y<T> {

        /* renamed from: a, reason: collision with root package name */
        public final Method f18088a;

        /* renamed from: b, reason: collision with root package name */
        public final int f18089b;

        /* renamed from: c, reason: collision with root package name */
        public final rc.q f18090c;

        /* renamed from: d, reason: collision with root package name */
        public final ud.f<T, rc.a0> f18091d;

        public g(Method method, int r22, rc.q qVar, ud.f<T, rc.a0> fVar) {
            this.f18088a = method;
            this.f18089b = r22;
            this.f18090c = qVar;
            this.f18091d = fVar;
        }

        @Override // ud.y
        public final void a(a0 a0Var, T t10) {
            if (t10 == null) {
                return;
            }
            try {
                a0Var.c(this.f18090c, this.f18091d.a(t10));
            } catch (IOException e10) {
                throw h0.k(this.f18088a, this.f18089b, "Unable to convert " + t10 + " to RequestBody", e10);
            }
        }
    }

    public static final class h<T> extends y<Map<String, T>> {

        /* renamed from: a, reason: collision with root package name */
        public final Method f18092a;

        /* renamed from: b, reason: collision with root package name */
        public final int f18093b;

        /* renamed from: c, reason: collision with root package name */
        public final ud.f<T, rc.a0> f18094c;

        /* renamed from: d, reason: collision with root package name */
        public final String f18095d;

        public h(Method method, int r22, ud.f<T, rc.a0> fVar, String str) {
            this.f18092a = method;
            this.f18093b = r22;
            this.f18094c = fVar;
            this.f18095d = str;
        }

        @Override // ud.y
        public final void a(a0 a0Var, Object obj) throws IOException {
            Map map = (Map) obj;
            int r02 = this.f18093b;
            Method method = this.f18092a;
            if (map == null) {
                throw h0.k(method, r02, "Part map was null.", new Object[0]);
            }
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw h0.k(method, r02, "Part map contained null key.", new Object[0]);
                }
                Object value = entry.getValue();
                if (value == null) {
                    throw h0.k(method, r02, androidx.browser.browseractions.a.a("Part map contained null value for key '", str, "'."), new Object[0]);
                }
                String[] strArr = {"Content-Disposition", androidx.browser.browseractions.a.a("form-data; name=\"", str, "\""), "Content-Transfer-Encoding", this.f18095d};
                rc.q.f14511b.getClass();
                a0Var.c(q.b.c(strArr), (rc.a0) this.f18094c.a(value));
            }
        }
    }

    public static final class i<T> extends y<T> {

        /* renamed from: a, reason: collision with root package name */
        public final Method f18096a;

        /* renamed from: b, reason: collision with root package name */
        public final int f18097b;

        /* renamed from: c, reason: collision with root package name */
        public final String f18098c;

        /* renamed from: d, reason: collision with root package name */
        public final ud.f<T, String> f18099d;

        /* renamed from: e, reason: collision with root package name */
        public final boolean f18100e;

        public i(Method method, int r32, String str, boolean z10) {
            a.d dVar = a.d.f17942a;
            this.f18096a = method;
            this.f18097b = r32;
            Objects.requireNonNull(str, "name == null");
            this.f18098c = str;
            this.f18099d = dVar;
            this.f18100e = z10;
        }

        /* JADX WARN: Removed duplicated region for block: B:52:0x00e2  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x00e5  */
        @Override // ud.y
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a(ud.a0 r18, T r19) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 266
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: ud.y.i.a(ud.a0, java.lang.Object):void");
        }
    }

    public static final class j<T> extends y<T> {

        /* renamed from: a, reason: collision with root package name */
        public final String f18101a;

        /* renamed from: b, reason: collision with root package name */
        public final ud.f<T, String> f18102b;

        /* renamed from: c, reason: collision with root package name */
        public final boolean f18103c;

        public j(String str, boolean z10) {
            a.d dVar = a.d.f17942a;
            Objects.requireNonNull(str, "name == null");
            this.f18101a = str;
            this.f18102b = dVar;
            this.f18103c = z10;
        }

        @Override // ud.y
        public final void a(a0 a0Var, T t10) throws IOException {
            String strA;
            if (t10 == null || (strA = this.f18102b.a(t10)) == null) {
                return;
            }
            a0Var.d(this.f18101a, strA, this.f18103c);
        }
    }

    public static final class k<T> extends y<Map<String, T>> {

        /* renamed from: a, reason: collision with root package name */
        public final Method f18104a;

        /* renamed from: b, reason: collision with root package name */
        public final int f18105b;

        /* renamed from: c, reason: collision with root package name */
        public final boolean f18106c;

        public k(Method method, int r22, boolean z10) {
            this.f18104a = method;
            this.f18105b = r22;
            this.f18106c = z10;
        }

        @Override // ud.y
        public final void a(a0 a0Var, Object obj) throws IOException {
            Map map = (Map) obj;
            int r12 = this.f18105b;
            Method method = this.f18104a;
            if (map == null) {
                throw h0.k(method, r12, "Query map was null", new Object[0]);
            }
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw h0.k(method, r12, "Query map contained null key.", new Object[0]);
                }
                Object value = entry.getValue();
                if (value == null) {
                    throw h0.k(method, r12, androidx.browser.browseractions.a.a("Query map contained null value for key '", str, "'."), new Object[0]);
                }
                String string = value.toString();
                if (string == null) {
                    throw h0.k(method, r12, "Query map value '" + value + "' converted to null by " + a.d.class.getName() + " for key '" + str + "'.", new Object[0]);
                }
                a0Var.d(str, string, this.f18106c);
            }
        }
    }

    public static final class l<T> extends y<T> {

        /* renamed from: a, reason: collision with root package name */
        public final boolean f18107a;

        public l(boolean z10) {
            this.f18107a = z10;
        }

        @Override // ud.y
        public final void a(a0 a0Var, T t10) throws IOException {
            if (t10 == null) {
                return;
            }
            a0Var.d(t10.toString(), null, this.f18107a);
        }
    }

    public static final class m extends y<u.b> {

        /* renamed from: a, reason: collision with root package name */
        public static final m f18108a = new m();

        @Override // ud.y
        public final void a(a0 a0Var, u.b bVar) throws IOException {
            u.b bVar2 = bVar;
            if (bVar2 != null) {
                u.a aVar = a0Var.f17954i;
                aVar.getClass();
                aVar.f14547c.add(bVar2);
            }
        }
    }

    public static final class n extends y<Object> {

        /* renamed from: a, reason: collision with root package name */
        public final Method f18109a;

        /* renamed from: b, reason: collision with root package name */
        public final int f18110b;

        public n(int r12, Method method) {
            this.f18109a = method;
            this.f18110b = r12;
        }

        @Override // ud.y
        public final void a(a0 a0Var, Object obj) {
            if (obj != null) {
                a0Var.f17949c = obj.toString();
            } else {
                int r42 = this.f18110b;
                throw h0.k(this.f18109a, r42, "@Url parameter is null.", new Object[0]);
            }
        }
    }

    public static final class o<T> extends y<T> {

        /* renamed from: a, reason: collision with root package name */
        public final Class<T> f18111a;

        public o(Class<T> cls) {
            this.f18111a = cls;
        }

        @Override // ud.y
        public final void a(a0 a0Var, T t10) {
            a0Var.f17951e.e(this.f18111a, t10);
        }
    }

    public abstract void a(a0 a0Var, T t10) throws IOException;
}
