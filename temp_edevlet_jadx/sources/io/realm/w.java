package io.realm;

import io.realm.h0;
import io.realm.internal.core.NativeRealmAny;

/* loaded from: classes2.dex */
public final class w extends e0 {
    public w(NativeRealmAny nativeRealmAny) {
        super(Long.valueOf(nativeRealmAny.asLong()), h0.a.INTEGER, nativeRealmAny);
    }

    public w(Integer num) {
        super(num, h0.a.INTEGER);
    }

    @Override // io.realm.k0
    public final NativeRealmAny a() {
        return new NativeRealmAny((Number) Number.class.cast(this.f7502c));
    }

    @Override // io.realm.e0
    public final boolean equals(Object obj) {
        return obj != null && w.class.equals(obj.getClass()) && ((Number) Number.class.cast(this.f7502c)).longValue() == ((Number) ((k0) obj).d(Number.class)).longValue();
    }
}
