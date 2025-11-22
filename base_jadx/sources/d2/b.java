package d2;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.jvm.internal.h;
import mc.j;

/* loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* renamed from: a, reason: collision with root package name */
    public final long f4649a;

    /* renamed from: b, reason: collision with root package name */
    public final String f4650b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4651c;

    /* renamed from: d, reason: collision with root package name */
    public Uri f4652d;

    public static final class a implements Parcelable.Creator<b> {
        @Override // android.os.Parcelable.Creator
        public final b createFromParcel(Parcel parcel) {
            h.f(parcel, "parcel");
            return new b(parcel.readLong(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final b[] newArray(int r12) {
            return new b[r12];
        }
    }

    public b(long j10, String name, String path) {
        h.f(name, "name");
        h.f(path, "path");
        this.f4649a = j10;
        this.f4650b = name;
        this.f4651c = path;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !h.a(b.class, obj.getClass())) {
            return false;
        }
        return j.x(((b) obj).f4651c, this.f4651c);
    }

    public final int hashCode() {
        long j10 = this.f4649a;
        int r02 = androidx.room.util.a.a(this.f4651c, androidx.room.util.a.a(this.f4650b, ((int) (j10 ^ (j10 >>> 32))) * 31, 31), 31);
        Uri uri = this.f4652d;
        return r02 + (uri != null ? uri.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel out, int r42) {
        h.f(out, "out");
        out.writeLong(this.f4649a);
        out.writeString(this.f4650b);
        out.writeString(this.f4651c);
    }
}
