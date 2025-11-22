package com.google.android.gms.internal.clearcut;

/* loaded from: classes.dex */
public enum z3 implements y0 {
    DEFAULT(0),
    /* JADX INFO: Fake field, exist only in values array */
    UNMETERED_ONLY(1),
    /* JADX INFO: Fake field, exist only in values array */
    UNMETERED_OR_DAILY(2),
    /* JADX INFO: Fake field, exist only in values array */
    FAST_IF_RADIO_AWAKE(3),
    /* JADX INFO: Fake field, exist only in values array */
    NEVER(4);


    /* renamed from: a, reason: collision with root package name */
    public final int f3356a;

    z3(int r32) {
        this.f3356a = r32;
    }

    @Override // com.google.android.gms.internal.clearcut.y0
    public final int c() {
        return this.f3356a;
    }
}
