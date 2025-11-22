package v1;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.browser.browseractions.b;
import androidx.camera.core.impl.utils.f;
import kotlin.jvm.internal.h;
import t1.v;

/* loaded from: classes.dex */
public final class a extends c6.a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0283a();

    /* renamed from: a, reason: collision with root package name */
    public final v f18209a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18210b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f18211c;

    /* renamed from: v1.a$a, reason: collision with other inner class name */
    public static final class C0283a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public final a createFromParcel(Parcel parcel) {
            h.f(parcel, "parcel");
            return new a(v.CREATOR.createFromParcel(parcel), b.p(parcel.readString()), parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        public final a[] newArray(int r12) {
            return new a[r12];
        }
    }

    public a() {
        this(v.f15553c, 2, true);
    }

    public a(v savePath, int r32, boolean z10) {
        h.f(savePath, "savePath");
        f.j(r32, "returnMode");
        this.f18209a = savePath;
        this.f18210b = r32;
        this.f18211c = z10;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // c6.a
    public final int m() {
        return this.f18210b;
    }

    @Override // c6.a
    public final v n() {
        return this.f18209a;
    }

    @Override // c6.a
    public final boolean p() {
        return this.f18211c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel out, int r32) {
        h.f(out, "out");
        this.f18209a.writeToParcel(out, r32);
        out.writeString(b.m(this.f18210b));
        out.writeInt(this.f18211c ? 1 : 0);
    }
}
