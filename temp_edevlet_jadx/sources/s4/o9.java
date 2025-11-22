package s4;

import android.graphics.Point;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class o9 implements Parcelable.Creator<n9> {
    @Override // android.os.Parcelable.Creator
    public final n9 createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        String strF = null;
        Rect rect = null;
        ArrayList arrayListI = null;
        String strF2 = null;
        while (parcel.dataPosition() < r02) {
            int r52 = parcel.readInt();
            char c10 = (char) r52;
            if (c10 == 1) {
                strF = s3.b.f(parcel, r52);
            } else if (c10 == 2) {
                rect = (Rect) s3.b.e(parcel, r52, Rect.CREATOR);
            } else if (c10 == 3) {
                arrayListI = s3.b.i(parcel, r52, Point.CREATOR);
            } else if (c10 != 4) {
                s3.b.t(parcel, r52);
            } else {
                strF2 = s3.b.f(parcel, r52);
            }
        }
        s3.b.j(parcel, r02);
        return new n9(strF, rect, arrayListI, strF2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ n9[] newArray(int r12) {
        return new n9[r12];
    }
}
