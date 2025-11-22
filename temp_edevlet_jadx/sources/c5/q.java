package c5;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class q extends s3.a implements Iterable<String> {
    public static final Parcelable.Creator<q> CREATOR = new r();

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f1861a;

    public q(Bundle bundle) {
        this.f1861a = bundle;
    }

    public final Bundle E() {
        return new Bundle(this.f1861a);
    }

    public final Double Z() {
        return Double.valueOf(this.f1861a.getDouble("value"));
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return new p(this);
    }

    public final String toString() {
        return this.f1861a.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.b(parcel, 2, E());
        s3.c.s(parcel, r43);
    }
}
