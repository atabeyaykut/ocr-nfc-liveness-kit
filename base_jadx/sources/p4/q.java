package p4;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public final class q implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    @NullableDecl
    public Map.Entry f12607a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Iterator f12608b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ r f12609c;

    public q(r rVar, Iterator it) {
        this.f12609c = rVar;
        this.f12608b = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f12608b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.f12608b.next();
        this.f12607a = entry;
        return entry.getKey();
    }

    @Override // java.util.Iterator
    public final void remove() {
        Map.Entry entry = this.f12607a;
        if (!(entry != null)) {
            throw new IllegalStateException("no calls to next() since the last call to remove()");
        }
        Collection collection = (Collection) entry.getValue();
        this.f12608b.remove();
        this.f12609c.f12631c.f12773d -= collection.size();
        collection.clear();
        this.f12607a = null;
    }
}
