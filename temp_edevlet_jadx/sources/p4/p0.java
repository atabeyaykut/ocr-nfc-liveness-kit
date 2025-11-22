package p4;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public final class p0<K, V> extends z<K, V> implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    @NullableDecl
    public final K f12583a;

    /* renamed from: b, reason: collision with root package name */
    @NullableDecl
    public final V f12584b;

    /* JADX WARN: Multi-variable type inference failed */
    public p0(@NullableDecl Object obj, @NullableDecl x xVar) {
        this.f12583a = obj;
        this.f12584b = xVar;
    }

    @Override // p4.z, java.util.Map.Entry
    @NullableDecl
    public final K getKey() {
        return this.f12583a;
    }

    @Override // p4.z, java.util.Map.Entry
    @NullableDecl
    public final V getValue() {
        return this.f12584b;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v10) {
        throw new UnsupportedOperationException();
    }
}
