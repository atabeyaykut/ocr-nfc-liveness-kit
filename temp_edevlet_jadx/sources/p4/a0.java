package p4;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public abstract class a0<K, V> implements b1<K, V> {

    /* renamed from: a, reason: collision with root package name */
    @NullableDecl
    public transient r f12238a;

    /* renamed from: b, reason: collision with root package name */
    @NullableDecl
    public transient p f12239b;

    public final boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b1) {
            return g().equals(((b1) obj).g());
        }
        return false;
    }

    @Override // p4.b1
    public final Map<K, Collection<V>> g() {
        p pVar = this.f12239b;
        if (pVar != null) {
            return pVar;
        }
        y yVar = (y) this;
        p pVar2 = new p(yVar, yVar.f12772c);
        this.f12239b = pVar2;
        return pVar2;
    }

    public final int hashCode() {
        return g().hashCode();
    }

    @Override // p4.b1
    public final Set<K> j() {
        r rVar = this.f12238a;
        if (rVar != null) {
            return rVar;
        }
        y yVar = (y) this;
        r rVar2 = new r(yVar, yVar.f12772c);
        this.f12238a = rVar2;
        return rVar2;
    }

    public final String toString() {
        return ((p) g()).f12581c.toString();
    }
}
