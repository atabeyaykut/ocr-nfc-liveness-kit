package c6;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes2.dex */
public final class d<T> {

    /* renamed from: a, reason: collision with root package name */
    public final Set<Class<? super T>> f2188a;

    /* renamed from: b, reason: collision with root package name */
    public final Set<o> f2189b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2190c;

    /* renamed from: d, reason: collision with root package name */
    public final int f2191d;

    /* renamed from: e, reason: collision with root package name */
    public final h<T> f2192e;
    public final Set<Class<?>> f;

    public static class a<T> {

        /* renamed from: a, reason: collision with root package name */
        public final HashSet f2193a;

        /* renamed from: b, reason: collision with root package name */
        public final HashSet f2194b;

        /* renamed from: c, reason: collision with root package name */
        public int f2195c;

        /* renamed from: d, reason: collision with root package name */
        public int f2196d;

        /* renamed from: e, reason: collision with root package name */
        public h<T> f2197e;
        public final HashSet f;

        public a(Class cls, Class[] clsArr) {
            HashSet hashSet = new HashSet();
            this.f2193a = hashSet;
            this.f2194b = new HashSet();
            this.f2195c = 0;
            this.f2196d = 0;
            this.f = new HashSet();
            hashSet.add(cls);
            for (Class cls2 : clsArr) {
                if (cls2 == null) {
                    throw new NullPointerException("Null interface");
                }
            }
            Collections.addAll(this.f2193a, clsArr);
        }

        public final void a(o oVar) {
            if (!(!this.f2193a.contains(oVar.f2215a))) {
                throw new IllegalArgumentException("Components are not allowed to depend on interfaces they themselves provide.");
            }
            this.f2194b.add(oVar);
        }

        public final d<T> b() {
            if (this.f2197e != null) {
                return new d<>(new HashSet(this.f2193a), new HashSet(this.f2194b), this.f2195c, this.f2196d, this.f2197e, this.f);
            }
            throw new IllegalStateException("Missing required property: factory.");
        }

        public final void c(int r22) {
            if (!(this.f2195c == 0)) {
                throw new IllegalStateException("Instantiation type has already been set.");
            }
            this.f2195c = r22;
        }
    }

    public d() {
        throw null;
    }

    public d(HashSet hashSet, HashSet hashSet2, int r32, int r42, h hVar, HashSet hashSet3) {
        this.f2188a = Collections.unmodifiableSet(hashSet);
        this.f2189b = Collections.unmodifiableSet(hashSet2);
        this.f2190c = r32;
        this.f2191d = r42;
        this.f2192e = hVar;
        this.f = Collections.unmodifiableSet(hashSet3);
    }

    public static <T> a<T> a(Class<T> cls) {
        return new a<>(cls, new Class[0]);
    }

    @SafeVarargs
    public static <T> d<T> b(final T t10, Class<T> cls, Class<? super T>... clsArr) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        hashSet.add(cls);
        for (Class<? super T> cls2 : clsArr) {
            if (cls2 == null) {
                throw new NullPointerException("Null interface");
            }
        }
        Collections.addAll(hashSet, clsArr);
        return new d<>(new HashSet(hashSet), new HashSet(hashSet2), 0, 0, new h() { // from class: c6.b
            @Override // c6.h
            public final Object i(y yVar) {
                return t10;
            }
        }, hashSet3);
    }

    public final String toString() {
        return "Component<" + Arrays.toString(this.f2188a.toArray()) + ">{" + this.f2190c + ", type=" + this.f2191d + ", deps=" + Arrays.toString(this.f2189b.toArray()) + "}";
    }
}
