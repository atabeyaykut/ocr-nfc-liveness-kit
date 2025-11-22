package io.realm;

import io.realm.h0;
import io.realm.internal.core.NativeRealmAny;

/* loaded from: classes2.dex */
public final class m extends e0 {
    public m(NativeRealmAny nativeRealmAny) {
        super(Double.valueOf(nativeRealmAny.asDouble()), h0.a.DOUBLE, nativeRealmAny);
    }

    @Override // io.realm.k0
    public final NativeRealmAny a() {
        return new NativeRealmAny((Double) Double.class.cast(this.f7502c));
    }
}
