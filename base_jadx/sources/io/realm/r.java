package io.realm;

import io.realm.h0;
import io.realm.internal.core.NativeRealmAny;

/* loaded from: classes2.dex */
public final class r extends e0 {
    public r(NativeRealmAny nativeRealmAny) {
        super(Float.valueOf(nativeRealmAny.asFloat()), h0.a.FLOAT, nativeRealmAny);
    }

    @Override // io.realm.k0
    public final NativeRealmAny a() {
        return new NativeRealmAny((Float) Float.class.cast(this.f7502c));
    }
}
