package t1;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class v implements Parcelable {
    public static final Parcelable.Creator<v> CREATOR = new a();

    /* renamed from: c, reason: collision with root package name */
    public static final v f15553c = new v("Camera", true);

    /* renamed from: a, reason: collision with root package name */
    public final String f15554a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f15555b;

    public static final class a implements Parcelable.Creator<v> {
        @Override // android.os.Parcelable.Creator
        public final v createFromParcel(Parcel parcel) {
            kotlin.jvm.internal.h.f(parcel, "parcel");
            return new v(parcel.readString(), parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        public final v[] newArray(int r12) {
            return new v[r12];
        }
    }

    public v(String path, boolean z10) {
        kotlin.jvm.internal.h.f(path, "path");
        this.f15554a = path;
        this.f15555b = z10;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel out, int r22) {
        kotlin.jvm.internal.h.f(out, "out");
        out.writeString(this.f15554a);
        out.writeInt(this.f15555b ? 1 : 0);
    }
}
