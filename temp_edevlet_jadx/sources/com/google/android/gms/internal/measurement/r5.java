package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class r5 extends s5 {

    /* renamed from: a, reason: collision with root package name */
    public int f3711a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final int f3712b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ v5 f3713c;

    public r5(v5 v5Var) {
        this.f3713c = v5Var;
        this.f3712b = v5Var.m();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f3711a < this.f3712b;
    }
}
