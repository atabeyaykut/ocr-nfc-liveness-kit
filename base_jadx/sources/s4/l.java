package s4;

import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public class l extends j implements List {
    public final /* synthetic */ m f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(@NullableDecl m mVar, Object obj, @NullableDecl List list, j jVar) {
        super(mVar, obj, list, jVar);
        this.f = mVar;
    }

    @Override // java.util.List
    public final void add(int r32, Object obj) {
        b();
        boolean zIsEmpty = this.f15040b.isEmpty();
        ((List) this.f15040b).add(r32, obj);
        this.f.f15072d++;
        if (zIsEmpty) {
            h();
        }
    }

    @Override // java.util.List
    public final boolean addAll(int r42, Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zAddAll = ((List) this.f15040b).addAll(r42, collection);
        if (!zAddAll) {
            return zAddAll;
        }
        this.f.f15072d += this.f15040b.size() - size;
        if (size != 0) {
            return zAddAll;
        }
        h();
        return true;
    }

    @Override // java.util.List
    public final Object get(int r22) {
        b();
        return ((List) this.f15040b).get(r22);
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        b();
        return ((List) this.f15040b).indexOf(obj);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        b();
        return ((List) this.f15040b).lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        b();
        return new k(this);
    }

    @Override // java.util.List
    public final ListIterator listIterator(int r22) {
        b();
        return new k(this, r22);
    }

    @Override // java.util.List
    public final Object remove(int r32) {
        b();
        Object objRemove = ((List) this.f15040b).remove(r32);
        m mVar = this.f;
        mVar.f15072d--;
        l();
        return objRemove;
    }

    @Override // java.util.List
    public final Object set(int r22, Object obj) {
        b();
        return ((List) this.f15040b).set(r22, obj);
    }

    @Override // java.util.List
    public final List subList(int r42, int r52) {
        b();
        List listSubList = ((List) this.f15040b).subList(r42, r52);
        j jVar = this.f15041c;
        if (jVar == null) {
            jVar = this;
        }
        m mVar = this.f;
        mVar.getClass();
        boolean z10 = listSubList instanceof RandomAccess;
        Object obj = this.f15039a;
        return z10 ? new h(mVar, obj, listSubList, jVar) : new l(mVar, obj, listSubList, jVar);
    }
}
