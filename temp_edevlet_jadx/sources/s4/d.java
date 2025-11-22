package s4;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public final class d implements Iterator<Map.Entry> {

    /* renamed from: a, reason: collision with root package name */
    public final Iterator<Map.Entry> f14944a;

    /* renamed from: b, reason: collision with root package name */
    @NullableDecl
    public Collection f14945b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e f14946c;

    public d(e eVar) {
        this.f14946c = eVar;
        this.f14944a = eVar.f14957c.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f14944a.hasNext();
    }

    @Override // java.util.Iterator
    public final Map.Entry next() {
        Map.Entry next = this.f14944a.next();
        this.f14945b = (Collection) next.getValue();
        Object key = next.getKey();
        m mVar = this.f14946c.f14958d;
        Collection collection = (Collection) next.getValue();
        q qVar = (q) mVar;
        qVar.getClass();
        List list = (List) collection;
        return new a0(key, list instanceof RandomAccess ? new h(qVar, key, list, null) : new l(qVar, key, list, null));
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!(this.f14945b != null)) {
            throw new IllegalStateException("no calls to next() since the last call to remove()");
        }
        this.f14944a.remove();
        this.f14946c.f14958d.f15072d -= this.f14945b.size();
        this.f14945b.clear();
        this.f14945b = null;
    }
}
