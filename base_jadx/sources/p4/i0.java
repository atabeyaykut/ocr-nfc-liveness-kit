package p4;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public final class i0 extends AbstractSet {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l0 f12396a;

    public i0(l0 l0Var) {
        this.f12396a = l0Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f12396a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f12396a.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        l0 l0Var = this.f12396a;
        Map mapA = l0Var.a();
        return mapA != null ? mapA.keySet().iterator() : new d0(l0Var);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(@NullableDecl Object obj) {
        l0 l0Var = this.f12396a;
        Map mapA = l0Var.a();
        return mapA != null ? mapA.keySet().remove(obj) : l0Var.f(obj) != l0.f12461k;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f12396a.size();
    }
}
