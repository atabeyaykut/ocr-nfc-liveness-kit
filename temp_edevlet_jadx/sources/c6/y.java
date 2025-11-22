package c6;

import com.airbnb.epoxy.c0;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes2.dex */
public final class y extends c6.a {

    /* renamed from: a, reason: collision with root package name */
    public final Set<Class<?>> f2233a;

    /* renamed from: b, reason: collision with root package name */
    public final Set<Class<?>> f2234b;

    /* renamed from: c, reason: collision with root package name */
    public final Set<Class<?>> f2235c;

    /* renamed from: d, reason: collision with root package name */
    public final Set<Class<?>> f2236d;

    /* renamed from: e, reason: collision with root package name */
    public final Set<Class<?>> f2237e;
    public final e f;

    public static class a implements x6.c {

        /* renamed from: a, reason: collision with root package name */
        public final x6.c f2238a;

        public a(x6.c cVar) {
            this.f2238a = cVar;
        }
    }

    public y(d dVar, m mVar) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        for (o oVar : dVar.f2189b) {
            int r72 = oVar.f2217c;
            boolean z10 = r72 == 0;
            int r11 = oVar.f2216b;
            Class<?> cls = oVar.f2215a;
            if (z10) {
                if (r11 == 2) {
                    hashSet4.add(cls);
                } else {
                    hashSet.add(cls);
                }
            } else if (r72 == 2) {
                hashSet3.add(cls);
            } else if (r11 == 2) {
                hashSet5.add(cls);
            } else {
                hashSet2.add(cls);
            }
        }
        if (!dVar.f.isEmpty()) {
            hashSet.add(x6.c.class);
        }
        this.f2233a = Collections.unmodifiableSet(hashSet);
        this.f2234b = Collections.unmodifiableSet(hashSet2);
        this.f2235c = Collections.unmodifiableSet(hashSet3);
        this.f2236d = Collections.unmodifiableSet(hashSet4);
        this.f2237e = Collections.unmodifiableSet(hashSet5);
        this.f = mVar;
    }

    @Override // c6.a, c6.e
    public final <T> T a(Class<T> cls) {
        if (!this.f2233a.contains(cls)) {
            throw new c0(String.format("Attempting to request an undeclared dependency %s.", cls));
        }
        T t10 = (T) this.f.a(cls);
        return !cls.equals(x6.c.class) ? t10 : (T) new a((x6.c) t10);
    }

    @Override // c6.e
    public final <T> a7.b<T> c(Class<T> cls) {
        if (this.f2234b.contains(cls)) {
            return this.f.c(cls);
        }
        throw new c0(String.format("Attempting to request an undeclared dependency Provider<%s>.", cls));
    }

    @Override // c6.e
    public final <T> a7.b<Set<T>> d(Class<T> cls) {
        if (this.f2237e.contains(cls)) {
            return this.f.d(cls);
        }
        throw new c0(String.format("Attempting to request an undeclared dependency Provider<Set<%s>>.", cls));
    }

    @Override // c6.a, c6.e
    public final <T> Set<T> h(Class<T> cls) {
        if (this.f2236d.contains(cls)) {
            return this.f.h(cls);
        }
        throw new c0(String.format("Attempting to request an undeclared dependency Set<%s>.", cls));
    }

    @Override // c6.e
    public final <T> a7.a<T> i(Class<T> cls) {
        if (this.f2235c.contains(cls)) {
            return this.f.i(cls);
        }
        throw new c0(String.format("Attempting to request an undeclared dependency Deferred<%s>.", cls));
    }
}
