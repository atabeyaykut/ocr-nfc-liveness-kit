package s4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class s9 implements Parcelable.Creator<r9> {
    @Override // android.os.Parcelable.Creator
    public final r9 createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        String strF = null;
        ArrayList arrayListI = null;
        while (parcel.dataPosition() < r02) {
            int r32 = parcel.readInt();
            char c10 = (char) r32;
            if (c10 == 1) {
                strF = s3.b.f(parcel, r32);
            } else if (c10 != 2) {
                s3.b.t(parcel, r32);
            } else {
                arrayListI = s3.b.i(parcel, r32, l9.CREATOR);
            }
        }
        s3.b.j(parcel, r02);
        return new r9(strF, arrayListI);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ r9[] newArray(int r12) {
        return new r9[r12];
    }
}
