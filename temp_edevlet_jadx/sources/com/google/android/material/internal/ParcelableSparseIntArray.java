package com.google.android.material.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class ParcelableSparseIntArray extends SparseIntArray implements Parcelable {
    public static final Parcelable.Creator<ParcelableSparseIntArray> CREATOR = new Parcelable.Creator<ParcelableSparseIntArray>() { // from class: com.google.android.material.internal.ParcelableSparseIntArray.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NonNull
        public ParcelableSparseIntArray createFromParcel(@NonNull Parcel parcel) {
            int r02 = parcel.readInt();
            ParcelableSparseIntArray parcelableSparseIntArray = new ParcelableSparseIntArray(r02);
            int[] r22 = new int[r02];
            int[] r32 = new int[r02];
            parcel.readIntArray(r22);
            parcel.readIntArray(r32);
            for (int r72 = 0; r72 < r02; r72++) {
                parcelableSparseIntArray.put(r22[r72], r32[r72]);
            }
            return parcelableSparseIntArray;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NonNull
        public ParcelableSparseIntArray[] newArray(int r12) {
            return new ParcelableSparseIntArray[r12];
        }
    };

    public ParcelableSparseIntArray() {
    }

    public ParcelableSparseIntArray(int r12) {
        super(r12);
    }

    public ParcelableSparseIntArray(@NonNull SparseIntArray sparseIntArray) {
        for (int r02 = 0; r02 < sparseIntArray.size(); r02++) {
            put(sparseIntArray.keyAt(r02), sparseIntArray.valueAt(r02));
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int r52) {
        int[] r53 = new int[size()];
        int[] r02 = new int[size()];
        for (int r12 = 0; r12 < size(); r12++) {
            r53[r12] = keyAt(r12);
            r02[r12] = valueAt(r12);
        }
        parcel.writeInt(size());
        parcel.writeIntArray(r53);
        parcel.writeIntArray(r02);
    }
}
