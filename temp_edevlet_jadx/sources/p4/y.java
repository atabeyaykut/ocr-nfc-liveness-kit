package p4;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public abstract class y<K, V> extends a0<K, V> implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final transient Map<K, Collection<V>> f12772c;

    /* renamed from: d, reason: collision with root package name */
    public transient int f12773d;

    public y(l0 l0Var) {
        if (!l0Var.isEmpty()) {
            throw new IllegalArgumentException();
        }
        this.f12772c = l0Var;
    }

    @Override // p4.b1
    public final boolean b(@NullableDecl a2 a2Var, @NullableDecl Long l5) {
        Map<K, Collection<V>> map = this.f12772c;
        Collection collection = (Collection) map.get(a2Var);
        if (collection != null) {
            if (!collection.add(l5)) {
                return false;
            }
            this.f12773d++;
            return true;
        }
        ArrayList arrayList = new ArrayList(3);
        if (!arrayList.add(l5)) {
            throw new AssertionError("New Collection violated the Collection spec");
        }
        this.f12773d++;
        map.put(a2Var, arrayList);
        return true;
    }
}
