package s4;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public abstract class o<K, V> implements p0<K, V> {

    /* renamed from: a, reason: collision with root package name */
    @NullableDecl
    public transient g f15114a;

    /* renamed from: b, reason: collision with root package name */
    @NullableDecl
    public transient e f15115b;

    public final boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof p0) {
            return g().equals(((p0) obj).g());
        }
        return false;
    }

    @Override // s4.p0
    public final Map<K, Collection<V>> g() {
        e eVar = this.f15115b;
        if (eVar != null) {
            return eVar;
        }
        m mVar = (m) this;
        e eVar2 = new e(mVar, mVar.f15071c);
        this.f15115b = eVar2;
        return eVar2;
    }

    public final int hashCode() {
        return g().hashCode();
    }

    @Override // s4.p0
    public final Set<K> j() {
        g gVar = this.f15114a;
        if (gVar != null) {
            return gVar;
        }
        m mVar = (m) this;
        g gVar2 = new g(mVar, mVar.f15071c);
        this.f15114a = gVar2;
        return gVar2;
    }

    public final String toString() {
        return ((e) g()).f14957c.toString();
    }
}
