package p8;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0215a();

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final String f12847a;

    /* renamed from: b, reason: collision with root package name */
    public final float f12848b;

    /* renamed from: c, reason: collision with root package name */
    public final float f12849c;

    /* renamed from: p8.a$a, reason: collision with other inner class name */
    public static class C0215a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public final a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final a[] newArray(int r12) {
            return new a[r12];
        }
    }

    public a(Parcel parcel) {
        this.f12847a = parcel.readString();
        this.f12848b = parcel.readFloat();
        this.f12849c = parcel.readFloat();
    }

    public a(@Nullable String str, float f, float f10) {
        this.f12847a = str;
        this.f12848b = f;
        this.f12849c = f10;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r22) {
        parcel.writeString(this.f12847a);
        parcel.writeFloat(this.f12848b);
        parcel.writeFloat(this.f12849c);
    }
}
