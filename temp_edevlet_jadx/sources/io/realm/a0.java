package io.realm;

import io.realm.h0;
import io.realm.internal.core.NativeRealmAny;
import org.bson.types.ObjectId;

/* loaded from: classes2.dex */
public final class a0 extends e0 {
    public a0(NativeRealmAny nativeRealmAny) {
        super(nativeRealmAny.asObjectId(), h0.a.OBJECT_ID, nativeRealmAny);
    }

    @Override // io.realm.k0
    public final NativeRealmAny a() {
        return new NativeRealmAny((ObjectId) ObjectId.class.cast(this.f7502c));
    }
}
