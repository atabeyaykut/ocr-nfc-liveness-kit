package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class f5<T> extends e5<T> {

    /* renamed from: a, reason: collision with root package name */
    public final T f3467a;

    public f5(T t10) {
        this.f3467a = t10;
    }

    @Override // com.google.android.gms.internal.measurement.e5
    public final T a() {
        return this.f3467a;
    }

    @Override // com.google.android.gms.internal.measurement.e5
    public final boolean b() {
        return true;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof f5) {
            return this.f3467a.equals(((f5) obj).f3467a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f3467a.hashCode() + 1502476572;
    }

    public final String toString() {
        String string = this.f3467a.toString();
        return android.support.v4.media.a.i(new StringBuilder(string.length() + 13), "Optional.of(", string, ")");
    }
}
