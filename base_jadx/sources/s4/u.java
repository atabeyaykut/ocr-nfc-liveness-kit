package s4;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public final class u extends AbstractSet<Map.Entry> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x f15182a;

    public u(x xVar) {
        this.f15182a = xVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f15182a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@NullableDecl Object obj) {
        x xVar = this.f15182a;
        Map mapA = xVar.a();
        if (mapA != null) {
            return mapA.entrySet().contains(obj);
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            int r12 = xVar.d(entry.getKey());
            if (r12 != -1 && x5.a.A(xVar.f15216d[r12], entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry> iterator() {
        x xVar = this.f15182a;
        Map mapA = xVar.a();
        return mapA != null ? mapA.entrySet().iterator() : new s(xVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(@NullableDecl Object obj) {
        x xVar = this.f15182a;
        Map mapA = xVar.a();
        if (mapA != null) {
            return mapA.entrySet().remove(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (xVar.c()) {
            return false;
        }
        int r12 = (1 << (xVar.f15217e & 31)) - 1;
        int r13 = d9.d(entry.getKey(), entry.getValue(), r12, xVar.f15213a, xVar.f15214b, xVar.f15215c, xVar.f15216d);
        if (r13 == -1) {
            return false;
        }
        xVar.b(r13, r12);
        xVar.f--;
        xVar.f15217e += 32;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f15182a.size();
    }
}
