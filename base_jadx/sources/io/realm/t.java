package io.realm;

import io.realm.internal.Table;
import io.realm.internal.c;
import io.realm.x0;

/* loaded from: classes2.dex */
public final class t extends x0 {
    public t(a aVar, Table table) {
        super(aVar, table, new x0.a(table));
    }

    public t(a aVar, Table table, io.realm.internal.c cVar) {
        super(aVar, table, cVar);
    }

    @Override // io.realm.x0
    public final String b(String str) {
        c.a aVarD = this.f7896c.d(str);
        if (aVarD != null) {
            return aVarD.f7658c;
        }
        throw new IllegalArgumentException(String.format("Property '%s' not found.", str));
    }
}
