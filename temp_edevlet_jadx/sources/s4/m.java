package s4;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public abstract class m<K, V> extends o<K, V> implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final transient Map<K, Collection<V>> f15071c;

    /* renamed from: d, reason: collision with root package name */
    public transient int f15072d;

    public m(x xVar) {
        if (!xVar.isEmpty()) {
            throw new IllegalArgumentException();
        }
        this.f15071c = xVar;
    }

    @Override // s4.p0
    public final boolean b(@NullableDecl z1 z1Var, @NullableDecl Long l5) {
        Map<K, Collection<V>> map = this.f15071c;
        Collection collection = (Collection) map.get(z1Var);
        if (collection != null) {
            if (!collection.add(l5)) {
                return false;
            }
            this.f15072d++;
            return true;
        }
        ArrayList arrayList = new ArrayList(3);
        if (!arrayList.add(l5)) {
            throw new AssertionError("New Collection violated the Collection spec");
        }
        this.f15072d++;
        map.put(z1Var, arrayList);
        return true;
    }
}
