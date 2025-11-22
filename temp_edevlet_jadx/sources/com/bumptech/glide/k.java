package com.bumptech.glide;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import b1.q;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.e;
import j1.f;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import l1.a;
import l1.e;
import l1.f;
import r1.a;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public final q f2729a;

    /* renamed from: b, reason: collision with root package name */
    public final l1.a f2730b;

    /* renamed from: c, reason: collision with root package name */
    public final l1.e f2731c;

    /* renamed from: d, reason: collision with root package name */
    public final l1.f f2732d;

    /* renamed from: e, reason: collision with root package name */
    public final com.bumptech.glide.load.data.f f2733e;
    public final j1.f f;

    /* renamed from: g, reason: collision with root package name */
    public final l1.b f2734g;

    /* renamed from: h, reason: collision with root package name */
    public final l1.d f2735h = new l1.d();

    /* renamed from: i, reason: collision with root package name */
    public final l1.c f2736i = new l1.c();

    /* renamed from: j, reason: collision with root package name */
    public final a.c f2737j;

    public static class a extends RuntimeException {
        public a(@NonNull String str) {
            super(str);
        }
    }

    public static final class b extends a {
        public b() {
            super("Failed to find image header parser.");
        }
    }

    public static class c extends a {
        public c(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            super("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        }

        public c(@NonNull Object obj) {
            super("Failed to find any ModelLoaders registered for model class: " + obj.getClass());
        }

        public <M> c(@NonNull M m10, @NonNull List<b1.o<M, ?>> list) {
            super("Found ModelLoaders for model class: " + list + ", but none that handle this specific model instance: " + m10);
        }
    }

    public static class d extends a {
        public d(@NonNull Class<?> cls) {
            super(androidx.camera.camera2.internal.c.f("Failed to find result encoder for resource class: ", cls, ", you may need to consider registering a new Encoder for the requested type or DiskCacheStrategy.DATA/DiskCacheStrategy.NONE if caching your transformed resource is unnecessary."));
        }
    }

    public static class e extends a {
        public e(@NonNull Class<?> cls) {
            super(androidx.appcompat.graphics.drawable.a.g("Failed to find source encoder for data class: ", cls));
        }
    }

    public k() {
        a.c cVar = new a.c(new Pools.SynchronizedPool(20), new r1.b(), new r1.c());
        this.f2737j = cVar;
        this.f2729a = new q(cVar);
        this.f2730b = new l1.a();
        this.f2731c = new l1.e();
        this.f2732d = new l1.f();
        this.f2733e = new com.bumptech.glide.load.data.f();
        this.f = new j1.f();
        this.f2734g = new l1.b();
        List listAsList = Arrays.asList("Animation", "Bitmap", "BitmapDrawable");
        ArrayList arrayList = new ArrayList(listAsList.size());
        arrayList.add("legacy_prepend_all");
        Iterator it = listAsList.iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        arrayList.add("legacy_append");
        l1.e eVar = this.f2731c;
        synchronized (eVar) {
            ArrayList arrayList2 = new ArrayList(eVar.f9329a);
            eVar.f9329a.clear();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                eVar.f9329a.add((String) it2.next());
            }
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                String str = (String) it3.next();
                if (!arrayList.contains(str)) {
                    eVar.f9329a.add(str);
                }
            }
        }
    }

    @NonNull
    public final void a(@NonNull Class cls, @NonNull Class cls2, @NonNull b1.p pVar) {
        q qVar = this.f2729a;
        synchronized (qVar) {
            qVar.f1052a.a(cls, cls2, pVar);
            qVar.f1053b.f1054a.clear();
        }
    }

    @NonNull
    public final void b(@NonNull Class cls, @NonNull v0.d dVar) {
        l1.a aVar = this.f2730b;
        synchronized (aVar) {
            aVar.f9320a.add(new a.C0177a(cls, dVar));
        }
    }

    @NonNull
    public final void c(@NonNull Class cls, @NonNull v0.k kVar) {
        l1.f fVar = this.f2732d;
        synchronized (fVar) {
            fVar.f9334a.add(new f.a(cls, kVar));
        }
    }

    @NonNull
    public final void d(@NonNull v0.j jVar, @NonNull Class cls, @NonNull Class cls2, @NonNull String str) {
        l1.e eVar = this.f2731c;
        synchronized (eVar) {
            eVar.a(str).add(new e.a<>(cls, cls2, jVar));
        }
    }

    @NonNull
    public final ArrayList e(@NonNull Class cls, @NonNull Class cls2, @NonNull Class cls3) {
        ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList();
        Iterator it = this.f2731c.b(cls, cls2).iterator();
        while (it.hasNext()) {
            Class cls4 = (Class) it.next();
            Iterator it2 = this.f.b(cls4, cls3).iterator();
            while (it2.hasNext()) {
                Class cls5 = (Class) it2.next();
                l1.e eVar = this.f2731c;
                synchronized (eVar) {
                    arrayList = new ArrayList();
                    Iterator it3 = eVar.f9329a.iterator();
                    while (it3.hasNext()) {
                        List<e.a> list = (List) eVar.f9330b.get((String) it3.next());
                        if (list != null) {
                            for (e.a aVar : list) {
                                if (aVar.f9331a.isAssignableFrom(cls) && cls4.isAssignableFrom(aVar.f9332b)) {
                                    arrayList.add(aVar.f9333c);
                                }
                            }
                        }
                    }
                }
                arrayList2.add(new x0.k(cls, cls4, cls5, arrayList, this.f.a(cls4, cls5), this.f2737j));
            }
        }
        return arrayList2;
    }

    @NonNull
    public final ArrayList f() {
        ArrayList arrayList;
        l1.b bVar = this.f2734g;
        synchronized (bVar) {
            arrayList = bVar.f9323a;
        }
        if (arrayList.isEmpty()) {
            throw new b();
        }
        return arrayList;
    }

    @NonNull
    public final <Model> List<b1.o<Model, ?>> g(@NonNull Model model) {
        List<b1.o<Model, ?>> listUnmodifiableList;
        q qVar = this.f2729a;
        qVar.getClass();
        Class<?> cls = model.getClass();
        synchronized (qVar) {
            q.a.C0043a c0043a = (q.a.C0043a) qVar.f1053b.f1054a.get(cls);
            listUnmodifiableList = c0043a == null ? null : c0043a.f1055a;
            if (listUnmodifiableList == null) {
                listUnmodifiableList = Collections.unmodifiableList(qVar.f1052a.d(cls));
                if (((q.a.C0043a) qVar.f1053b.f1054a.put(cls, new q.a.C0043a(listUnmodifiableList))) != null) {
                    throw new IllegalStateException("Already cached loaders for model: " + cls);
                }
            }
        }
        if (listUnmodifiableList.isEmpty()) {
            throw new c(model);
        }
        int size = listUnmodifiableList.size();
        List<b1.o<Model, ?>> listEmptyList = Collections.emptyList();
        boolean z10 = true;
        for (int r52 = 0; r52 < size; r52++) {
            b1.o<Model, ?> oVar = listUnmodifiableList.get(r52);
            if (oVar.a(model)) {
                if (z10) {
                    listEmptyList = new ArrayList<>(size - r52);
                    z10 = false;
                }
                listEmptyList.add(oVar);
            }
        }
        if (listEmptyList.isEmpty()) {
            throw new c(model, listUnmodifiableList);
        }
        return listEmptyList;
    }

    @NonNull
    public final <X> com.bumptech.glide.load.data.e<X> h(@NonNull X x10) {
        com.bumptech.glide.load.data.e<X> eVarB;
        com.bumptech.glide.load.data.f fVar = this.f2733e;
        synchronized (fVar) {
            q1.l.b(x10);
            e.a aVar = (e.a) fVar.f2753a.get(x10.getClass());
            if (aVar == null) {
                Iterator it = fVar.f2753a.values().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    e.a aVar2 = (e.a) it.next();
                    if (aVar2.a().isAssignableFrom(x10.getClass())) {
                        aVar = aVar2;
                        break;
                    }
                }
            }
            if (aVar == null) {
                aVar = com.bumptech.glide.load.data.f.f2752b;
            }
            eVarB = aVar.b(x10);
        }
        return eVarB;
    }

    @NonNull
    public final void i(@NonNull ImageHeaderParser imageHeaderParser) {
        l1.b bVar = this.f2734g;
        synchronized (bVar) {
            bVar.f9323a.add(imageHeaderParser);
        }
    }

    @NonNull
    public final void j(@NonNull e.a aVar) {
        com.bumptech.glide.load.data.f fVar = this.f2733e;
        synchronized (fVar) {
            fVar.f2753a.put(aVar.a(), aVar);
        }
    }

    @NonNull
    public final void k(@NonNull Class cls, @NonNull Class cls2, @NonNull j1.e eVar) {
        j1.f fVar = this.f;
        synchronized (fVar) {
            fVar.f7973a.add(new f.a(cls, cls2, eVar));
        }
    }
}
