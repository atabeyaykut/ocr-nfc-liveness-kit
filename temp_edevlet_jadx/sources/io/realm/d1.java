package io.realm;

import io.realm.h0;
import io.realm.internal.core.NativeRealmAny;
import java.util.UUID;

/* loaded from: classes2.dex */
public final class d1 extends e0 {
    public d1(NativeRealmAny nativeRealmAny) {
        super(nativeRealmAny.asUUID(), h0.a.UUID, nativeRealmAny);
    }

    @Override // io.realm.k0
    public final NativeRealmAny a() {
        return new NativeRealmAny((UUID) UUID.class.cast(this.f7502c));
    }
}
