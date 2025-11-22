package com.airbnb.epoxy;

import androidx.collection.LongSparseArray;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public final u<?> f2596a;

    /* renamed from: b, reason: collision with root package name */
    public final LongSparseArray<u<?>> f2597b;

    public l() {
        throw null;
    }

    public l(u<?> uVar) {
        List<u<?>> listSingletonList = Collections.singletonList(uVar);
        if (listSingletonList.isEmpty()) {
            throw new IllegalStateException("Models must not be empty");
        }
        int size = listSingletonList.size();
        if (size == 1) {
            this.f2596a = (u) listSingletonList.get(0);
            this.f2597b = null;
            return;
        }
        this.f2596a = null;
        this.f2597b = new LongSparseArray<>(size);
        for (u<?> uVar2 : listSingletonList) {
            this.f2597b.put(uVar2.id(), uVar2);
        }
    }
}
