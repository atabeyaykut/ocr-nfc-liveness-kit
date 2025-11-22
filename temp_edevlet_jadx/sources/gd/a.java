package gd;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public final class a extends c {
    public static final Parcelable.Creator<a> CREATOR = new C0113a();

    /* renamed from: gd.a$a, reason: collision with other inner class name */
    public class C0113a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public final a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final a[] newArray(int r12) {
            return new a[r12];
        }
    }

    public a() {
    }

    public a(Parcel parcel) {
        super(parcel);
    }

    @Override // gd.c, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // gd.c, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r22) {
        super.writeToParcel(parcel, r22);
    }
}
