package s4;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public final class v extends AbstractSet {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x f15195a;

    public v(x xVar) {
        this.f15195a = xVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f15195a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f15195a.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        x xVar = this.f15195a;
        Map mapA = xVar.a();
        return mapA != null ? mapA.keySet().iterator() : new r(xVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(@NullableDecl Object obj) {
        x xVar = this.f15195a;
        Map mapA = xVar.a();
        return mapA != null ? mapA.keySet().remove(obj) : xVar.f(obj) != x.f15212k;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f15195a.size();
    }
}
