package p4;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public class c0<K, V> extends y<Object, Object> implements v0<Object, Object> {
    public c0(l0 l0Var) {
        super(l0Var);
    }

    @Override // p4.v0
    public final x a(Object obj) {
        Collection<V> arrayList = this.f12772c.get(obj);
        if (arrayList == null) {
            arrayList = new ArrayList<>(3);
        }
        List list = (List) arrayList;
        return list instanceof RandomAccess ? new s(this, obj, list, null) : new x(this, obj, list, null);
    }
}
