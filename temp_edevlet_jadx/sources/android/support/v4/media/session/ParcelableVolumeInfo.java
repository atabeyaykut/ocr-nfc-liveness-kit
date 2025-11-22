package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new a();

    /* renamed from: a, reason: collision with root package name */
    public final int f404a;

    /* renamed from: b, reason: collision with root package name */
    public final int f405b;

    /* renamed from: c, reason: collision with root package name */
    public final int f406c;

    /* renamed from: d, reason: collision with root package name */
    public final int f407d;

    /* renamed from: e, reason: collision with root package name */
    public final int f408e;

    public static class a implements Parcelable.Creator<ParcelableVolumeInfo> {
        @Override // android.os.Parcelable.Creator
        public final ParcelableVolumeInfo createFromParcel(Parcel parcel) {
            return new ParcelableVolumeInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final ParcelableVolumeInfo[] newArray(int r12) {
            return new ParcelableVolumeInfo[r12];
        }
    }

    public ParcelableVolumeInfo(Parcel parcel) {
        this.f404a = parcel.readInt();
        this.f406c = parcel.readInt();
        this.f407d = parcel.readInt();
        this.f408e = parcel.readInt();
        this.f405b = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r22) {
        parcel.writeInt(this.f404a);
        parcel.writeInt(this.f406c);
        parcel.writeInt(this.f407d);
        parcel.writeInt(this.f408e);
        parcel.writeInt(this.f405b);
    }
}
