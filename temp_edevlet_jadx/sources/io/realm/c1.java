package io.realm;

import io.realm.h0;
import io.realm.internal.core.NativeRealmAny;

/* loaded from: classes2.dex */
public final class c1 extends e0 {
    public c1(NativeRealmAny nativeRealmAny) {
        super(nativeRealmAny.asString(), h0.a.STRING, nativeRealmAny);
    }

    public c1(String str) {
        super(str, h0.a.STRING);
    }

    @Override // io.realm.k0
    public final NativeRealmAny a() {
        return new NativeRealmAny((String) String.class.cast(this.f7502c));
    }
}
