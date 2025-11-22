package io.realm;

import io.realm.d0;
import io.realm.internal.OsResults;

/* loaded from: classes2.dex */
public final class y0<E> extends d0<E> {
    public y0(a aVar, OsResults osResults, Class<E> cls) {
        super(aVar, osResults, cls, null, new d0.b(aVar, osResults, cls, null));
    }

    public final y0<E> h() {
        OsResults osResults = this.f7493d;
        if (!osResults.d()) {
            throw new IllegalStateException("Only valid, managed RealmResults can be frozen.");
        }
        a aVarD = this.f7490a.d();
        OsResults osResultsB = osResults.b(aVarD.f7457e);
        String str = this.f7492c;
        return str != null ? new y0<>(aVarD, osResultsB, str) : new y0<>(aVarD, osResultsB, this.f7491b);
    }

    public y0(a aVar, OsResults osResults, String str) {
        super(aVar, osResults, null, str, new d0.b(aVar, osResults, null, str));
    }
}
