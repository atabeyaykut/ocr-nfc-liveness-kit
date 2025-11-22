package ha;

import c5.y;
import java.io.IOException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import m9.t;
import org.bouncycastle.asn1.eac.CertificateBody;

/* loaded from: classes2.dex */
public final class c {

    public static final class a extends kotlin.jvm.internal.j implements x9.a<Integer> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Map<String, Object> f7041a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Map<String, ? extends Object> map) {
            super(0);
            this.f7041a = map;
        }

        @Override // x9.a
        public final Integer invoke() {
            Iterator<T> it = this.f7041a.entrySet().iterator();
            int r12 = 0;
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                r12 += (value instanceof boolean[] ? Arrays.hashCode((boolean[]) value) : value instanceof char[] ? Arrays.hashCode((char[]) value) : value instanceof byte[] ? Arrays.hashCode((byte[]) value) : value instanceof short[] ? Arrays.hashCode((short[]) value) : value instanceof int[] ? Arrays.hashCode((int[]) value) : value instanceof float[] ? Arrays.hashCode((float[]) value) : value instanceof long[] ? Arrays.hashCode((long[]) value) : value instanceof double[] ? Arrays.hashCode((double[]) value) : value instanceof Object[] ? Arrays.hashCode((Object[]) value) : value.hashCode()) ^ (str.hashCode() * CertificateBody.profileType);
            }
            return Integer.valueOf(r12);
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.a<String> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Class<T> f7042a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Map<String, Object> f7043b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Class<T> cls, Map<String, ? extends Object> map) {
            super(0);
            this.f7042a = cls;
            this.f7043b = map;
        }

        @Override // x9.a
        public final String invoke() throws IOException {
            StringBuilder sb2 = new StringBuilder();
            sb2.append('@');
            sb2.append(this.f7042a.getCanonicalName());
            t.f1(this.f7043b.entrySet(), sb2, ", ", "(", ")", d.f7044a, 48);
            String string = sb2.toString();
            kotlin.jvm.internal.h.e(string, "StringBuilder().apply(builderAction).toString()");
            return string;
        }
    }

    public static final <T> T a(Class<T> annotationClass, Map<String, ? extends Object> map, List<Method> methods) {
        kotlin.jvm.internal.h.f(annotationClass, "annotationClass");
        kotlin.jvm.internal.h.f(methods, "methods");
        l9.j jVarW = y.w(new a(map));
        T t10 = (T) Proxy.newProxyInstance(annotationClass.getClassLoader(), new Class[]{annotationClass}, new ha.b(annotationClass, map, y.w(new b(annotationClass, map)), jVarW, methods));
        kotlin.jvm.internal.h.d(t10, "null cannot be cast to non-null type T of kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt.createAnnotationInstance");
        return t10;
    }
}
