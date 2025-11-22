package com.google.android.gms.internal.clearcut;

import android.database.ContentObserver;

/* loaded from: classes.dex */
public final class c extends ContentObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f3056a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(b bVar) {
        super(null);
        this.f3056a = bVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z10) {
        b bVar = this.f3056a;
        synchronized (bVar.f3028d) {
            bVar.f3029e = null;
        }
        b.a(this.f3056a);
    }
}
