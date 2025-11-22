package x0;

import b1.o;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import x0.j;

/* loaded from: classes.dex */
public final class i<Transcode> {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f18961a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f18962b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public com.bumptech.glide.h f18963c;

    /* renamed from: d, reason: collision with root package name */
    public Object f18964d;

    /* renamed from: e, reason: collision with root package name */
    public int f18965e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public Class<?> f18966g;

    /* renamed from: h, reason: collision with root package name */
    public j.d f18967h;

    /* renamed from: i, reason: collision with root package name */
    public v0.h f18968i;

    /* renamed from: j, reason: collision with root package name */
    public Map<Class<?>, v0.l<?>> f18969j;

    /* renamed from: k, reason: collision with root package name */
    public Class<Transcode> f18970k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f18971l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f18972m;

    /* renamed from: n, reason: collision with root package name */
    public v0.f f18973n;

    /* renamed from: o, reason: collision with root package name */
    public com.bumptech.glide.j f18974o;

    /* renamed from: p, reason: collision with root package name */
    public l f18975p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f18976q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f18977r;

    public final ArrayList a() {
        boolean z10 = this.f18972m;
        ArrayList arrayList = this.f18962b;
        if (!z10) {
            this.f18972m = true;
            arrayList.clear();
            ArrayList arrayListB = b();
            int size = arrayListB.size();
            for (int r42 = 0; r42 < size; r42++) {
                o.a aVar = (o.a) arrayListB.get(r42);
                if (!arrayList.contains(aVar.f1049a)) {
                    arrayList.add(aVar.f1049a);
                }
                int r6 = 0;
                while (true) {
                    List<v0.f> list = aVar.f1050b;
                    if (r6 < list.size()) {
                        if (!arrayList.contains(list.get(r6))) {
                            arrayList.add(list.get(r6));
                        }
                        r6++;
                    }
                }
            }
        }
        return arrayList;
    }

    public final ArrayList b() {
        boolean z10 = this.f18971l;
        ArrayList arrayList = this.f18961a;
        if (!z10) {
            this.f18971l = true;
            arrayList.clear();
            List listG = this.f18963c.a().g(this.f18964d);
            int size = listG.size();
            for (int r32 = 0; r32 < size; r32++) {
                o.a aVarB = ((b1.o) listG.get(r32)).b(this.f18964d, this.f18965e, this.f, this.f18968i);
                if (aVarB != null) {
                    arrayList.add(aVarB);
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <Data> u<Data, ?, Transcode> c(Class<Data> cls) {
        u<Data, ?, Transcode> uVar;
        com.bumptech.glide.k kVarA = this.f18963c.a();
        Class<?> cls2 = this.f18966g;
        Class cls3 = this.f18970k;
        l1.c cVar = kVarA.f2736i;
        q1.k andSet = cVar.f9326b.getAndSet(null);
        if (andSet == null) {
            andSet = new q1.k();
        }
        andSet.f13315a = cls;
        andSet.f13316b = cls2;
        andSet.f13317c = cls3;
        synchronized (cVar.f9325a) {
            uVar = (u) cVar.f9325a.get(andSet);
        }
        cVar.f9326b.set(andSet);
        kVarA.f2736i.getClass();
        if (l1.c.f9324c.equals(uVar)) {
            return null;
        }
        if (uVar != null) {
            return uVar;
        }
        ArrayList arrayListE = kVarA.e(cls, cls2, cls3);
        u<Data, ?, Transcode> uVar2 = arrayListE.isEmpty() ? null : new u<>(cls, cls2, cls3, arrayListE, kVarA.f2737j);
        kVarA.f2736i.a(cls, cls2, cls3, uVar2);
        return uVar2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final List<Class<?>> d() {
        List<Class<?>> list;
        com.bumptech.glide.k kVarA = this.f18963c.a();
        Class<?> cls = this.f18964d.getClass();
        Class<?> cls2 = this.f18966g;
        Class cls3 = this.f18970k;
        l1.d dVar = kVarA.f2735h;
        q1.k andSet = dVar.f9327a.getAndSet(null);
        if (andSet == null) {
            andSet = new q1.k(cls, cls2, cls3);
        } else {
            andSet.f13315a = cls;
            andSet.f13316b = cls2;
            andSet.f13317c = cls3;
        }
        synchronized (dVar.f9328b) {
            list = dVar.f9328b.get(andSet);
        }
        dVar.f9327a.set(andSet);
        List<Class<?>> list2 = list;
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            Iterator it = kVarA.f2729a.a(cls).iterator();
            while (it.hasNext()) {
                Iterator it2 = kVarA.f2731c.b((Class) it.next(), cls2).iterator();
                while (it2.hasNext()) {
                    Class cls4 = (Class) it2.next();
                    if (!kVarA.f.b(cls4, cls3).isEmpty() && !arrayList.contains(cls4)) {
                        arrayList.add(cls4);
                    }
                }
            }
            kVarA.f2735h.a(cls, cls2, cls3, Collections.unmodifiableList(arrayList));
            list2 = arrayList;
        }
        return list2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
    
        r1 = (v0.d<X>) r3.f9322b;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <X> v0.d<X> e(X r6) throws com.bumptech.glide.k.e {
        /*
            r5 = this;
            com.bumptech.glide.h r0 = r5.f18963c
            com.bumptech.glide.k r0 = r0.a()
            l1.a r0 = r0.f2730b
            java.lang.Class r1 = r6.getClass()
            monitor-enter(r0)
            java.util.ArrayList r2 = r0.f9320a     // Catch: java.lang.Throwable -> L3a
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L3a
        L13:
            boolean r3 = r2.hasNext()     // Catch: java.lang.Throwable -> L3a
            if (r3 == 0) goto L2b
            java.lang.Object r3 = r2.next()     // Catch: java.lang.Throwable -> L3a
            l1.a$a r3 = (l1.a.C0177a) r3     // Catch: java.lang.Throwable -> L3a
            java.lang.Class<T> r4 = r3.f9321a     // Catch: java.lang.Throwable -> L3a
            boolean r4 = r4.isAssignableFrom(r1)     // Catch: java.lang.Throwable -> L3a
            if (r4 == 0) goto L13
            v0.d<T> r1 = r3.f9322b     // Catch: java.lang.Throwable -> L3a
            monitor-exit(r0)
            goto L2d
        L2b:
            monitor-exit(r0)
            r1 = 0
        L2d:
            if (r1 == 0) goto L30
            return r1
        L30:
            com.bumptech.glide.k$e r0 = new com.bumptech.glide.k$e
            java.lang.Class r6 = r6.getClass()
            r0.<init>(r6)
            throw r0
        L3a:
            r6 = move-exception
            monitor-exit(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: x0.i.e(java.lang.Object):v0.d");
    }

    public final <Z> v0.l<Z> f(Class<Z> cls) {
        v0.l<Z> lVar = (v0.l) this.f18969j.get(cls);
        if (lVar == null) {
            Iterator<Map.Entry<Class<?>, v0.l<?>>> it = this.f18969j.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, v0.l<?>> next = it.next();
                if (next.getKey().isAssignableFrom(cls)) {
                    lVar = (v0.l) next.getValue();
                    break;
                }
            }
        }
        if (lVar != null) {
            return lVar;
        }
        if (this.f18969j.isEmpty() && this.f18976q) {
            throw new IllegalArgumentException(androidx.camera.camera2.internal.c.f("Missing transformation for ", cls, ". If you wish to ignore unknown resource types, use the optional transformation methods."));
        }
        return d1.b.f4646b;
    }
}
