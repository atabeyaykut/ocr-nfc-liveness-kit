package io.realm;

import io.realm.internal.OsList;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Date;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.UUID;
import org.bson.types.Decimal128;
import org.bson.types.ObjectId;

/* loaded from: classes2.dex */
public final class q0<E> extends AbstractList<E> implements OrderedRealmCollection<E> {

    /* renamed from: a, reason: collision with root package name */
    public final Class<E> f7792a;

    /* renamed from: b, reason: collision with root package name */
    public final x<E> f7793b;

    /* renamed from: c, reason: collision with root package name */
    public final io.realm.a f7794c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f7795d;

    public class a implements Iterator<E> {

        /* renamed from: a, reason: collision with root package name */
        public int f7796a = 0;

        /* renamed from: b, reason: collision with root package name */
        public int f7797b = -1;

        /* renamed from: c, reason: collision with root package name */
        public int f7798c;

        public a() {
            this.f7798c = ((AbstractList) q0.this).modCount;
        }

        public final void a() {
            if (((AbstractList) q0.this).modCount != this.f7798c) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            q0 q0Var = q0.this;
            q0Var.w();
            a();
            return this.f7796a != q0Var.size();
        }

        @Override // java.util.Iterator
        public final E next() {
            q0 q0Var = q0.this;
            q0Var.w();
            a();
            int r12 = this.f7796a;
            try {
                E e10 = (E) q0Var.get(r12);
                this.f7797b = r12;
                this.f7796a = r12 + 1;
                return e10;
            } catch (IndexOutOfBoundsException unused) {
                a();
                StringBuilder sbE = androidx.appcompat.widget.v.e("Cannot access index ", r12, " when size is ");
                sbE.append(q0Var.size());
                sbE.append(". Remember to check hasNext() before using next().");
                throw new NoSuchElementException(sbE.toString());
            }
        }

        @Override // java.util.Iterator
        public final void remove() {
            q0 q0Var = q0.this;
            q0Var.w();
            if (this.f7797b < 0) {
                throw new IllegalStateException("Cannot call remove() twice. Must call next() in between.");
            }
            a();
            try {
                q0Var.remove(this.f7797b);
                int r12 = this.f7797b;
                int r22 = this.f7796a;
                if (r12 < r22) {
                    this.f7796a = r22 - 1;
                }
                this.f7797b = -1;
                this.f7798c = ((AbstractList) q0Var).modCount;
            } catch (IndexOutOfBoundsException unused) {
                throw new ConcurrentModificationException();
            }
        }
    }

    public class b extends q0<E>.a implements ListIterator<E> {
        public b(int r52) {
            super();
            if (r52 >= 0 && r52 <= q0.this.size()) {
                this.f7796a = r52;
                return;
            }
            StringBuilder sb2 = new StringBuilder("Starting location must be a valid index: [0, ");
            sb2.append(q0.this.size() - 1);
            sb2.append("]. Index was ");
            sb2.append(r52);
            throw new IndexOutOfBoundsException(sb2.toString());
        }

        @Override // java.util.ListIterator
        public final void add(E e10) {
            q0 q0Var = q0.this;
            q0Var.f7794c.b();
            a();
            try {
                int r12 = this.f7796a;
                q0Var.add(r12, e10);
                this.f7797b = -1;
                this.f7796a = r12 + 1;
                this.f7798c = ((AbstractList) q0Var).modCount;
            } catch (IndexOutOfBoundsException unused) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return this.f7796a != 0;
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.f7796a;
        }

        @Override // java.util.ListIterator
        public final E previous() {
            a();
            int r02 = this.f7796a - 1;
            try {
                E e10 = (E) q0.this.get(r02);
                this.f7796a = r02;
                this.f7797b = r02;
                return e10;
            } catch (IndexOutOfBoundsException unused) {
                a();
                throw new NoSuchElementException(androidx.appcompat.graphics.drawable.a.f("Cannot access index less than zero. This was ", r02, ". Remember to check hasPrevious() before using previous()."));
            }
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.f7796a - 1;
        }

        @Override // java.util.ListIterator
        public final void set(E e10) {
            q0 q0Var = q0.this;
            q0Var.f7794c.b();
            if (this.f7797b < 0) {
                throw new IllegalStateException();
            }
            a();
            try {
                q0Var.set(this.f7797b, e10);
                this.f7798c = ((AbstractList) q0Var).modCount;
            } catch (IndexOutOfBoundsException unused) {
                throw new ConcurrentModificationException();
            }
        }
    }

