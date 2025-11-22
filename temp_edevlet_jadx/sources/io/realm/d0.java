package io.realm;

import io.realm.internal.OsResults;
import io.realm.internal.UncheckedRow;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;

/* loaded from: classes2.dex */
public abstract class d0<E> extends AbstractList<E> implements OrderedRealmCollection<E> {

    /* renamed from: a, reason: collision with root package name */
    public final io.realm.a f7490a;

    /* renamed from: b, reason: collision with root package name */
    public final Class<E> f7491b;

    /* renamed from: c, reason: collision with root package name */
    public final String f7492c;

    /* renamed from: d, reason: collision with root package name */
    public final OsResults f7493d;

    /* renamed from: e, reason: collision with root package name */
    public final a<E> f7494e;

    public static abstract class a<T> {

        /* renamed from: a, reason: collision with root package name */
        public final io.realm.a f7495a;

        /* renamed from: b, reason: collision with root package name */
        public final OsResults f7496b;

        /* renamed from: c, reason: collision with root package name */
        public final Class<T> f7497c;

        /* renamed from: d, reason: collision with root package name */
        public final String f7498d;

        public a(io.realm.a aVar, OsResults osResults, Class<T> cls, String str) {
            this.f7495a = aVar;
            this.f7496b = osResults;
            this.f7497c = cls;
            this.f7498d = str;
        }

        public abstract T a(int r12);

        public abstract T b(int r12, OsResults osResults);
    }

    public static class b<T> extends a<T> {
        public b(io.realm.a aVar, OsResults osResults, Class<T> cls, String str) {
            super(aVar, osResults, cls, str);
        }

        @Override // io.realm.d0.a
        public final T a(int r42) {
            UncheckedRow uncheckedRowC = this.f7496b.c(r42);
            return (T) this.f7495a.g(this.f7497c, this.f7498d, uncheckedRowC);
        }

        @Override // io.realm.d0.a
        public final T b(int r32, OsResults osResults) {
            return (T) this.f7495a.g(this.f7497c, this.f7498d, osResults.c(r32));
        }
    }

    public class c extends OsResults.a<E> {
        public c() {
            super(d0.this.f7493d);
        }

        @Override // io.realm.internal.OsResults.a
        public final E b(int r22, OsResults osResults) {
            return d0.this.f7494e.b(r22, osResults);
        }
    }

    public class d extends OsResults.b<E> {
        public d(int r22) {
            super(r22, d0.this.f7493d);
        }

        @Override // io.realm.internal.OsResults.a
        public final E b(int r22, OsResults osResults) {
            return d0.this.f7494e.b(r22, osResults);
        }
    }

    public d0(io.realm.a aVar, OsResults osResults, Class<E> cls, String str, a<E> aVar2) {
        this.f7490a = aVar;
        this.f7493d = osResults;
        this.f7491b = cls;
        this.f7492c = str;
        this.f7494e = aVar2;
    }

    @Override // java.util.AbstractList, java.util.List
    @Deprecated
    public final void add(int r12, E e10) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public final boolean add(E e10) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractList, java.util.List
    @Deprecated
    public final boolean addAll(int r12, Collection<? extends E> collection) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        y0 y0Var = (y0) this;
        y0Var.f7490a.b();
        if (!y0Var.f7493d.f7616d || ((obj instanceof io.realm.internal.n) && ((io.realm.internal.n) obj).b().f7531c == io.realm.internal.g.f7661a)) {
            return false;
        }
        c cVar = new c();
        while (cVar.hasNext()) {
            E next = cVar.next();
            if ((next instanceof byte[]) && (obj instanceof byte[])) {
                if (Arrays.equals((byte[]) next, (byte[]) obj)) {
                    return true;
                }
            } else {
                if (next != null && next.equals(obj)) {
                    return true;
                }
                if (next == null && obj == null) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int r22) {
        this.f7490a.b();
        return this.f7494e.a(r22);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<E> iterator() {
        return new c();
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<E> listIterator() {
        return new d(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<E> listIterator(int r22) {
        return new d(r22);
    }

    @Override // java.util.AbstractList, java.util.List
    @Deprecated
    public final E remove(int r22) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractList, java.util.List
    @Deprecated
    public final E set(int r12, E e10) {
        throw new UnsupportedOperationException("This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        y0 y0Var = (y0) this;
        y0Var.f7490a.b();
        if (!y0Var.f7493d.f7616d) {
            return 0;
        }
        long jF = this.f7493d.f();
        if (jF > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) jF;
    }
}
