package p4;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public class v extends AbstractCollection {

    /* renamed from: a, reason: collision with root package name */
    @NullableDecl
    public final Object f12737a;

    /* renamed from: b, reason: collision with root package name */
    public Collection f12738b;

    /* renamed from: c, reason: collision with root package name */
    @NullableDecl
    public final v f12739c;

    /* renamed from: d, reason: collision with root package name */
    @NullableDecl
    public final Collection f12740d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ y f12741e;

    public v(@NullableDecl y yVar, Object obj, @NullableDecl Collection collection, v vVar) {
        this.f12741e = yVar;
        this.f12737a = obj;
        this.f12738b = collection;
        this.f12739c = vVar;
        this.f12740d = vVar == null ? null : vVar.f12738b;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        b();
        boolean zIsEmpty = this.f12738b.isEmpty();
        boolean zAdd = this.f12738b.add(obj);
        if (!zAdd) {
            return zAdd;
        }
        this.f12741e.f12773d++;
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
        boolean zAddAll = this.f12738b.addAll(collection);
        if (!zAddAll) {
            return zAddAll;
        }
        this.f12741e.f12773d += this.f12738b.size() - size;
        if (size != 0) {
            return zAddAll;
        }
        h();
        return true;
    }

    final void b() {
        Collection collection;
        v vVar = this.f12739c;
        if (vVar != null) {
            vVar.b();
            if (vVar.f12738b != this.f12740d) {
                throw new ConcurrentModificationException();
            }
        } else {
            if (!this.f12738b.isEmpty() || (collection = (Collection) this.f12741e.f12772c.get(this.f12737a)) == null) {
                return;
            }
            this.f12738b = collection;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        int size = size();
        if (size == 0) {
            return;
        }
        this.f12738b.clear();
        this.f12741e.f12773d -= size;
        l();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        b();
        return this.f12738b.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean containsAll(Collection<?> collection) {
        b();
        return this.f12738b.containsAll(collection);
    }

    @Override // java.util.Collection
    public final boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        b();
        return this.f12738b.equals(obj);
    }

    final void h() {
        v vVar = this.f12739c;
        if (vVar != null) {
            vVar.h();
        } else {
            this.f12741e.f12772c.put(this.f12737a, this.f12738b);
        }
    }

    @Override // java.util.Collection
    public final int hashCode() {
        b();
        return this.f12738b.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        b();
        return new u(this);
    }

    final void l() {
        v vVar = this.f12739c;
        if (vVar != null) {
            vVar.l();
        } else if (this.f12738b.isEmpty()) {
            this.f12741e.f12772c.remove(this.f12737a);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        b();
        boolean zRemove = this.f12738b.remove(obj);
        if (zRemove) {
            y yVar = this.f12741e;
            yVar.f12773d--;
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
        boolean zRemoveAll = this.f12738b.removeAll(collection);
        if (zRemoveAll) {
            this.f12741e.f12773d += this.f12738b.size() - size;
            l();
        }
        return zRemoveAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection<?> collection) {
        collection.getClass();
        int size = size();
        boolean zRetainAll = this.f12738b.retainAll(collection);
        if (zRetainAll) {
            this.f12741e.f12773d += this.f12738b.size() - size;
            l();
        }
        return zRetainAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        b();
        return this.f12738b.size();
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        b();
        return this.f12738b.toString();
    }
}
