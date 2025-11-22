package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class i5<T> implements g5<T> {

    /* renamed from: a, reason: collision with root package name */
    public volatile g5<T> f3546a;

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f3547b;

    /* renamed from: c, reason: collision with root package name */
    public T f3548c;

    public i5(g5<T> g5Var) {
        this.f3546a = g5Var;
    }

    @Override // com.google.android.gms.internal.measurement.g5
    public final T a() {
        if (!this.f3547b) {
            synchronized (this) {
                if (!this.f3547b) {
                    g5<T> g5Var = this.f3546a;
                    g5Var.getClass();
                    T tA = g5Var.a();
                    this.f3548c = tA;
                    this.f3547b = true;
                    this.f3546a = null;
                    return tA;
                }
            }
        }
        return this.f3548c;
    }

    public final String toString() {
        Object objI = this.f3546a;
        if (objI == null) {
            String strValueOf = String.valueOf(this.f3548c);
            objI = android.support.v4.media.a.i(new StringBuilder(strValueOf.length() + 25), "<supplier that returned ", strValueOf, ">");
        }
        String string = objI.toString();
        return android.support.v4.media.a.i(new StringBuilder(string.length() + 19), "Suppliers.memoize(", string, ")");
    }
}
