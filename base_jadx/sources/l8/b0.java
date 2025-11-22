package l8;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import l8.p;

/* loaded from: classes2.dex */
public final class b0 {

    /* renamed from: d, reason: collision with root package name */
    public static final ArrayList f9458d;

    /* renamed from: a, reason: collision with root package name */
    public final List<p.a> f9459a;

    /* renamed from: b, reason: collision with root package name */
    public final ThreadLocal<c> f9460b = new ThreadLocal<>();

    /* renamed from: c, reason: collision with root package name */
    public final LinkedHashMap f9461c = new LinkedHashMap();

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f9462a = new ArrayList();

        public final void a(p.a aVar) {
            this.f9462a.add(aVar);
        }
    }

    public static final class b<T> extends p<T> {

        /* renamed from: a, reason: collision with root package name */
        public final Type f9463a;

        /* renamed from: b, reason: collision with root package name */
        public final String f9464b;

        /* renamed from: c, reason: collision with root package name */
        public final Object f9465c;

        /* renamed from: d, reason: collision with root package name */
        public p<T> f9466d;

        public b(Type type, String str, Object obj) {
            this.f9463a = type;
            this.f9464b = str;
            this.f9465c = obj;
        }

        @Override // l8.p
        public final T a(u uVar) throws IOException {
            p<T> pVar = this.f9466d;
            if (pVar != null) {
                return pVar.a(uVar);
            }
            throw new IllegalStateException("JsonAdapter isn't ready");
        }

        @Override // l8.p
        public final void c(y yVar, T t10) throws IOException {
            p<T> pVar = this.f9466d;
            if (pVar == null) {
                throw new IllegalStateException("JsonAdapter isn't ready");
            }
            pVar.c(yVar, t10);
        }

        public final String toString() {
            p<T> pVar = this.f9466d;
            return pVar != null ? pVar.toString() : super.toString();
        }
    }

    public final class c {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f9467a = new ArrayList();

        /* renamed from: b, reason: collision with root package name */
        public final ArrayDeque f9468b = new ArrayDeque();

        /* renamed from: c, reason: collision with root package name */
        public boolean f9469c;

        public c() {
        }

        public final IllegalArgumentException a(IllegalArgumentException illegalArgumentException) {
            if (this.f9469c) {
                return illegalArgumentException;
            }
            this.f9469c = true;
            ArrayDeque arrayDeque = this.f9468b;
            if (arrayDeque.size() == 1 && ((b) arrayDeque.getFirst()).f9464b == null) {
                return illegalArgumentException;
            }
            StringBuilder sb2 = new StringBuilder(illegalArgumentException.getMessage());
            Iterator itDescendingIterator = arrayDeque.descendingIterator();
            while (itDescendingIterator.hasNext()) {
                b bVar = (b) itDescendingIterator.next();
                sb2.append("\nfor ");
                sb2.append(bVar.f9463a);
                String str = bVar.f9464b;
                if (str != null) {
                    sb2.append(' ');
                    sb2.append(str);
                }
            }
            return new IllegalArgumentException(sb2.toString(), illegalArgumentException);
        }

        public final void b(boolean z10) {
            this.f9468b.removeLast();
            if (this.f9468b.isEmpty()) {
                b0.this.f9460b.remove();
                if (z10) {
                    synchronized (b0.this.f9461c) {
                        int size = this.f9467a.size();
                        for (int r12 = 0; r12 < size; r12++) {
                            b bVar = (b) this.f9467a.get(r12);
                            p<T> pVar = (p) b0.this.f9461c.put(bVar.f9465c, bVar.f9466d);
                            if (pVar != 0) {
                                bVar.f9466d = pVar;
                                b0.this.f9461c.put(bVar.f9465c, pVar);
                            }
                        }
                    }
                }
            }
        }
    }

    static {
        ArrayList arrayList = new ArrayList(5);
        f9458d = arrayList;
        arrayList.add(c0.f9474a);
        arrayList.add(h.f9504b);
        arrayList.add(a0.f9453c);
        arrayList.add(l8.a.f9450c);
        arrayList.add(g.f9497d);
    }

    public b0(a aVar) {
        ArrayList arrayList = aVar.f9462a;
        int size = arrayList.size();
        ArrayList arrayList2 = f9458d;
        ArrayList arrayList3 = new ArrayList(arrayList2.size() + size);
        arrayList3.addAll(arrayList);
        arrayList3.addAll(arrayList2);
        this.f9459a = Collections.unmodifiableList(arrayList3);
    }

    public final <T> p<T> a(Type type) {
        return b(type, m8.a.f10139a, null);
    }

    public final <T> p<T> b(Type type, Set<? extends Annotation> set, String str) {
        b bVar;
        if (type == null) {
            throw new NullPointerException("type == null");
        }
        if (set == null) {
            throw new NullPointerException("annotations == null");
        }
        Type typeA = m8.a.a(type);
        Object objAsList = set.isEmpty() ? typeA : Arrays.asList(typeA, set);
        synchronized (this.f9461c) {
            p<T> pVar = (p) this.f9461c.get(objAsList);
            if (pVar != null) {
                return pVar;
            }
            c cVar = this.f9460b.get();
            if (cVar == null) {
                cVar = new c();
                this.f9460b.set(cVar);
            }
            ArrayList arrayList = cVar.f9467a;
            int size = arrayList.size();
            int r6 = 0;
            while (true) {
                ArrayDeque arrayDeque = cVar.f9468b;
                if (r6 >= size) {
                    b bVar2 = new b(typeA, str, objAsList);
                    arrayList.add(bVar2);
                    arrayDeque.add(bVar2);
                    bVar = null;
                    break;
                }
                bVar = (b) arrayList.get(r6);
                if (bVar.f9465c.equals(objAsList)) {
                    arrayDeque.add(bVar);
                    p<T> pVar2 = bVar.f9466d;
                    if (pVar2 != null) {
                        bVar = pVar2;
                    }
                } else {
                    r6++;
                }
            }
            try {
                if (bVar != null) {
                    return bVar;
                }
                try {
                    int size2 = this.f9459a.size();
                    for (int r02 = 0; r02 < size2; r02++) {
                        p<T> pVar3 = (p<T>) this.f9459a.get(r02).a(typeA, set, this);
                        if (pVar3 != null) {
                            ((b) cVar.f9468b.getLast()).f9466d = pVar3;
                            cVar.b(true);
                            return pVar3;
                        }
                    }
                    throw new IllegalArgumentException("No JsonAdapter for " + m8.a.g(typeA, set));
                } catch (IllegalArgumentException e10) {
                    throw cVar.a(e10);
                }
            } finally {
                cVar.b(false);
            }
        }
    }

    public final <T> p<T> c(p.a aVar, Type type, Set<? extends Annotation> set) {
        if (set == null) {
            throw new NullPointerException("annotations == null");
        }
        Type typeA = m8.a.a(type);
        List<p.a> list = this.f9459a;
        int r12 = list.indexOf(aVar);
        if (r12 == -1) {
            throw new IllegalArgumentException("Unable to skip past unknown factory " + aVar);
        }
        int size = list.size();
        for (int r13 = r12 + 1; r13 < size; r13++) {
            p<T> pVar = (p<T>) list.get(r13).a(typeA, set, this);
            if (pVar != null) {
                return pVar;
            }
        }
        throw new IllegalArgumentException("No next JsonAdapter for " + m8.a.g(typeA, set));
    }
}
