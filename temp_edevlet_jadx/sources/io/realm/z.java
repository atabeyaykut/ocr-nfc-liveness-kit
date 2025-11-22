package io.realm;

import io.realm.h0;
import io.realm.internal.core.NativeRealmAny;

/* loaded from: classes2.dex */
public final class z extends k0 {
    public z() {
        super(h0.a.NULL);
    }

    public z(NativeRealmAny nativeRealmAny) {
        super(h0.a.NULL, nativeRealmAny);
    }

    @Override // io.realm.k0
    public final NativeRealmAny a() {
        return new NativeRealmAny();
    }

    @Override // io.realm.k0
    public final <T> T d(Class<T> cls) {
        return null;
    }

    public final boolean equals(Object obj) {
        return obj != null && z.class.equals(obj.getClass());
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public final String toString() {
        return "null";
    }
}
