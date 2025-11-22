package io.realm;

import io.realm.h0;
import io.realm.internal.core.NativeRealmAny;

/* loaded from: classes2.dex */
public final class f extends e0 {
    public f(NativeRealmAny nativeRealmAny) {
        super(Boolean.valueOf(nativeRealmAny.asBoolean()), h0.a.BOOLEAN, nativeRealmAny);
    }

    public f(Boolean bool) {
        super(bool, h0.a.BOOLEAN);
    }

    @Override // io.realm.k0
    public final NativeRealmAny a() {
        return new NativeRealmAny((Boolean) Boolean.class.cast(this.f7502c));
    }
}
