package s4;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public class j extends AbstractCollection {

    /* renamed from: a, reason: collision with root package name */
    @NullableDecl
    public final Object f15039a;

    /* renamed from: b, reason: collision with root package name */
    public Collection f15040b;

    /* renamed from: c, reason: collision with root package name */
    @NullableDecl
    public final j f15041c;

    /* renamed from: d, reason: collision with root package name */
    @NullableDecl
    public final Collection f15042d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ m f15043e;

    public j(@NullableDecl m mVar, Object obj, @NullableDecl Collection collection, j jVar) {
        this.f15043e = mVar;
        this.f15039a = obj;
        this.f15040b = collection;
        this.f15041c = jVar;
        this.f15042d = jVar == null ? null : jVar.f15040b;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        b();
        boolean zIsEmpty = this.f15040b.isEmpty();
        boolean zAdd = this.f15040b.add(obj);
        if (!zAdd) {
            return zAdd;
        }
        this.f15043e.f15072d++;
        if (!zIsEmpty) {
            return zAdd;
        }
        h();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zAddAll = this.f15040b.addAll(collection);
        if (!zAddAll) {
            return zAddAll;
        }
        this.f15043e.f15072d += this.f15040b.size() - size;
        if (size != 0) {
            return zAddAll;
        }
        h();
        return true;
    }

    final void b() {
        Collection collection;
        j jVar = this.f15041c;
        if (jVar != null) {
            jVar.b();
            if (jVar.f15040b != this.f15042d) {
                throw new ConcurrentModificationException();
            }
        } else {
            if (!this.f15040b.isEmpty() || (collection = (Collection) this.f15043e.f15071c.get(this.f15039a)) == null) {
                return;
            }
            this.f15040b = collection;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        int size = size();
        if (size == 0) {
            return;
        }
        this.f15040b.clear();
        this.f15043e.f15072d -= size;
        l();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        b();
        return this.f15040b.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean containsAll(Collection<?> collection) {
        b();
        return this.f15040b.containsAll(collection);
    }

    @Override // java.util.Collection
    public final boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        b();
        return this.f15040b.equals(obj);
    }

    final void h() {
        j jVar = this.f15041c;
        if (jVar != null) {
            jVar.h();
        } else {
            this.f15043e.f15071c.put(this.f15039a, this.f15040b);
        }
    }

    @Override // java.util.Collection
    public final int hashCode() {
        b();
        return this.f15040b.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        b();
        return new i(this);
    }

    final void l() {
        j jVar = this.f15041c;
        if (jVar != null) {
            jVar.l();
        } else if (this.f15040b.isEmpty()) {
            this.f15043e.f15071c.remove(this.f15039a);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        b();
        boolean zRemove = this.f15040b.remove(obj);
        if (zRemove) {
            m mVar = this.f15043e;
            mVar.f15072d--;
            l();
        }
        return zRemove;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection<?> collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zRemoveAll = this.f15040b.removeAll(collection);
        if (zRemoveAll) {
            this.f15043e.f15072d += this.f15040b.size() - size;
            l();
        }
        return zRemoveAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection<?> collection) {
        collection.getClass();
        int size = size();
        boolean zRetainAll = this.f15040b.retainAll(collection);
        if (zRetainAll) {
            this.f15043e.f15072d += this.f15040b.size() - size;
            l();
        }
        return zRetainAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        b();
        return this.f15040b.size();
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        b();
        return this.f15040b.toString();
    }
}
