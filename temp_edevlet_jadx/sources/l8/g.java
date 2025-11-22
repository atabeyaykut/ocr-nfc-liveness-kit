package l8;

import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.TreeMap;
import l8.p;
import l8.u;

/* loaded from: classes2.dex */
public final class g<T> extends p<T> {

    /* renamed from: d, reason: collision with root package name */
    public static final a f9497d = new a();

    /* renamed from: a, reason: collision with root package name */
    public final f<T> f9498a;

    /* renamed from: b, reason: collision with root package name */
    public final b<?>[] f9499b;

    /* renamed from: c, reason: collision with root package name */
    public final u.a f9500c;

    public class a implements p.a {
        /* JADX WARN: Removed duplicated region for block: B:67:0x0135  */
        @Override // l8.p.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final l8.p<?> a(java.lang.reflect.Type r18, java.util.Set<? extends java.lang.annotation.Annotation> r19, l8.b0 r20) throws java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.ClassNotFoundException {
            /*
                Method dump skipped, instructions count: 627
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: l8.g.a.a(java.lang.reflect.Type, java.util.Set, l8.b0):l8.p");
        }
    }

    public static class b<T> {

        /* renamed from: a, reason: collision with root package name */
        public final String f9501a;

        /* renamed from: b, reason: collision with root package name */
        public final Field f9502b;

        /* renamed from: c, reason: collision with root package name */
        public final p<T> f9503c;

        public b(String str, Field field, p<T> pVar) {
            this.f9501a = str;
            this.f9502b = field;
            this.f9503c = pVar;
        }
    }

    public g(f fVar, TreeMap treeMap) {
        this.f9498a = fVar;
        this.f9499b = (b[]) treeMap.values().toArray(new b[treeMap.size()]);
        this.f9500c = u.a.a((String[]) treeMap.keySet().toArray(new String[treeMap.size()]));
    }

    @Override // l8.p
    public final T a(u uVar) throws IllegalAccessException, IOException, IllegalArgumentException {
        try {
            T tA = this.f9498a.a();
            try {
                uVar.b();
                while (uVar.e()) {
                    int r12 = uVar.n(this.f9500c);
                    if (r12 == -1) {
                        uVar.o();
                        uVar.p();
                    } else {
                        b<?> bVar = this.f9499b[r12];
                        bVar.f9502b.set(tA, bVar.f9503c.a(uVar));
                    }
                }
                uVar.d();
                return tA;
            } catch (IllegalAccessException unused) {
                throw new AssertionError();
            }
        } catch (IllegalAccessException unused2) {
            throw new AssertionError();
        } catch (InstantiationException e10) {
            throw new RuntimeException(e10);
        } catch (InvocationTargetException e11) {
            m8.a.f(e11);
            throw null;
        }
    }

    @Override // l8.p
    public final void c(y yVar, T t10) throws IllegalAccessException, IOException, IllegalArgumentException {
        try {
            yVar.b();
            for (b<?> bVar : this.f9499b) {
                yVar.f(bVar.f9501a);
                bVar.f9503c.c(yVar, bVar.f9502b.get(t10));
            }
            yVar.e();
        } catch (IllegalAccessException unused) {
            throw new AssertionError();
        }
    }

    public final String toString() {
        return "JsonAdapter(" + this.f9498a + ")";
    }
}
