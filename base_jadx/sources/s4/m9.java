package s4;

import android.graphics.Point;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class m9 implements Parcelable.Creator<l9> {
    @Override // android.os.Parcelable.Creator
    public final l9 createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        String strF = null;
        Rect rect = null;
        ArrayList arrayListI = null;
        String strF2 = null;
        ArrayList arrayListI2 = null;
        while (parcel.dataPosition() < r02) {
            int r12 = parcel.readInt();
            char c10 = (char) r12;
            if (c10 == 1) {
                strF = s3.b.f(parcel, r12);
            } else if (c10 == 2) {
                rect = (Rect) s3.b.e(parcel, r12, Rect.CREATOR);
            } else if (c10 == 3) {
                arrayListI = s3.b.i(parcel, r12, Point.CREATOR);
            } else if (c10 == 4) {
                strF2 = s3.b.f(parcel, r12);
            } else if (c10 != 5) {
                s3.b.t(parcel, r12);
            } else {
                arrayListI2 = s3.b.i(parcel, r12, p9.CREATOR);
            }
        }
        s3.b.j(parcel, r02);
        return new l9(strF, rect, arrayListI, strF2, arrayListI2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ l9[] newArray(int r12) {
        return new l9[r12];
    }
}
