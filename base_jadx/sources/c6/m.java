package c6;

import android.util.Log;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class m extends a implements s6.a {
    public static final k f = new a7.b() { // from class: c6.k
        @Override // a7.b
        public final Object get() {
            return Collections.emptySet();
        }
    };

    /* renamed from: d, reason: collision with root package name */
    public final r f2208d;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f2205a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f2206b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f2207c = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public final AtomicReference<Boolean> f2209e = new AtomicReference<>();

    public m(Executor executor, ArrayList arrayList, ArrayList arrayList2) {
        r rVar = new r(executor);
        this.f2208d = rVar;
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(d.b(rVar, r.class, x6.d.class, x6.c.class));
        arrayList3.add(d.b(this, s6.a.class, new Class[0]));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            d dVar = (d) it.next();
            if (dVar != null) {
                arrayList3.add(dVar);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList4.add(it2.next());
        }
        ArrayList arrayList5 = new ArrayList();
        synchronized (this) {
            Iterator it3 = arrayList4.iterator();
            while (it3.hasNext()) {
                try {
                    i iVar = (i) ((a7.b) it3.next()).get();
                    if (iVar != null) {
                        arrayList3.addAll(iVar.getComponents());
                        it3.remove();
                    }
                } catch (s e10) {
                    it3.remove();
                    Log.w("ComponentDiscovery", "Invalid component registrar.", e10);
                }
            }
            if (this.f2205a.isEmpty()) {
                n.a(arrayList3);
            } else {
                ArrayList arrayList6 = new ArrayList(this.f2205a.keySet());
                arrayList6.addAll(arrayList3);
                n.a(arrayList6);
            }
            Iterator it4 = arrayList3.iterator();
            while (it4.hasNext()) {
                final d dVar2 = (d) it4.next();
                this.f2205a.put(dVar2, new t(new a7.b() { // from class: c6.j
                    @Override // a7.b
                    public final Object get() {
                        m mVar = this.f2202a;
                        mVar.getClass();
                        d dVar3 = dVar2;
                        return dVar3.f2192e.i(new y(dVar3, mVar));
                    }
                }));
            }
            arrayList5.addAll(w(arrayList3));
            arrayList5.addAll(x());
            v();
        }
        Iterator it5 = arrayList5.iterator();
        while (it5.hasNext()) {
            ((Runnable) it5.next()).run();
        }
        Boolean bool = this.f2209e.get();
        if (bool != null) {
            t(this.f2205a, bool.booleanValue());
        }
    }

    @Override // c6.e
    public final synchronized <T> a7.b<T> c(Class<T> cls) {
        return (a7.b) this.f2206b.get(cls);
    }

    @Override // c6.e
    public final synchronized <T> a7.b<Set<T>> d(Class<T> cls) {
        u uVar = (u) this.f2207c.get(cls);
        if (uVar != null) {
            return uVar;
        }
        return f;
    }

    @Override // c6.e
    public final <T> a7.a<T> i(Class<T> cls) {
        a7.b<T> bVarC = c(cls);
        return bVarC == null ? new x(x.f2229c, x.f2230d) : bVarC instanceof x ? (x) bVarC : new x(null, bVarC);
    }

    public final void t(Map<d<?>, a7.b<?>> map, boolean z10) {
        ArrayDeque arrayDeque;
        for (Map.Entry<d<?>, a7.b<?>> entry : map.entrySet()) {
            d<?> key = entry.getKey();
            a7.b<?> value = entry.getValue();
            int r12 = key.f2190c;
            if (!(r12 == 1)) {
                if (!(r12 == 2) || !z10) {
                }
            }
            value.get();
        }
        r rVar = this.f2208d;
        synchronized (rVar) {
            try {
                arrayDeque = rVar.f2222b;
                if (arrayDeque != null) {
                    rVar.f2222b = null;
                } else {
                    arrayDeque = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (arrayDeque != null) {
            Iterator it = arrayDeque.iterator();
            while (it.hasNext()) {
                rVar.d((x6.a) it.next());
            }
        }
    }

    public final void u(boolean z10) {
        boolean z11;
        HashMap map;
        AtomicReference<Boolean> atomicReference = this.f2209e;
        Boolean boolValueOf = Boolean.valueOf(z10);
        while (true) {
            if (atomicReference.compareAndSet(null, boolValueOf)) {
                z11 = true;
                break;
            } else if (atomicReference.get() != null) {
                z11 = false;
                break;
            }
        }
        if (z11) {
            synchronized (this) {
                map = new HashMap(this.f2205a);
            }
            t(map, z10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void v() {
        /*
            r10 = this;
            java.util.HashMap r0 = r10.f2205a
            java.util.Set r0 = r0.keySet()
            java.util.Iterator r0 = r0.iterator()
        La:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L7e
            java.lang.Object r1 = r0.next()
            c6.d r1 = (c6.d) r1
            java.util.Set<c6.o> r2 = r1.f2189b
            java.util.Iterator r2 = r2.iterator()
        L1c:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto La
            java.lang.Object r3 = r2.next()
            c6.o r3 = (c6.o) r3
            int r4 = r3.f2216b
            r5 = 2
            r6 = 1
            r7 = 0
            if (r4 != r5) goto L31
            r4 = 1
            goto L32
        L31:
            r4 = 0
        L32:
            java.lang.Class<?> r8 = r3.f2215a
            if (r4 == 0) goto L48
            java.util.HashMap r4 = r10.f2207c
            boolean r9 = r4.containsKey(r8)
            if (r9 != 0) goto L48
            java.util.Set r3 = java.util.Collections.emptySet()
            c6.u r5 = new c6.u
            r5.<init>(r3)
            goto L68
        L48:
            java.util.HashMap r4 = r10.f2206b
            boolean r9 = r4.containsKey(r8)
            if (r9 != 0) goto L1c
            int r3 = r3.f2216b
            if (r3 != r6) goto L56
            r9 = 1
            goto L57
        L56:
            r9 = 0
        L57:
            if (r9 != 0) goto L6c
            if (r3 != r5) goto L5c
            goto L5d
        L5c:
            r6 = 0
        L5d:
            if (r6 != 0) goto L1c
            c6.x r5 = new c6.x
            androidx.constraintlayout.core.state.b r3 = c6.x.f2229c
            c6.w r6 = c6.x.f2230d
            r5.<init>(r3, r6)
        L68:
            r4.put(r8, r5)
            goto L1c
        L6c:
            c6.v r0 = new c6.v
            java.lang.Object[] r2 = new java.lang.Object[r5]
            r2[r7] = r1
            r2[r6] = r8
            java.lang.String r1 = "Unsatisfied dependency for component %s: %s"
            java.lang.String r1 = java.lang.String.format(r1, r2)
            r0.<init>(r1)
            throw r0
        L7e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c6.m.v():void");
    }

    public final ArrayList w(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            d dVar = (d) it.next();
            int r32 = 1;
            if (dVar.f2191d == 0) {
                a7.b bVar = (a7.b) this.f2205a.get(dVar);
                Iterator it2 = dVar.f2188a.iterator();
                while (it2.hasNext()) {
                    Class cls = (Class) it2.next();
                    HashMap map = this.f2206b;
                    if (map.containsKey(cls)) {
                        arrayList2.add(new androidx.camera.camera2.interop.g(r32, (x) ((a7.b) map.get(cls)), bVar));
                    } else {
                        map.put(cls, bVar);
                    }
                }
            }
        }
        return arrayList2;
    }

    public final ArrayList x() {
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        for (Map.Entry entry : this.f2205a.entrySet()) {
            d dVar = (d) entry.getKey();
            if (!(dVar.f2191d == 0)) {
                a7.b bVar = (a7.b) entry.getValue();
                Iterator it = dVar.f2188a.iterator();
                while (it.hasNext()) {
                    Class cls = (Class) it.next();
                    if (!map.containsKey(cls)) {
                        map.put(cls, new HashSet());
                    }
                    ((Set) map.get(cls)).add(bVar);
                }
            }
        }
        for (Map.Entry entry2 : map.entrySet()) {
            Object key = entry2.getKey();
            HashMap map2 = this.f2207c;
            if (map2.containsKey(key)) {
                u uVar = (u) map2.get(entry2.getKey());
                Iterator it2 = ((Set) entry2.getValue()).iterator();
                while (it2.hasNext()) {
                    arrayList.add(new androidx.camera.camera2.interop.a(3, uVar, (a7.b) it2.next()));
                }
            } else {
                map2.put((Class) entry2.getKey(), new u((Set) ((Collection) entry2.getValue())));
            }
        }
        return arrayList;
    }
}
