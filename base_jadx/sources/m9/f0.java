package m9;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class f0<T> extends d<T> {

    /* renamed from: a, reason: collision with root package name */
    public final List<T> f10161a;

    public f0(ArrayList arrayList) {
        this.f10161a = arrayList;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int r42, T t10) {
        if (new ca.d(0, size()).l(r42)) {
            this.f10161a.add(size() - r42, t10);
        } else {
            StringBuilder sbE = androidx.appcompat.widget.v.e("Position index ", r42, " must be in range [");
            sbE.append(new ca.d(0, size()));
            sbE.append("].");
            throw new IndexOutOfBoundsException(sbE.toString());
        }
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.f10161a.clear();
    }

    @Override // java.util.AbstractList, java.util.List
    public final T get(int r22) {
        return this.f10161a.get(p.S0(r22, this));
    }

    @Override // m9.d
    public final int l() {
        return this.f10161a.size();
    }

    @Override // m9.d
    public final T m(int r22) {
        return this.f10161a.remove(p.S0(r22, this));
    }

    @Override // java.util.AbstractList, java.util.List
    public final T set(int r22, T t10) {
        return this.f10161a.set(p.S0(r22, this), t10);
    }
}
