package k5;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.vision.face.internal.client.LandmarkParcel;

/* loaded from: classes.dex */
public final class d implements Parcelable.Creator<LandmarkParcel> {
    @Override // android.os.Parcelable.Creator
    public final LandmarkParcel createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        int r12 = 0;
        int r22 = 0;
        float fN = 0.0f;
        float fN2 = 0.0f;
        while (parcel.dataPosition() < r02) {
            int r52 = parcel.readInt();
            char c10 = (char) r52;
            if (c10 == 1) {
                r12 = s3.b.q(parcel, r52);
            } else if (c10 == 2) {
                fN = s3.b.n(parcel, r52);
            } else if (c10 == 3) {
                fN2 = s3.b.n(parcel, r52);
            } else if (c10 != 4) {
                s3.b.t(parcel, r52);
            } else {
                r22 = s3.b.q(parcel, r52);
            }
        }
        s3.b.j(parcel, r02);
        return new LandmarkParcel(r12, fN, fN2, r22);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LandmarkParcel[] newArray(int r12) {
        return new LandmarkParcel[r12];
    }
}
