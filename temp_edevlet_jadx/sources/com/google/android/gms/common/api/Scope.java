package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import n3.l;
import r3.r;
import s3.a;
import s3.c;

/* loaded from: classes.dex */
public final class Scope extends a implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<Scope> CREATOR = new l();

    /* renamed from: a, reason: collision with root package name */
    public final int f2972a;

    /* renamed from: b, reason: collision with root package name */
    public final String f2973b;

    public Scope() {
        throw null;
    }

    public Scope(int r22, String str) {
        r.g("scopeUri must not be null or empty", str);
        this.f2972a = r22;
        this.f2973b = str;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scope)) {
            return false;
        }
        return this.f2973b.equals(((Scope) obj).f2973b);
    }

    public final int hashCode() {
        return this.f2973b.hashCode();
    }

    @NonNull
    public final String toString() {
        return this.f2973b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int r42) {
        int r43 = c.r(parcel, 20293);
        c.j(parcel, 1, this.f2972a);
        c.n(parcel, 2, this.f2973b);
        c.s(parcel, r43);
    }
}
