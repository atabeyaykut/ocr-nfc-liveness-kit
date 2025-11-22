package io.realm;

import io.realm.h0;
import io.realm.internal.core.NativeRealmAny;
import java.util.Date;

/* loaded from: classes2.dex */
public final class i extends e0 {
    public i(NativeRealmAny nativeRealmAny) {
        super(nativeRealmAny.asDate(), h0.a.DATE, nativeRealmAny);
    }

    @Override // io.realm.k0
    public final NativeRealmAny a() {
        return new NativeRealmAny((Date) Date.class.cast(this.f7502c));
    }
}
