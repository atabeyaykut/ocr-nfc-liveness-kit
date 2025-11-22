package com.google.android.gms.internal.measurement;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class z1 extends a1 {

    /* renamed from: a, reason: collision with root package name */
    public final c5.b5 f3854a;

    public z1(c5.b5 b5Var) {
        this.f3854a = b5Var;
    }

    @Override // com.google.android.gms.internal.measurement.b1
    public final int d() {
        return System.identityHashCode(this.f3854a);
    }

    @Override // com.google.android.gms.internal.measurement.b1
    public final void w(long j10, Bundle bundle, String str, String str2) {
        this.f3854a.a(j10, bundle, str, str2);
    }
}
