package l8;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import l8.p;

/* loaded from: classes2.dex */
public final class a0<K, V> extends p<Map<K, V>> {

    /* renamed from: c, reason: collision with root package name */
    public static final a f9453c = new a();

    /* renamed from: a, reason: collision with root package name */
    public final p<K> f9454a;

    /* renamed from: b, reason: collision with root package name */
    public final p<V> f9455b;

    public class a implements p.a {
        @Override // l8.p.a
        public final p<?> a(Type type, Set<? extends Annotation> set, b0 b0Var) {
            Class<?> clsC;
            Type[] actualTypeArguments;
            if (!set.isEmpty() || (clsC = d0.c(type)) != Map.class) {
                return null;
            }
            if (type == Properties.class) {
                actualTypeArguments = new Type[]{String.class, String.class};
            } else {
                if (!Map.class.isAssignableFrom(clsC)) {
                    throw new IllegalArgumentException();
                }
                Type typeE = m8.a.e(type, clsC, m8.a.c(type, clsC, Map.class));
                actualTypeArguments = typeE instanceof ParameterizedType ? ((ParameterizedType) typeE).getActualTypeArguments() : new Type[]{Object.class, Object.class};
            }
            return new m(new a0(b0Var, actualTypeArguments[0], actualTypeArguments[1]));
        }
    }

    public a0(b0 b0Var, Type type, Type type2) {
        this.f9454a = b0Var.a(type);
        this.f9455b = b0Var.a(type2);
    }

    @Override // l8.p
    public final Object a(u uVar) throws IOException {
        z zVar = new z();
        uVar.b();
        while (uVar.e()) {
            v vVar = (v) uVar;
            if (vVar.e()) {
                vVar.f9537m = vVar.B();
                vVar.f9534j = 11;
            }
            K kA = this.f9454a.a(uVar);
            V vA = this.f9455b.a(uVar);
            Object objPut = zVar.put(kA, vA);
            if (objPut != null) {
                throw new r("Map key '" + kA + "' has multiple values at path " + uVar.getPath() + ": " + objPut + " and " + vA);
            }
        }
        uVar.d();
        return zVar;
    }

    @Override // l8.p
    public final void c(y yVar, Object obj) throws IOException {
        yVar.b();
        for (Map.Entry<K, V> entry : ((Map) obj).entrySet()) {
            if (entry.getKey() == null) {
                throw new r("Map key is null at " + yVar.getPath());
            }
            int i10 = yVar.i();
            if (i10 != 5 && i10 != 3) {
                throw new IllegalStateException("Nesting problem.");
            }
            yVar.f9548g = true;
            this.f9454a.c(yVar, entry.getKey());
            this.f9455b.c(yVar, entry.getValue());
        }
        yVar.e();
    }

    public final String toString() {
        return "JsonAdapter(" + this.f9454a + "=" + this.f9455b + ")";
    }
}
