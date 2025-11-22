package s4;

import java.util.List;
import java.util.ListIterator;

/* loaded from: classes.dex */
public final class k extends i implements ListIterator {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ l f15053d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(l lVar) {
        super(lVar);
        this.f15053d = lVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(l lVar, int r32) {
        super(lVar, ((List) lVar.f15040b).listIterator(r32));
        this.f15053d = lVar;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        l lVar = this.f15053d;
        boolean zIsEmpty = lVar.isEmpty();
        a();
        ((ListIterator) this.f15026a).add(obj);
        lVar.f.f15072d++;
        if (zIsEmpty) {
            lVar.h();
        }
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        a();
        return ((ListIterator) this.f15026a).hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        a();
        return ((ListIterator) this.f15026a).nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        a();
        return ((ListIterator) this.f15026a).previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        a();
        return ((ListIterator) this.f15026a).previousIndex();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        a();
        ((ListIterator) this.f15026a).set(obj);
    }
}
