package p4;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public abstract class a1<K, V> extends AbstractMap<K, V> {

    /* renamed from: a, reason: collision with root package name */
    @NullableDecl
    public transient n f12240a;

    /* renamed from: b, reason: collision with root package name */
    @NullableDecl
    public transient z0 f12241b;

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        n nVar = this.f12240a;
        if (nVar != null) {
            return nVar;
        }
        n nVar2 = new n((p) this);
        this.f12240a = nVar2;
        return nVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection<V> values() {
        z0 z0Var = this.f12241b;
        if (z0Var != null) {
            return z0Var;
        }
        z0 z0Var2 = new z0(this);
        this.f12241b = z0Var2;
        return z0Var2;
    }
}
