package io.realm;

import io.realm.internal.Table;
import io.realm.internal.core.NativeRealmAny;

/* loaded from: classes2.dex */
public final class o extends u0 {
    public o(a aVar, NativeRealmAny nativeRealmAny) {
        super(aVar.f(p.class, Table.g(nativeRealmAny.getRealmModelTableName(aVar.f7457e)), nativeRealmAny.getRealmModelRowKey()));
    }

    @Override // io.realm.u0, io.realm.k0
    public final Class<?> c() {
        return p.class;
    }
}
