package kd;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class o implements Serializable, Parcelable {
    public static final Parcelable.Creator<o> CREATOR = new a();

    /* renamed from: a, reason: collision with root package name */
    public gd.l f8911a;

    /* renamed from: b, reason: collision with root package name */
    public long f8912b;

    /* renamed from: c, reason: collision with root package name */
    public long f8913c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f8914d;

    /* renamed from: e, reason: collision with root package name */
    public String f8915e;

    public class a implements Parcelable.Creator<o> {
        @Override // android.os.Parcelable.Creator
        public final o createFromParcel(Parcel parcel) {
            return new o(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final o[] newArray(int r12) {
            return new o[r12];
        }
    }

    public o() {
    }

    public o(Parcel parcel) {
        this.f8911a = (gd.l) parcel.readParcelable(o.class.getClassLoader());
        this.f8915e = parcel.readString();
        this.f8912b = parcel.readLong();
        this.f8913c = parcel.readLong();
        this.f8914d = parcel.readByte() != 0;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        parcel.writeParcelable(this.f8911a, r42);
        parcel.writeString(this.f8915e);
        parcel.writeLong(this.f8912b);
        parcel.writeLong(this.f8913c);
        parcel.writeByte(this.f8914d ? (byte) 1 : (byte) 0);
    }
}
