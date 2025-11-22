package com.google.android.gms.internal.measurement;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3357a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3358b;

    public /* synthetic */ a(int r12, Object obj) {
        this.f3357a = r12;
        this.f3358b = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int r02 = this.f3357a;
        Object obj = this.f3358b;
        switch (r02) {
            case 0:
                return new n8(((s0) obj).f3727d);
            default:
                return ((v7.l) obj).a();
        }
    }
}
