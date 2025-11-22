package s4;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public class q<K, V> extends m<Object, Object> implements e0<Object, Object> {
    public q(x xVar) {
        super(xVar);
    }

    @Override // s4.e0
    public final l a(Object obj) {
        Collection<V> arrayList = this.f15071c.get(obj);
        if (arrayList == null) {
            arrayList = new ArrayList<>(3);
        }
        List list = (List) arrayList;
        return list instanceof RandomAccess ? new h(this, obj, list, null) : new l(this, obj, list, null);
    }
}
