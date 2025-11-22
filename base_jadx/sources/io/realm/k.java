package io.realm;

import io.realm.h0;
import io.realm.internal.core.NativeRealmAny;
import org.bson.types.Decimal128;

/* loaded from: classes2.dex */
public final class k extends e0 {
    public k(NativeRealmAny nativeRealmAny) {
        super(nativeRealmAny.asDecimal128(), h0.a.DECIMAL128, nativeRealmAny);
    }

    @Override // io.realm.k0
    public final NativeRealmAny a() {
        return new NativeRealmAny((Decimal128) Decimal128.class.cast(this.f7502c));
    }
}
