package com.google.android.material.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class ParcelableSparseArray extends SparseArray<Parcelable> implements Parcelable {
    public static final Parcelable.Creator<ParcelableSparseArray> CREATOR = new Parcelable.ClassLoaderCreator<ParcelableSparseArray>() { // from class: com.google.android.material.internal.ParcelableSparseArray.1
        @Override // android.os.Parcelable.Creator
        @Nullable
        public ParcelableSparseArray createFromParcel(@NonNull Parcel parcel) {
            return new ParcelableSparseArray(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.ClassLoaderCreator
        @NonNull
        public ParcelableSparseArray createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
            return new ParcelableSparseArray(parcel, classLoader);
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        public ParcelableSparseArray[] newArray(int r12) {
            return new ParcelableSparseArray[r12];
        }
    };

    public ParcelableSparseArray() {
    }

    public ParcelableSparseArray(@NonNull Parcel parcel, @Nullable ClassLoader classLoader) {
        int r02 = parcel.readInt();
        int[] r12 = new int[r02];
        parcel.readIntArray(r12);
        Parcelable[] parcelableArray = parcel.readParcelableArray(classLoader);
        for (int r6 = 0; r6 < r02; r6++) {
            put(r12[r6], parcelableArray[r6]);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int r72) {
        int size = size();
        int[] r12 = new int[size];
        Parcelable[] parcelableArr = new Parcelable[size];
        for (int r32 = 0; r32 < size; r32++) {
            r12[r32] = keyAt(r32);
            parcelableArr[r32] = valueAt(r32);
        }
        parcel.writeInt(size);
        parcel.writeIntArray(r12);
        parcel.writeParcelableArray(parcelableArr, r72);
    }
}