    public q0() {
        this.f7794c = null;
        this.f7793b = null;
        this.f7795d = new ArrayList();
    }

    public q0(io.realm.a aVar, OsList osList, Class cls) {
        x<E> cVar;
        this.f7792a = cls;
        if (s0.class.isAssignableFrom(cls)) {
            cVar = new t0<>(aVar, osList, cls);
        } else if (cls == String.class) {
            cVar = new b1(aVar, osList, cls);
        } else {
            int r12 = 1;
            if (cls == Long.class || cls == Integer.class || cls == Short.class || cls == Byte.class) {
                cVar = new c(aVar, osList, cls, r12);
            } else {
                int r22 = 0;
                if (cls == Boolean.class) {
                    cVar = new e(aVar, osList, cls, r22);
                } else if (cls == byte[].class) {
                    cVar = new c(aVar, osList, cls, r22);
                } else if (cls == Double.class) {
                    cVar = new l(aVar, osList, cls);
                } else if (cls == Float.class) {
                    cVar = new q(aVar, osList, cls);
                } else if (cls == Date.class) {
                    cVar = new h(aVar, osList, cls);
                } else if (cls == Decimal128.class) {
                    cVar = new j(aVar, osList, cls);
                } else if (cls == ObjectId.class) {
                    cVar = new e(aVar, osList, cls, r12);
                } else if (cls == UUID.class) {
                    cVar = new c(aVar, osList, cls, 2);
                } else {
                    if (cls != h0.class) {
                        throw new IllegalArgumentException("Unexpected value class: ".concat(cls.getName()));
                    }
                    cVar = new i0(aVar, osList, cls);
                }
            }
        }
        this.f7793b = cVar;
        this.f7794c = aVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int r22, E e10) {
        if (x()) {
            w();
            x<E> xVar = this.f7793b;
            xVar.c(e10);
            if (e10 == null) {
                xVar.e(r22);
            } else {
                xVar.f(r22, e10);
            }
        } else {
            this.f7795d.add(r22, e10);
        }
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        if (x()) {
            w();
            this.f7793b.f7889b.I();
        } else {
            this.f7795d.clear();
        }
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (!x()) {
            return this.f7795d.contains(obj);
        }
        this.f7794c.b();
        if ((obj instanceof io.realm.internal.n) && ((io.realm.internal.n) obj).b().f7531c == io.realm.internal.g.f7661a) {
            return false;
        }
        return super.contains(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int r22) {
        if (!x()) {
            return (E) this.f7795d.get(r22);
        }
        w();
        return this.f7793b.d(r22);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<E> iterator() {
        return x() ? new a() : super.iterator();
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<E> listIterator(int r22) {
        return x() ? new b(r22) : super.listIterator(r22);
    }

    @Override // java.util.AbstractList, java.util.List
    public final E remove(int r52) {
        E e10;
        if (x()) {
            w();
            e10 = get(r52);
            this.f7793b.f7889b.H(r52);
        } else {
            e10 = (E) this.f7795d.remove(r52);
        }
        ((AbstractList) this).modCount++;
        return e10;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        if (!x() || this.f7794c.k()) {
            return super.remove(obj);
        }
        throw new IllegalStateException("Objects can only be removed from inside a write transaction.");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection<?> collection) {
        if (!x() || this.f7794c.k()) {
            return super.removeAll(collection);
        }
        throw new IllegalStateException("Objects can only be removed from inside a write transaction.");
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int r32, E e10) {
        if (!x()) {
            return (E) this.f7795d.set(r32, e10);
        }
        w();
        x<E> xVar = this.f7793b;
        xVar.c(e10);
        E eD = xVar.d(r32);
        if (e10 == null) {
            xVar.g(r32);
            return eD;
        }
        xVar.h(r32, e10);
        return eD;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        if (!x()) {
            return this.f7795d.size();
        }
        w();
        long jW = this.f7793b.f7889b.W();
        if (jW < 2147483647L) {
            return (int) jW;
        }
        return Integer.MAX_VALUE;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00f2  */
    @Override // java.util.AbstractCollection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.q0.toString():java.lang.String");
    }

    public final void w() {
        this.f7794c.b();
    }

    public final boolean x() {
        return this.f7794c != null;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e10) {
        if (x()) {
            w();
            x<E> xVar = this.f7793b;
            xVar.c(e10);
            if (e10 == null) {
                xVar.f7889b.h();
            } else {
                xVar.a(e10);
            }
        } else {
            this.f7795d.add(e10);
        }
        ((AbstractList) this).modCount++;
        return true;
    }
}
