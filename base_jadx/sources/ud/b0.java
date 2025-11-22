package ud;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.LinkedHashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class b0 {

    /* renamed from: a, reason: collision with root package name */
    public final Method f17959a;

    /* renamed from: b, reason: collision with root package name */
    public final rc.r f17960b;

    /* renamed from: c, reason: collision with root package name */
    public final String f17961c;

    /* renamed from: d, reason: collision with root package name */
    public final String f17962d;

    /* renamed from: e, reason: collision with root package name */
    public final rc.q f17963e;
    public final rc.t f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f17964g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f17965h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f17966i;

    /* renamed from: j, reason: collision with root package name */
    public final y<?>[] f17967j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f17968k;

    public static final class a {

        /* renamed from: x, reason: collision with root package name */
        public static final Pattern f17969x = Pattern.compile("\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}");

        /* renamed from: y, reason: collision with root package name */
        public static final Pattern f17970y = Pattern.compile("[a-zA-Z][a-zA-Z0-9_-]*");

        /* renamed from: a, reason: collision with root package name */
        public final d0 f17971a;

        /* renamed from: b, reason: collision with root package name */
        public final Method f17972b;

        /* renamed from: c, reason: collision with root package name */
        public final Annotation[] f17973c;

        /* renamed from: d, reason: collision with root package name */
        public final Annotation[][] f17974d;

        /* renamed from: e, reason: collision with root package name */
        public final Type[] f17975e;
        public boolean f;

        /* renamed from: g, reason: collision with root package name */
        public boolean f17976g;

        /* renamed from: h, reason: collision with root package name */
        public boolean f17977h;

        /* renamed from: i, reason: collision with root package name */
        public boolean f17978i;

        /* renamed from: j, reason: collision with root package name */
        public boolean f17979j;

        /* renamed from: k, reason: collision with root package name */
        public boolean f17980k;

        /* renamed from: l, reason: collision with root package name */
        public boolean f17981l;

        /* renamed from: m, reason: collision with root package name */
        public boolean f17982m;

        /* renamed from: n, reason: collision with root package name */
        public String f17983n;

        /* renamed from: o, reason: collision with root package name */
        public boolean f17984o;

        /* renamed from: p, reason: collision with root package name */
        public boolean f17985p;

        /* renamed from: q, reason: collision with root package name */
        public boolean f17986q;

        /* renamed from: r, reason: collision with root package name */
        public String f17987r;

        /* renamed from: s, reason: collision with root package name */
        public rc.q f17988s;

        /* renamed from: t, reason: collision with root package name */
        public rc.t f17989t;

        /* renamed from: u, reason: collision with root package name */
        public LinkedHashSet f17990u;

        /* renamed from: v, reason: collision with root package name */
        public y<?>[] f17991v;
        public boolean w;

        public a(d0 d0Var, Method method) {
            this.f17971a = d0Var;
            this.f17972b = method;
            this.f17973c = method.getAnnotations();
            this.f17975e = method.getGenericParameterTypes();
            this.f17974d = method.getParameterAnnotations();
        }

        public static Class<?> a(Class<?> cls) {
            return Boolean.TYPE == cls ? Boolean.class : Byte.TYPE == cls ? Byte.class : Character.TYPE == cls ? Character.class : Double.TYPE == cls ? Double.class : Float.TYPE == cls ? Float.class : Integer.TYPE == cls ? Integer.class : Long.TYPE == cls ? Long.class : Short.TYPE == cls ? Short.class : cls;
        }

        public final void b(String str, String str2, boolean z10) {
            String str3 = this.f17983n;
            Method method = this.f17972b;
            if (str3 != null) {
                throw h0.j(method, null, "Only one HTTP method is allowed. Found: %s and %s.", str3, str);
            }
            this.f17983n = str;
            this.f17984o = z10;
            if (str2.isEmpty()) {
                return;
            }
            int r6 = str2.indexOf(63);
            Pattern pattern = f17969x;
            if (r6 != -1 && r6 < str2.length() - 1) {
                String strSubstring = str2.substring(r6 + 1);
                if (pattern.matcher(strSubstring).find()) {
                    throw h0.j(method, null, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query.", strSubstring);
                }
            }
            this.f17987r = str2;
            Matcher matcher = pattern.matcher(str2);
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            while (matcher.find()) {
                linkedHashSet.add(matcher.group(1));
            }
            this.f17990u = linkedHashSet;
        }

        public final void c(int r32, Type type) {
            if (h0.h(type)) {
                throw h0.k(this.f17972b, r32, "Parameter type must not include a type variable or wildcard: %s", type);
            }
        }
    }

    public b0(a aVar) {
        this.f17959a = aVar.f17972b;
        this.f17960b = aVar.f17971a.f17996c;
        this.f17961c = aVar.f17983n;
        this.f17962d = aVar.f17987r;
        this.f17963e = aVar.f17988s;
        this.f = aVar.f17989t;
        this.f17964g = aVar.f17984o;
        this.f17965h = aVar.f17985p;
        this.f17966i = aVar.f17986q;
        this.f17967j = aVar.f17991v;
        this.f17968k = aVar.w;
    }
}
