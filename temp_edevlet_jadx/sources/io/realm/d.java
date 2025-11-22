package io.realm;

import io.realm.h0;
import io.realm.internal.core.NativeRealmAny;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class d extends e0 {
    /* JADX WARN: Type inference failed for: r0v0, types: [byte[], java.io.Serializable] */
    public d(NativeRealmAny nativeRealmAny) {
        super(nativeRealmAny.asBinary(), h0.a.BINARY, nativeRealmAny);
    }

    @Override // io.realm.k0
    public final NativeRealmAny a() {
        return new NativeRealmAny((byte[]) byte[].class.cast(this.f7502c));
    }

    @Override // io.realm.e0
    public final boolean equals(Object obj) {
        if (obj == null || !d.class.equals(obj.getClass())) {
            return false;
        }
        return Arrays.equals((byte[]) byte[].class.cast(this.f7502c), (byte[]) ((k0) obj).d(byte[].class));
    }
}
