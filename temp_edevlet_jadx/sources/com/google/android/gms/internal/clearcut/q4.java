package com.google.android.gms.internal.clearcut;

import android.database.ContentObserver;

/* loaded from: classes.dex */
public final class q4 extends ContentObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3273a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ q4(int r12) {
        super(null);
        this.f3273a = r12;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z10) {
        switch (this.f3273a) {
            case 0:
                p4.f3259e.set(true);
                break;
            default:
                com.google.android.gms.internal.measurement.j4.f3569d.set(true);
                break;
        }
    }
}
