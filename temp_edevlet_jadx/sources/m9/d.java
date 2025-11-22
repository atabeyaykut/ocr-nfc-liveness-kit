package m9;

import java.util.AbstractList;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class d<E> extends AbstractList<E> implements List<E>, y9.b {
    public abstract int l();

    public abstract E m(int r12);

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ E remove(int r12) {
        return m(r12);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return l();
    }
}
