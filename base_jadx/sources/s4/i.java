package s4;

import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* loaded from: classes.dex */
public class i implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public final Iterator f15026a;

    /* renamed from: b, reason: collision with root package name */
    public final Collection f15027b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ j f15028c;

    public i(j jVar) {
        this.f15028c = jVar;
        Collection collection = jVar.f15040b;
        this.f15027b = collection;
        this.f15026a = collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    public i(j jVar, ListIterator listIterator) {
        this.f15028c = jVar;
        this.f15027b = jVar.f15040b;
        this.f15026a = listIterator;
    }

    final void a() {
        j jVar = this.f15028c;
        jVar.b();
        if (jVar.f15040b != this.f15027b) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        a();
        return this.f15026a.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        a();
        return this.f15026a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f15026a.remove();
        j jVar = this.f15028c;
        m mVar = jVar.f15043e;
        mVar.f15072d--;
        jVar.l();
    }
}
