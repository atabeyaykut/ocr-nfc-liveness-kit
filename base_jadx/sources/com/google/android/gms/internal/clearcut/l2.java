package com.google.android.gms.internal.clearcut;

/* loaded from: classes.dex */
public final class l2 implements v1 {

    /* renamed from: a, reason: collision with root package name */
    public final x1 f3174a;

    /* renamed from: b, reason: collision with root package name */
    public final m2 f3175b;

    public l2(v0 v0Var, String str, Object[] objArr) {
        this.f3174a = v0Var;
        this.f3175b = new m2(v0Var.getClass(), str, objArr);
    }

    @Override // com.google.android.gms.internal.clearcut.v1
    public final int a() {
        return (this.f3175b.f3187d & 1) == 1 ? 1 : 2;
    }

    @Override // com.google.android.gms.internal.clearcut.v1
    public final boolean b() {
        return (this.f3175b.f3187d & 2) == 2;
    }

    @Override // com.google.android.gms.internal.clearcut.v1
    public final x1 c() {
        return this.f3174a;
    }
}
