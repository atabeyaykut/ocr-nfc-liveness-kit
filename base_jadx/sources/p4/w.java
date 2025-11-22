package p4;

import java.util.List;
import java.util.ListIterator;

/* loaded from: classes.dex */
public final class w extends u implements ListIterator {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ x f12756d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(x xVar) {
        super(xVar);
        this.f12756d = xVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(x xVar, int r32) {
        super(xVar, ((List) xVar.f12738b).listIterator(r32));
        this.f12756d = xVar;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        x xVar = this.f12756d;
        boolean zIsEmpty = xVar.isEmpty();
        a();
        ((ListIterator) this.f12700a).add(obj);
        xVar.f.f12773d++;
        if (zIsEmpty) {
            xVar.h();
        }
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        a();
        return ((ListIterator) this.f12700a).hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        a();
        return ((ListIterator) this.f12700a).nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        a();
        return ((ListIterator) this.f12700a).previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        a();
        return ((ListIterator) this.f12700a).previousIndex();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        a();
        ((ListIterator) this.f12700a).set(obj);
    }
}
