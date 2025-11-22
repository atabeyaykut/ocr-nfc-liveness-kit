package n4;

import android.os.BadParcelableException;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f10563a = 0;

    static {
        f.class.getClassLoader();
    }

    public static void a(Parcel parcel) {
        int r22 = parcel.dataAvail();
        if (r22 > 0) {
            throw new BadParcelableException(android.support.v4.media.a.d("Parcel data not fully consumed, unread size: ", r22));
        }
    }

    public static void b(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcelable.writeToParcel(parcel, 0);
        }
    }

    public static void c(Parcel parcel, IInterface iInterface) {
        parcel.writeStrongBinder(iInterface == null ? null : iInterface.asBinder());
    }
}
