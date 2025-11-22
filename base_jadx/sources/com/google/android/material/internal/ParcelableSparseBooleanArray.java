package com.google.android.material.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class ParcelableSparseBooleanArray extends SparseBooleanArray implements Parcelable {
    public static final Parcelable.Creator<ParcelableSparseBooleanArray> CREATOR = new Parcelable.Creator<ParcelableSparseBooleanArray>() { // from class: com.google.android.material.internal.ParcelableSparseBooleanArray.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NonNull
        public ParcelableSparseBooleanArray createFromParcel(@NonNull Parcel parcel) {
            int r02 = parcel.readInt();
            ParcelableSparseBooleanArray parcelableSparseBooleanArray = new ParcelableSparseBooleanArray(r02);
            int[] r22 = new int[r02];
            boolean[] zArr = new boolean[r02];
            parcel.readIntArray(r22);
            parcel.readBooleanArray(zArr);
            for (int r72 = 0; r72 < r02; r72++) {
                parcelableSparseBooleanArray.put(r22[r72], zArr[r72]);
            }
            return parcelableSparseBooleanArray;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NonNull
        public ParcelableSparseBooleanArray[] newArray(int r12) {
            return new ParcelableSparseBooleanArray[r12];
        }
    };

    public ParcelableSparseBooleanArray() {
    }

    public ParcelableSparseBooleanArray(int r12) {
        super(r12);
    }

    public ParcelableSparseBooleanArray(@NonNull SparseBooleanArray sparseBooleanArray) {
        super(sparseBooleanArray.size());
        for (int r02 = 0; r02 < sparseBooleanArray.size(); r02++) {
            put(sparseBooleanArray.keyAt(r02), sparseBooleanArray.valueAt(r02));
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int r52) {
        int[] r53 = new int[size()];
        boolean[] zArr = new boolean[size()];
        for (int r12 = 0; r12 < size(); r12++) {
            r53[r12] = keyAt(r12);
            zArr[r12] = valueAt(r12);
        }
        parcel.writeInt(size());
        parcel.writeIntArray(r53);
        parcel.writeBooleanArray(zArr);
    }
}
