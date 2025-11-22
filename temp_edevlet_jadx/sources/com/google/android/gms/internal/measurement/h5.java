package com.google.android.gms.internal.measurement;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class h5<T> implements Serializable, g5 {

    /* renamed from: a, reason: collision with root package name */
    public final g5<T> f3532a;

    /* renamed from: b, reason: collision with root package name */
    public volatile transient boolean f3533b;

    /* renamed from: c, reason: collision with root package name */
    public transient T f3534c;

    public h5(g5<T> g5Var) {
        this.f3532a = g5Var;
    }

    @Override // com.google.android.gms.internal.measurement.g5
    public final T a() {
        if (!this.f3533b) {
            synchronized (this) {
                if (!this.f3533b) {
                    T tA = this.f3532a.a();
                    this.f3534c = tA;
                    this.f3533b = true;
                    return tA;
                }
            }
        }
        return this.f3534c;
    }

    public final String toString() {
        Object objI;
        if (this.f3533b) {
            String strValueOf = String.valueOf(this.f3534c);
            objI = android.support.v4.media.a.i(new StringBuilder(strValueOf.length() + 25), "<supplier that returned ", strValueOf, ">");
        } else {
            objI = this.f3532a;
        }
        String strValueOf2 = String.valueOf(objI);
        return android.support.v4.media.a.i(new StringBuilder(strValueOf2.length() + 19), "Suppliers.memoize(", strValueOf2, ")");
    }
}
