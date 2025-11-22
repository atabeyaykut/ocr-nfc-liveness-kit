package b1;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import b1.o;
import com.bumptech.glide.k;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import r1.a;

/* loaded from: classes.dex */
public final class s {

    /* renamed from: e, reason: collision with root package name */
    public static final c f1064e = new c();
    public static final a f = new a();

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f1065a;

    /* renamed from: b, reason: collision with root package name */
    public final c f1066b;

    /* renamed from: c, reason: collision with root package name */
    public final HashSet f1067c;

    /* renamed from: d, reason: collision with root package name */
    public final Pools.Pool<List<Throwable>> f1068d;

    public static class a implements o<Object, Object> {
        @Override // b1.o
        public final boolean a(@NonNull Object obj) {
            return false;
        }

        @Override // b1.o
        @Nullable
        public final o.a<Object> b(@NonNull Object obj, int r22, int r32, @NonNull v0.h hVar) {
            return null;
        }
    }

    public static class b<Model, Data> {

        /* renamed from: a, reason: collision with root package name */
        public final Class<Model> f1069a;

        /* renamed from: b, reason: collision with root package name */
        public final Class<Data> f1070b;

        /* renamed from: c, reason: collision with root package name */
        public final p<? extends Model, ? extends Data> f1071c;

        public b(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull p<? extends Model, ? extends Data> pVar) {
            this.f1069a = cls;
            this.f1070b = cls2;
            this.f1071c = pVar;
        }
    }

    public static class c {
    }

    public s(@NonNull a.c cVar) {
        c cVar2 = f1064e;
        this.f1065a = new ArrayList();
        this.f1067c = new HashSet();
        this.f1068d = cVar;
        this.f1066b = cVar2;
    }

    public final synchronized <Model, Data> void a(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull p<? extends Model, ? extends Data> pVar) {
        b bVar = new b(cls, cls2, pVar);
        ArrayList arrayList = this.f1065a;
        arrayList.add(arrayList.size(), bVar);
    }

    @NonNull
    public final <Model, Data> o<Model, Data> b(@NonNull b<?, ?> bVar) {
        o<Model, Data> oVar = (o<Model, Data>) bVar.f1071c.a(this);
        q1.l.b(oVar);
        return oVar;
    }

    @NonNull
    public final synchronized <Model, Data> o<Model, Data> c(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        try {
            ArrayList arrayList = new ArrayList();
            Iterator it = this.f1065a.iterator();
            boolean z10 = false;
            while (true) {
                boolean z11 = true;
                if (!it.hasNext()) {
                    break;
                }
                b<?, ?> bVar = (b) it.next();
                if (this.f1067c.contains(bVar)) {
                    z10 = true;
                } else {
                    if (!bVar.f1069a.isAssignableFrom(cls) || !bVar.f1070b.isAssignableFrom(cls2)) {
                        z11 = false;
                    }
                    if (z11) {
                        this.f1067c.add(bVar);
                        arrayList.add(b(bVar));
                        this.f1067c.remove(bVar);
                    }
                }
            }
            if (arrayList.size() > 1) {
                c cVar = this.f1066b;
                Pools.Pool<List<Throwable>> pool = this.f1068d;
                cVar.getClass();
                return new r(arrayList, pool);
            }
            if (arrayList.size() == 1) {
                return (o) arrayList.get(0);
            }
            if (!z10) {
                throw new k.c((Class<?>) cls, (Class<?>) cls2);
            }
            return f;
        } catch (Throwable th2) {
            this.f1067c.clear();
            throw th2;
        }
    }

    @NonNull
    public final synchronized ArrayList d(@NonNull Class cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            Iterator it = this.f1065a.iterator();
            while (it.hasNext()) {
                b bVar = (b) it.next();
                if (!this.f1067c.contains(bVar) && bVar.f1069a.isAssignableFrom(cls)) {
                    this.f1067c.add(bVar);
                    o oVarA = bVar.f1071c.a(this);
                    q1.l.b(oVarA);
                    arrayList.add(oVarA);
                    this.f1067c.remove(bVar);
                }
            }
        } catch (Throwable th2) {
            this.f1067c.clear();
            throw th2;
        }
        return arrayList;
    }

    @NonNull
    public final synchronized ArrayList e(@NonNull Class cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator it = this.f1065a.iterator();
        while (it.hasNext()) {
            b bVar = (b) it.next();
            if (!arrayList.contains(bVar.f1070b) && bVar.f1069a.isAssignableFrom(cls)) {
                arrayList.add(bVar.f1070b);
            }
        }
        return arrayList;
    }
}
