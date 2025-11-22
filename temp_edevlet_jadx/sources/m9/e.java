package m9;

import java.util.AbstractSet;
import java.util.Set;

/* loaded from: classes2.dex */
public abstract class e<E> extends AbstractSet<E> implements Set<E>, y9.c {
    public abstract int l();

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ int size() {
        return l();
    }
}
