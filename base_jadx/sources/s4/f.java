package s4;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public final class f implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    @NullableDecl
    public Map.Entry f14969a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Iterator f14970b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ g f14971c;

    public f(g gVar, Iterator it) {
        this.f14971c = gVar;
        this.f14970b = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f14970b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.f14970b.next();
        this.f14969a = entry;
        return entry.getKey();
    }

    @Override // java.util.Iterator
    public final void remove() {
        Map.Entry entry = this.f14969a;
        if (!(entry != null)) {
            throw new IllegalStateException("no calls to next() since the last call to remove()");
        }
        Collection collection = (Collection) entry.getValue();
        this.f14970b.remove();
        this.f14971c.f14982c.f15072d -= collection.size();
        collection.clear();
        this.f14969a = null;
    }
}
