package p4;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public interface b1<K, V> {
    boolean b(@NullableDecl a2 a2Var, @NullableDecl Long l5);

    Map<K, Collection<V>> g();

    Set<K> j();
}
