package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new a();

    /* renamed from: a, reason: collision with root package name */
    public final int f388a;

    /* renamed from: b, reason: collision with root package name */
    public final float f389b;

    public static class a implements Parcelable.Creator<RatingCompat> {
        @Override // android.os.Parcelable.Creator
        public final RatingCompat createFromParcel(Parcel parcel) {
            return new RatingCompat(parcel.readFloat(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final RatingCompat[] newArray(int r12) {
            return new RatingCompat[r12];
        }
    }

    public RatingCompat(float f, int r22) {
        this.f388a = r22;
        this.f389b = f;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return this.f388a;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Rating:style=");
        sb2.append(this.f388a);
        sb2.append(" rating=");
        float f = this.f389b;
        sb2.append(f < 0.0f ? "unrated" : String.valueOf(f));
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r22) {
        parcel.writeInt(this.f388a);
        parcel.writeFloat(this.f389b);
    }
}
