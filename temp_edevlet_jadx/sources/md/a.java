package md;

import androidx.annotation.RequiresApi;
import gd.e;
import java.util.ArrayList;
import java.util.Collection;
import java.util.function.Predicate;
import kotlin.jvm.internal.h;

/* loaded from: classes2.dex */
public final class a<E> extends ArrayList<E> {

    /* renamed from: a, reason: collision with root package name */
    public b f10377a;

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e10) {
        boolean zAdd = super.add(e10);
        b bVar = this.f10377a;
        if (bVar != null) {
            ((e.a) bVar).a();
        }
        return zAdd;
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends E> elements) {
        h.f(elements, "elements");
        boolean zAddAll = super.addAll(elements);
        b bVar = this.f10377a;
        if (bVar != null) {
            ((e.a) bVar).a();
        }
        return zAddAll;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        super.clear();
        b bVar = this.f10377a;
        if (bVar != null) {
            ((e.a) bVar).a();
        }
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ E remove(int r12) {
        return (E) super.remove(r12);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        boolean zRemove = super.remove(obj);
        b bVar = this.f10377a;
        if (bVar != null) {
            ((e.a) bVar).a();
        }
        return zRemove;
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection<? extends Object> elements) {
        h.f(elements, "elements");
        boolean zRemoveAll = super.removeAll(elements);
        b bVar = this.f10377a;
        if (bVar != null) {
            ((e.a) bVar).a();
        }
        return zRemoveAll;
    }

    @Override // java.util.ArrayList, java.util.Collection
    @RequiresApi(24)
    public final boolean removeIf(Predicate<? super E> filter) {
        h.f(filter, "filter");
        boolean zRemoveIf = super.removeIf(filter);
        b bVar = this.f10377a;
        if (bVar != null) {
            ((e.a) bVar).a();
        }
        return zRemoveIf;
    }

    @Override // java.util.ArrayList, java.util.AbstractList
    public final void removeRange(int r12, int r22) {
        super.removeRange(r12, r22);
        b bVar = this.f10377a;
        if (bVar != null) {
            ((e.a) bVar).a();
        }
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final E set(int r12, E e10) {
        E e11 = (E) super.set(r12, e10);
        b bVar = this.f10377a;
        if (bVar != null) {
            ((e.a) bVar).a();
        }
        return e11;
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return super.size();
    }
}
