package p4;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public final class g0 extends AbstractSet<Map.Entry> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l0 f12354a;

    public g0(l0 l0Var) {
        this.f12354a = l0Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f12354a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@NullableDecl Object obj) {
        l0 l0Var = this.f12354a;
        Map mapA = l0Var.a();
        if (mapA != null) {
            return mapA.entrySet().contains(obj);
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            int r12 = l0Var.d(entry.getKey());
            if (r12 != -1 && m0.b(l0Var.f12465d[r12], entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry> iterator() {
        l0 l0Var = this.f12354a;
        Map mapA = l0Var.a();
        return mapA != null ? mapA.entrySet().iterator() : new e0(l0Var);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(@NullableDecl Object obj) {
        l0 l0Var = this.f12354a;
        Map mapA = l0Var.a();
        if (mapA != null) {
            return mapA.entrySet().remove(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (l0Var.c()) {
            return false;
        }
        int r12 = (1 << (l0Var.f12466e & 31)) - 1;
        int r13 = m0.c(entry.getKey(), entry.getValue(), r12, l0Var.f12462a, l0Var.f12463b, l0Var.f12464c, l0Var.f12465d);
        if (r13 == -1) {
            return false;
        }
        l0Var.b(r13, r12);
        l0Var.f--;
        l0Var.f12466e += 32;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f12354a.size();
    }
}
