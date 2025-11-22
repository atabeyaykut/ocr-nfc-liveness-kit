package f5;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class i implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        ArrayList<String> arrayList = null;
        String strF = null;
        while (parcel.dataPosition() < r02) {
            int r42 = parcel.readInt();
            char c10 = (char) r42;
            if (c10 == 1) {
                int r22 = s3.b.s(parcel, r42);
                int r43 = parcel.dataPosition();
                if (r22 == 0) {
                    arrayList = null;
                } else {
                    ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
                    parcel.setDataPosition(r43 + r22);
                    arrayList = arrayListCreateStringArrayList;
                }
            } else if (c10 != 2) {
                s3.b.t(parcel, r42);
            } else {
                strF = s3.b.f(parcel, r42);
            }
        }
        s3.b.j(parcel, r02);
        return new h(arrayList, strF);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new h[r12];
    }
}
