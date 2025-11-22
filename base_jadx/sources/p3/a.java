package p3;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import s3.b;

/* loaded from: classes.dex */
public final class a implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = b.u(parcel);
        String[] strArrG = null;
        CursorWindow[] cursorWindowArr = null;
        Bundle bundleA = null;
        int r42 = 0;
        int r72 = 0;
        while (parcel.dataPosition() < r02) {
            int r22 = parcel.readInt();
            char c10 = (char) r22;
            if (c10 == 1) {
                strArrG = b.g(parcel, r22);
            } else if (c10 == 2) {
                cursorWindowArr = (CursorWindow[]) b.h(parcel, r22, CursorWindow.CREATOR);
            } else if (c10 == 3) {
                r72 = b.q(parcel, r22);
            } else if (c10 == 4) {
                bundleA = b.a(parcel, r22);
            } else if (c10 != 1000) {
                b.t(parcel, r22);
            } else {
                r42 = b.q(parcel, r22);
            }
        }
        b.j(parcel, r02);
        DataHolder dataHolder = new DataHolder(r42, strArrG, cursorWindowArr, r72, bundleA);
        dataHolder.f2995c = new Bundle();
        int r03 = 0;
        while (true) {
            String[] strArr = dataHolder.f2994b;
            if (r03 >= strArr.length) {
                break;
            }
            dataHolder.f2995c.putInt(strArr[r03], r03);
            r03++;
        }
        CursorWindow[] cursorWindowArr2 = dataHolder.f2996d;
        dataHolder.f2998g = new int[cursorWindowArr2.length];
        int numRows = 0;
        for (int r12 = 0; r12 < cursorWindowArr2.length; r12++) {
            dataHolder.f2998g[r12] = numRows;
            numRows += cursorWindowArr2[r12].getNumRows() - (numRows - cursorWindowArr2[r12].getStartPosition());
        }
        return dataHolder;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new DataHolder[r12];
    }
}
