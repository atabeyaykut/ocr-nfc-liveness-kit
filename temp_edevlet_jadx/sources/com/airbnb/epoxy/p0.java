package com.airbnb.epoxy;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;
import androidx.collection.LongSparseArray;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes.dex */
public final class p0 extends LongSparseArray<b> implements Parcelable {
    public static final Parcelable.Creator<p0> CREATOR = new a();

    public class a implements Parcelable.Creator<p0> {
        @Override // android.os.Parcelable.Creator
        public final p0 createFromParcel(Parcel parcel) {
            int r02 = parcel.readInt();
            p0 p0Var = new p0(r02, 0);
            for (int r22 = 0; r22 < r02; r22++) {
                p0Var.put(parcel.readLong(), (b) parcel.readParcelable(b.class.getClassLoader()));
            }
            return p0Var;
        }

        @Override // android.os.Parcelable.Creator
        public final p0[] newArray(int r12) {
            return new p0[r12];
        }
    }

    public static class b extends SparseArray<Parcelable> implements Parcelable {
        public static final Parcelable.Creator<b> CREATOR = new a();

        public class a implements Parcelable.ClassLoaderCreator<b> {
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                int r02 = parcel.readInt();
                int[] r12 = new int[r02];
                parcel.readIntArray(r12);
                return new b(r02, r12, parcel.readParcelableArray(null));
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int r12) {
                return new b[r12];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final b createFromParcel(Parcel parcel, ClassLoader classLoader) {
                int r02 = parcel.readInt();
                int[] r12 = new int[r02];
                parcel.readIntArray(r12);
                return new b(r02, r12, parcel.readParcelableArray(classLoader));
            }
        }

        public b() {
        }

        public b(int r42, int[] r52, Parcelable[] parcelableArr) {
            super(r42);
            for (int r02 = 0; r02 < r42; r02++) {
                put(r52[r02], parcelableArr[r02]);
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int r72) {
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

    public p0() {
    }

    public p0(int r12, int r22) {
        super(r12);
    }

    public final void b(x xVar) {
        xVar.a();
        if (xVar.f2664a.shouldSaveViewState()) {
            b bVar = get(xVar.getItemId());
            if (bVar == null) {
                bVar = new b();
            }
            View view = xVar.itemView;
            int id2 = view.getId();
            if (view.getId() == -1) {
                view.setId(R.id.view_model_state_saving_id);
            }
            view.saveHierarchyState(bVar);
            view.setId(id2);
            put(xVar.getItemId(), bVar);
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r6) {
        int size = size();
        parcel.writeInt(size);
        for (int r12 = 0; r12 < size; r12++) {
            parcel.writeLong(keyAt(r12));
            parcel.writeParcelable(valueAt(r12), 0);
        }
    }
}
