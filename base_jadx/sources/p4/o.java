package p4;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public final class o implements Iterator<Map.Entry> {

    /* renamed from: a, reason: collision with root package name */
    public final Iterator<Map.Entry> f12534a;

    /* renamed from: b, reason: collision with root package name */
    @NullableDecl
    public Collection f12535b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ p f12536c;

    public o(p pVar) {
        this.f12536c = pVar;
        this.f12534a = pVar.f12581c.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f12534a.hasNext();
    }

    @Override // java.util.Iterator
    public final Map.Entry next() {
        Map.Entry next = this.f12534a.next();
        this.f12535b = (Collection) next.getValue();
        Object key = next.getKey();
        y yVar = this.f12536c.f12582d;
        Collection collection = (Collection) next.getValue();
        c0 c0Var = (c0) yVar;
        c0Var.getClass();
        List list = (List) collection;
        return new p0(key, list instanceof RandomAccess ? new s(c0Var, key, list, null) : new x(c0Var, key, list, null));
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!(this.f12535b != null)) {
            throw new IllegalStateException("no calls to next() since the last call to remove()");
        }
        this.f12534a.remove();
        this.f12536c.f12582d.f12773d -= this.f12535b.size();
        this.f12535b.clear();
        this.f12535b = null;
    }
}
