package io.realm.internal;

import io.realm.internal.k.b;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes2.dex */
public final class k<T extends b> {

    /* renamed from: a, reason: collision with root package name */
    public final CopyOnWriteArrayList f7667a = new CopyOnWriteArrayList();

    /* renamed from: b, reason: collision with root package name */
    public boolean f7668b = false;

    public interface a<T extends b> {
        void a(T t10, Object obj);
    }

    public static abstract class b<T, S> {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference<T> f7669a;

        /* renamed from: b, reason: collision with root package name */
        public final S f7670b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f7671c = false;

        public b(T t10, S s7) {
            this.f7670b = s7;
            this.f7669a = new WeakReference<>(t10);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f7670b.equals(bVar.f7670b) && this.f7669a.get() == bVar.f7669a.get();
        }

        public final int hashCode() {
            T t10 = this.f7669a.get();
            int r22 = (527 + (t10 != null ? t10.hashCode() : 0)) * 31;
            S s7 = this.f7670b;
            return r22 + (s7 != null ? s7.hashCode() : 0);
        }
    }

    public final void a(T t10) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f7667a;
        if (!copyOnWriteArrayList.contains(t10)) {
            copyOnWriteArrayList.add(t10);
            t10.f7671c = false;
        }
        if (this.f7668b) {
            this.f7668b = false;
        }
    }

    public final void b(a<T> aVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f7667a;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            b bVar = (b) it.next();
            if (this.f7668b) {
                return;
            }
            Object obj = bVar.f7669a.get();
            if (obj == null) {
                copyOnWriteArrayList.remove(bVar);
            } else if (!bVar.f7671c) {
                aVar.a(bVar, obj);
            }
        }
    }

    public final boolean c() {
        return this.f7667a.isEmpty();
    }

    public final <S, U> void d(S s7, U u10) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f7667a;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            b bVar = (b) it.next();
            if (s7 == bVar.f7669a.get() && u10.equals(bVar.f7670b)) {
                bVar.f7671c = true;
                copyOnWriteArrayList.remove(bVar);
                return;
            }
        }
    }

    public final void e(Object obj) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f7667a;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            b bVar = (b) it.next();
            Object obj2 = bVar.f7669a.get();
            if (obj2 == null || obj2 == obj) {
                bVar.f7671c = true;
                copyOnWriteArrayList.remove(bVar);
            }
        }
    }
}
