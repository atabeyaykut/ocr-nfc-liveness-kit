package y0;

import android.util.Log;
import j0.n;
import java.util.HashMap;
import java.util.NavigableMap;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class h implements y0.b {

    /* renamed from: a, reason: collision with root package name */
    public final f<a, Object> f19254a = new f<>();

    /* renamed from: b, reason: collision with root package name */
    public final b f19255b = new b();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f19256c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f19257d = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public final int f19258e;
    public int f;

    public static final class a implements k {

        /* renamed from: a, reason: collision with root package name */
        public final b f19259a;

        /* renamed from: b, reason: collision with root package name */
        public int f19260b;

        /* renamed from: c, reason: collision with root package name */
        public Class<?> f19261c;

        public a(b bVar) {
            this.f19259a = bVar;
        }

        @Override // y0.k
        public final void a() {
            this.f19259a.e(this);
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f19260b == aVar.f19260b && this.f19261c == aVar.f19261c;
        }

        public final int hashCode() {
            int r02 = this.f19260b * 31;
            Class<?> cls = this.f19261c;
            return r02 + (cls != null ? cls.hashCode() : 0);
        }

        public final String toString() {
            return "Key{size=" + this.f19260b + "array=" + this.f19261c + '}';
        }
    }

    public static final class b extends n {
        @Override // j0.n
        public final k a() {
            return new a(this);
        }
    }

    public h(int r22) {
        this.f19258e = r22;
    }

    @Override // y0.b
    public final synchronized void a(int r22) {
        try {
            if (r22 >= 40) {
                b();
            } else if (r22 >= 20 || r22 == 15) {
                f(this.f19258e / 2);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // y0.b
    public final synchronized void b() {
        f(0);
    }

    @Override // y0.b
    public final synchronized Object c(Class cls, int r72) {
        a aVar;
        Integer numCeilingKey = i(cls).ceilingKey(Integer.valueOf(r72));
        boolean z10 = false;
        if (numCeilingKey != null) {
            int r22 = this.f;
            if ((r22 == 0 || this.f19258e / r22 >= 2) || numCeilingKey.intValue() <= r72 * 8) {
                z10 = true;
            }
        }
        if (z10) {
            b bVar = this.f19255b;
            int r02 = numCeilingKey.intValue();
            aVar = (a) bVar.b();
            aVar.f19260b = r02;
            aVar.f19261c = cls;
        } else {
            a aVar2 = (a) this.f19255b.b();
            aVar2.f19260b = r72;
            aVar2.f19261c = cls;
            aVar = aVar2;
        }
        return h(aVar, cls);
    }

    @Override // y0.b
    public final synchronized Object d() {
        a aVar;
        aVar = (a) this.f19255b.b();
        aVar.f19260b = 8;
        aVar.f19261c = byte[].class;
        return h(aVar, byte[].class);
    }

    public final void e(Class cls, int r52) {
        NavigableMap<Integer, Integer> navigableMapI = i(cls);
        Integer num = navigableMapI.get(Integer.valueOf(r52));
        if (num == null) {
            throw new NullPointerException("Tried to decrement empty size, size: " + r52 + ", this: " + this);
        }
        int r12 = num.intValue();
        Integer numValueOf = Integer.valueOf(r52);
        if (r12 == 1) {
            navigableMapI.remove(numValueOf);
        } else {
            navigableMapI.put(numValueOf, Integer.valueOf(num.intValue() - 1));
        }
    }

    public final void f(int r6) {
        while (this.f > r6) {
            Object objC = this.f19254a.c();
            q1.l.b(objC);
            y0.a aVarG = g(objC.getClass());
            this.f -= aVarG.a() * aVarG.b(objC);
            e(objC.getClass(), aVarG.b(objC));
            if (Log.isLoggable(aVarG.getTag(), 2)) {
                Log.v(aVarG.getTag(), "evicted: " + aVarG.b(objC));
            }
        }
    }

    public final <T> y0.a<T> g(Class<T> cls) {
        HashMap map = this.f19257d;
        y0.a<T> eVar = (y0.a) map.get(cls);
        if (eVar == null) {
            if (cls.equals(int[].class)) {
                eVar = new g();
            } else {
                if (!cls.equals(byte[].class)) {
                    throw new IllegalArgumentException("No array pool found for: ".concat(cls.getSimpleName()));
                }
                eVar = new e();
            }
            map.put(cls, eVar);
        }
        return eVar;
    }

    public final <T> T h(a aVar, Class<T> cls) {
        y0.a<T> aVarG = g(cls);
        T t10 = (T) this.f19254a.a(aVar);
        if (t10 != null) {
            this.f -= aVarG.a() * aVarG.b(t10);
            e(cls, aVarG.b(t10));
        }
        if (t10 != null) {
            return t10;
        }
        if (Log.isLoggable(aVarG.getTag(), 2)) {
            Log.v(aVarG.getTag(), "Allocated " + aVar.f19260b + " bytes");
        }
        return aVarG.newArray(aVar.f19260b);
    }

    public final NavigableMap<Integer, Integer> i(Class<?> cls) {
        HashMap map = this.f19256c;
        NavigableMap<Integer, Integer> navigableMap = (NavigableMap) map.get(cls);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        map.put(cls, treeMap);
        return treeMap;
    }

    @Override // y0.b
    public final synchronized <T> void put(T t10) {
        Class<?> cls = t10.getClass();
        y0.a<T> aVarG = g(cls);
        int r22 = aVarG.b(t10);
        int r12 = aVarG.a() * r22;
        int r42 = 1;
        if (r12 <= this.f19258e / 2) {
            a aVar = (a) this.f19255b.b();
            aVar.f19260b = r22;
            aVar.f19261c = cls;
            this.f19254a.b(aVar, t10);
            NavigableMap<Integer, Integer> navigableMapI = i(cls);
            Integer num = navigableMapI.get(Integer.valueOf(aVar.f19260b));
            Integer numValueOf = Integer.valueOf(aVar.f19260b);
            if (num != null) {
                r42 = 1 + num.intValue();
            }
            navigableMapI.put(numValueOf, Integer.valueOf(r42));
            this.f += r12;
            f(this.f19258e);
        }
    }
}
