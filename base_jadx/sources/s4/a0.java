package s4;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public final class a0<K, V> extends n<K, V> implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    @NullableDecl
    public final K f14872a;

    /* renamed from: b, reason: collision with root package name */
    @NullableDecl
    public final V f14873b;

    /* JADX WARN: Multi-variable type inference failed */
    public a0(@NullableDecl Object obj, @NullableDecl l lVar) {
        this.f14872a = obj;
        this.f14873b = lVar;
    }

    @Override // s4.n, java.util.Map.Entry
    @NullableDecl
    public final K getKey() {
        return this.f14872a;
    }

    @Override // s4.n, java.util.Map.Entry
    @NullableDecl
    public final V getValue() {
        return this.f14873b;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v10) {
        throw new UnsupportedOperationException();
    }
}
