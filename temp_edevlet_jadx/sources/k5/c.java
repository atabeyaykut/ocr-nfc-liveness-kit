package k5;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.vision.face.internal.client.FaceParcel;
import com.google.android.gms.vision.face.internal.client.LandmarkParcel;

/* loaded from: classes.dex */
public final class c implements Parcelable.Creator<FaceParcel> {
    @Override // android.os.Parcelable.Creator
    public final FaceParcel createFromParcel(Parcel parcel) {
        int r12 = s3.b.u(parcel);
        LandmarkParcel[] landmarkParcelArr = null;
        a[] aVarArr = null;
        int r82 = 0;
        int r92 = 0;
        float fN = 0.0f;
        float fN2 = 0.0f;
        float fN3 = 0.0f;
        float fN4 = 0.0f;
        float fN5 = Float.MAX_VALUE;
        float fN6 = Float.MAX_VALUE;
        float fN7 = Float.MAX_VALUE;
        float fN8 = 0.0f;
        float fN9 = 0.0f;
        float fN10 = 0.0f;
        float fN11 = -1.0f;
        while (parcel.dataPosition() < r12) {
            int r22 = parcel.readInt();
            switch ((char) r22) {
                case 1:
                    r82 = s3.b.q(parcel, r22);
                    break;
                case 2:
                    r92 = s3.b.q(parcel, r22);
                    break;
                case 3:
                    fN = s3.b.n(parcel, r22);
                    break;
                case 4:
                    fN2 = s3.b.n(parcel, r22);
                    break;
                case 5:
                    fN3 = s3.b.n(parcel, r22);
                    break;
                case 6:
                    fN4 = s3.b.n(parcel, r22);
                    break;
                case 7:
                    fN5 = s3.b.n(parcel, r22);
                    break;
                case '\b':
                    fN6 = s3.b.n(parcel, r22);
                    break;
                case '\t':
                    landmarkParcelArr = (LandmarkParcel[]) s3.b.h(parcel, r22, LandmarkParcel.CREATOR);
                    break;
                case '\n':
                    fN8 = s3.b.n(parcel, r22);
                    break;
                case 11:
                    fN9 = s3.b.n(parcel, r22);
                    break;
                case '\f':
                    fN10 = s3.b.n(parcel, r22);
                    break;
                case '\r':
                    aVarArr = (a[]) s3.b.h(parcel, r22, a.CREATOR);
                    break;
                case 14:
                    fN7 = s3.b.n(parcel, r22);
                    break;
                case 15:
                    fN11 = s3.b.n(parcel, r22);
                    break;
                default:
                    s3.b.t(parcel, r22);
                    break;
            }
        }
        s3.b.j(parcel, r12);
        return new FaceParcel(r82, r92, fN, fN2, fN3, fN4, fN5, fN6, fN7, landmarkParcelArr, fN8, fN9, fN10, aVarArr, fN11);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FaceParcel[] newArray(int r12) {
        return new FaceParcel[r12];
    }
}
