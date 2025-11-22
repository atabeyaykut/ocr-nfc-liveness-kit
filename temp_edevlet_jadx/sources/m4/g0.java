package m4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public final class g0 extends s3.a implements n3.h {
    public static final Parcelable.Creator<g0> CREATOR;

    /* renamed from: a, reason: collision with root package name */
    public final Status f10000a;

    static {
        new g0(Status.f);
        CREATOR = new h0();
    }

    public g0(Status status) {
        this.f10000a = status;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.m(parcel, 1, this.f10000a, r52);
        s3.c.s(parcel, r02);
    }

    @Override // n3.h
    public final Status y() {
        return this.f10000a;
    }
}
