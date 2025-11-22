package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;

/* loaded from: classes.dex */
public final class q4 extends ContentObserver {
    public q4() {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z10) {
        b5.f3387h.incrementAndGet();
    }
}
