package p4;

import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* loaded from: classes.dex */
public class u implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public final Iterator f12700a;

    /* renamed from: b, reason: collision with root package name */
    public final Collection f12701b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ v f12702c;

    public u(v vVar) {
        this.f12702c = vVar;
        Collection collection = vVar.f12738b;
        this.f12701b = collection;
        this.f12700a = collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    public u(v vVar, ListIterator listIterator) {
        this.f12702c = vVar;
        this.f12701b = vVar.f12738b;
        this.f12700a = listIterator;
    }

    final void a() {
        v vVar = this.f12702c;
        vVar.b();
        if (vVar.f12738b != this.f12701b) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        a();
        return this.f12700a.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        a();
        return this.f12700a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f12700a.remove();
        v vVar = this.f12702c;
        y yVar = vVar.f12741e;
        yVar.f12773d--;
        vVar.l();
    }
}
