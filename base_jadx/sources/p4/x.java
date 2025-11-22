package p4;

import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public class x extends v implements List {
    public final /* synthetic */ y f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(@NullableDecl y yVar, Object obj, @NullableDecl List list, v vVar) {
        super(yVar, obj, list, vVar);
        this.f = yVar;
    }

    @Override // java.util.List
    public final void add(int r32, Object obj) {
        b();
        boolean zIsEmpty = this.f12738b.isEmpty();
        ((List) this.f12738b).add(r32, obj);
        this.f.f12773d++;
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
        boolean zAddAll = ((List) this.f12738b).addAll(r42, collection);
        if (!zAddAll) {
            return zAddAll;
        }
        this.f.f12773d += this.f12738b.size() - size;
        if (size != 0) {
            return zAddAll;
        }
        h();
        return true;
    }

    @Override // java.util.List
    public final Object get(int r22) {
        b();
        return ((List) this.f12738b).get(r22);
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        b();
        return ((List) this.f12738b).indexOf(obj);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        b();
        return ((List) this.f12738b).lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        b();
        return new w(this);
    }

    @Override // java.util.List
    public final ListIterator listIterator(int r22) {
        b();
        return new w(this, r22);
    }

    @Override // java.util.List
    public final Object remove(int r32) {
        b();
        Object objRemove = ((List) this.f12738b).remove(r32);
        y yVar = this.f;
        yVar.f12773d--;
        l();
        return objRemove;
    }

    @Override // java.util.List
    public final Object set(int r22, Object obj) {
        b();
        return ((List) this.f12738b).set(r22, obj);
    }

    @Override // java.util.List
    public final List subList(int r42, int r52) {
        b();
        List listSubList = ((List) this.f12738b).subList(r42, r52);
        v vVar = this.f12739c;
        if (vVar == null) {
            vVar = this;
        }
        y yVar = this.f;
        yVar.getClass();
        boolean z10 = listSubList instanceof RandomAccess;
        Object obj = this.f12737a;
        return z10 ? new s(yVar, obj, listSubList, vVar) : new x(yVar, obj, listSubList, vVar);
    }
}
