package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class d5<T> extends e5<T> {

    /* renamed from: a, reason: collision with root package name */
    public static final d5<Object> f3440a = new d5<>();

    @Override // com.google.android.gms.internal.measurement.e5
    public final T a() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // com.google.android.gms.internal.measurement.e5
    public final boolean b() {
        return false;
    }

    public final boolean equals(Object obj) {
        return obj == this;
    }

    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }
}
