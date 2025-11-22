package c5;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class s extends s3.a {
    public static final Parcelable.Creator<s> CREATOR = new t();

    /* renamed from: a, reason: collision with root package name */
    public final String f1956a;

    /* renamed from: b, reason: collision with root package name */
    public final q f1957b;

    /* renamed from: c, reason: collision with root package name */
    public final String f1958c;

    /* renamed from: d, reason: collision with root package name */
    public final long f1959d;

    public s(s sVar, long j10) {
        r3.r.i(sVar);
        this.f1956a = sVar.f1956a;
        this.f1957b = sVar.f1957b;
        this.f1958c = sVar.f1958c;
        this.f1959d = j10;
    }

    public s(String str, q qVar, String str2, long j10) {
        this.f1956a = str;
        this.f1957b = qVar;
        this.f1958c = str2;
        this.f1959d = j10;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f1957b);
        String str = this.f1958c;
        int length = String.valueOf(str).length();
        String str2 = this.f1956a;
        StringBuilder sb2 = new StringBuilder(android.support.v4.media.a.a(length, 21, String.valueOf(str2).length(), strValueOf.length()));
        sb2.append("origin=");
        sb2.append(str);
        sb2.append(",name=");
        sb2.append(str2);
        return androidx.camera.camera2.internal.c.h(sb2, ",params=", strValueOf);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r22) {
        t.a(this, parcel, r22);
    }
}
