package j7;

import java.io.IOException;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import m7.o;

/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public final ThreadLocal<Map<p7.a<?>, a<?>>> f8290a;

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f8291b;

    /* renamed from: c, reason: collision with root package name */
    public final l7.c f8292c;

    /* renamed from: d, reason: collision with root package name */
    public final m7.d f8293d;

    /* renamed from: e, reason: collision with root package name */
    public final List<v> f8294e;
    public final Map<Type, i<?>> f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f8295g;

    /* renamed from: h, reason: collision with root package name */
    public final List<v> f8296h;

    /* renamed from: i, reason: collision with root package name */
    public final List<v> f8297i;

    public static class a<T> extends u<T> {

        /* renamed from: a, reason: collision with root package name */
        public u<T> f8298a;

        @Override // j7.u
        public final T a(q7.a aVar) throws IOException {
            u<T> uVar = this.f8298a;
            if (uVar != null) {
                return uVar.a(aVar);
            }
            throw new IllegalStateException();
        }

        @Override // j7.u
        public final void b(q7.b bVar, T t10) throws IOException {
            u<T> uVar = this.f8298a;
            if (uVar == null) {
                throw new IllegalStateException();
            }
            uVar.b(bVar, t10);
        }
    }

    static {
        new p7.a(Object.class);
    }

    public h() {
        l7.f fVar = l7.f.f;
        Map<Type, i<?>> mapEmptyMap = Collections.emptyMap();
        List<v> listEmptyList = Collections.emptyList();
        List<v> listEmptyList2 = Collections.emptyList();
        List listEmptyList3 = Collections.emptyList();
        this.f8290a = new ThreadLocal<>();
        this.f8291b = new ConcurrentHashMap();
        this.f = mapEmptyMap;
        l7.c cVar = new l7.c(mapEmptyMap);
        this.f8292c = cVar;
        this.f8295g = true;
        this.f8296h = listEmptyList;
        this.f8297i = listEmptyList2;
        ArrayList arrayList = new ArrayList();
        arrayList.add(m7.o.B);
        arrayList.add(m7.h.f10071b);
        arrayList.add(fVar);
        arrayList.addAll(listEmptyList3);
        arrayList.add(m7.o.f10114p);
        arrayList.add(m7.o.f10105g);
        arrayList.add(m7.o.f10103d);
        arrayList.add(m7.o.f10104e);
        arrayList.add(m7.o.f);
        o.b bVar = m7.o.f10109k;
        arrayList.add(new m7.q(Long.TYPE, Long.class, bVar));
        arrayList.add(new m7.q(Double.TYPE, Double.class, new d()));
        arrayList.add(new m7.q(Float.TYPE, Float.class, new e()));
        arrayList.add(m7.o.f10110l);
        arrayList.add(m7.o.f10106h);
        arrayList.add(m7.o.f10107i);
        arrayList.add(new m7.p(AtomicLong.class, new t(new f(bVar))));
        arrayList.add(new m7.p(AtomicLongArray.class, new t(new g(bVar))));
        arrayList.add(m7.o.f10108j);
        arrayList.add(m7.o.f10111m);
        arrayList.add(m7.o.f10115q);
        arrayList.add(m7.o.f10116r);
        arrayList.add(new m7.p(BigDecimal.class, m7.o.f10112n));
        arrayList.add(new m7.p(BigInteger.class, m7.o.f10113o));
        arrayList.add(m7.o.f10117s);
        arrayList.add(m7.o.f10118t);
        arrayList.add(m7.o.f10120v);
        arrayList.add(m7.o.w);
        arrayList.add(m7.o.f10123z);
        arrayList.add(m7.o.f10119u);
        arrayList.add(m7.o.f10101b);
        arrayList.add(m7.c.f10053b);
        arrayList.add(m7.o.f10122y);
        arrayList.add(m7.l.f10090b);
        arrayList.add(m7.k.f10088b);
        arrayList.add(m7.o.f10121x);
        arrayList.add(m7.a.f10047c);
        arrayList.add(m7.o.f10100a);
        arrayList.add(new m7.b(cVar));
        arrayList.add(new m7.g(cVar));
        m7.d dVar = new m7.d(cVar);
        this.f8293d = dVar;
        arrayList.add(dVar);
        arrayList.add(m7.o.C);
        arrayList.add(new m7.j(cVar, fVar, dVar));
        this.f8294e = Collections.unmodifiableList(arrayList);
    }

    public static void a(double d10) {
        if (Double.isNaN(d10) || Double.isInfinite(d10)) {
            throw new IllegalArgumentException(d10 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    public final <T> u<T> b(p7.a<T> aVar) {
        boolean z10;
        ConcurrentHashMap concurrentHashMap = this.f8291b;
        u<T> uVar = (u) concurrentHashMap.get(aVar);
        if (uVar != null) {
            return uVar;
        }
        ThreadLocal<Map<p7.a<?>, a<?>>> threadLocal = this.f8290a;
        Map<p7.a<?>, a<?>> map = threadLocal.get();
        if (map == null) {
            map = new HashMap<>();
            threadLocal.set(map);
            z10 = true;
        } else {
            z10 = false;
        }
        a<?> aVar2 = map.get(aVar);
        if (aVar2 != null) {
            return aVar2;
        }
        try {
            a<?> aVar3 = new a<>();
            map.put(aVar, aVar3);
            Iterator<v> it = this.f8294e.iterator();
            while (it.hasNext()) {
                u<T> uVarB = it.next().b(this, aVar);
                if (uVarB != null) {
                    if (aVar3.f8298a != null) {
                        throw new AssertionError();
                    }
                    aVar3.f8298a = uVarB;
                    concurrentHashMap.put(aVar, uVarB);
                    return uVarB;
                }
            }
            throw new IllegalArgumentException("GSON (2.8.5) cannot handle " + aVar);
        } finally {
            map.remove(aVar);
            if (z10) {
                threadLocal.remove();
            }
        }
    }

    public final <T> u<T> c(v vVar, p7.a<T> aVar) {
        List<v> list = this.f8294e;
        if (!list.contains(vVar)) {
            vVar = this.f8293d;
        }
        boolean z10 = false;
        for (v vVar2 : list) {
            if (z10) {
                u<T> uVarB = vVar2.b(this, aVar);
                if (uVarB != null) {
                    return uVarB;
                }
            } else if (vVar2 == vVar) {
                z10 = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize " + aVar);
    }

    public final void d(ArrayList arrayList, Class cls, q7.b bVar) throws m {
        u uVarB = b(new p7.a(cls));
        boolean z10 = bVar.f13428e;
        bVar.f13428e = true;
        boolean z11 = bVar.f;
        bVar.f = this.f8295g;
        boolean z12 = bVar.f13430h;
        bVar.f13430h = false;
        try {
            try {
                try {
                    uVarB.b(bVar, arrayList);
                } catch (IOException e10) {
                    throw new m(e10);
                }
            } catch (AssertionError e11) {
                throw new AssertionError("AssertionError (GSON 2.8.5): " + e11.getMessage(), e11);
            }
        } finally {
            bVar.f13428e = z10;
            bVar.f = z11;
            bVar.f13430h = z12;
        }
    }

    public final String toString() {
        return "{serializeNulls:false,factories:" + this.f8294e + ",instanceCreators:" + this.f8292c + "}";
    }
}
