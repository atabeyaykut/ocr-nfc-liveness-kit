package s4;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public abstract class n0<K, V> extends AbstractMap<K, V> {

    /* renamed from: a, reason: collision with root package name */
    @NullableDecl
    public transient c f15095a;

    /* renamed from: b, reason: collision with root package name */
    @NullableDecl
    public transient m0 f15096b;

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        c cVar = this.f15095a;
        if (cVar != null) {
            return cVar;
        }
        c cVar2 = new c((e) this);
        this.f15095a = cVar2;
        return cVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection<V> values() {
        m0 m0Var = this.f15096b;
        if (m0Var != null) {
            return m0Var;
        }
        m0 m0Var2 = new m0(this);
        this.f15096b = m0Var2;
        return m0Var2;
    }
}
