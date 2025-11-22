package s3;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.core.internal.view.SupportMenu;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class b {

    public static class a extends RuntimeException {
        public a(@NonNull String str, @NonNull Parcel parcel) {
            super(str + " Parcel: pos=" + parcel.dataPosition() + " size=" + parcel.dataSize());
        }
    }

    @NonNull
    public static Bundle a(@NonNull Parcel parcel, int r32) {
        int r33 = s(parcel, r32);
        int r02 = parcel.dataPosition();
        if (r33 == 0) {
            return null;
        }
        Bundle bundle = parcel.readBundle();
        parcel.setDataPosition(r02 + r33);
        return bundle;
    }

    @NonNull
    public static byte[] b(@NonNull Parcel parcel, int r32) {
        int r33 = s(parcel, r32);
        int r02 = parcel.dataPosition();
        if (r33 == 0) {
            return null;
        }
        byte[] bArrCreateByteArray = parcel.createByteArray();
        parcel.setDataPosition(r02 + r33);
        return bArrCreateByteArray;
    }

    @NonNull
    public static byte[][] c(@NonNull Parcel parcel, int r6) {
        int r62 = s(parcel, r6);
        int r02 = parcel.dataPosition();
        if (r62 == 0) {
            return null;
        }
        int r12 = parcel.readInt();
        byte[][] bArr = new byte[r12][];
        for (int r32 = 0; r32 < r12; r32++) {
            bArr[r32] = parcel.createByteArray();
        }
        parcel.setDataPosition(r02 + r62);
        return bArr;
    }

    @NonNull
    public static int[] d(@NonNull Parcel parcel, int r32) {
        int r33 = s(parcel, r32);
        int r02 = parcel.dataPosition();
        if (r33 == 0) {
            return null;
        }
        int[] r12 = parcel.createIntArray();
        parcel.setDataPosition(r02 + r33);
        return r12;
    }

    @NonNull
    public static <T extends Parcelable> T e(@NonNull Parcel parcel, int r22, @NonNull Parcelable.Creator<T> creator) {
        int r23 = s(parcel, r22);
        int r02 = parcel.dataPosition();
        if (r23 == 0) {
            return null;
        }
        T tCreateFromParcel = creator.createFromParcel(parcel);
        parcel.setDataPosition(r02 + r23);
        return tCreateFromParcel;
    }

    @NonNull
    public static String f(@NonNull Parcel parcel, int r32) {
        int r33 = s(parcel, r32);
        int r02 = parcel.dataPosition();
        if (r33 == 0) {
            return null;
        }
        String string = parcel.readString();
        parcel.setDataPosition(r02 + r33);
        return string;
    }

    @NonNull
    public static String[] g(@NonNull Parcel parcel, int r32) {
        int r33 = s(parcel, r32);
        int r02 = parcel.dataPosition();
        if (r33 == 0) {
            return null;
        }
        String[] strArrCreateStringArray = parcel.createStringArray();
        parcel.setDataPosition(r02 + r33);
        return strArrCreateStringArray;
    }

    @NonNull
    public static <T> T[] h(@NonNull Parcel parcel, int r22, @NonNull Parcelable.Creator<T> creator) {
        int r23 = s(parcel, r22);
        int r02 = parcel.dataPosition();
        if (r23 == 0) {
            return null;
        }
        T[] tArr = (T[]) parcel.createTypedArray(creator);
        parcel.setDataPosition(r02 + r23);
        return tArr;
    }

    @NonNull
    public static <T> ArrayList<T> i(@NonNull Parcel parcel, int r22, @NonNull Parcelable.Creator<T> creator) {
        int r23 = s(parcel, r22);
        int r02 = parcel.dataPosition();
        if (r23 == 0) {
            return null;
        }
        ArrayList<T> arrayListCreateTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(r02 + r23);
        return arrayListCreateTypedArrayList;
    }

    public static void j(@NonNull Parcel parcel, int r32) {
        if (parcel.dataPosition() != r32) {
            throw new a(android.support.v4.media.a.d("Overread allowed size end=", r32), parcel);
        }
    }

    public static boolean k(@NonNull Parcel parcel, int r22) {
        w(parcel, r22, 4);
        return parcel.readInt() != 0;
    }

    public static byte l(@NonNull Parcel parcel, int r22) {
        w(parcel, r22, 4);
        return (byte) parcel.readInt();
    }

    public static double m(@NonNull Parcel parcel, int r22) {
        w(parcel, r22, 8);
        return parcel.readDouble();
    }

    public static float n(@NonNull Parcel parcel, int r22) {
        w(parcel, r22, 4);
        return parcel.readFloat();
    }

    @NonNull
    public static Float o(@NonNull Parcel parcel, int r22) {
        int r23 = s(parcel, r22);
        if (r23 == 0) {
            return null;
        }
        v(parcel, r23, 4);
        return Float.valueOf(parcel.readFloat());
    }

    @NonNull
    public static IBinder p(@NonNull Parcel parcel, int r32) {
        int r33 = s(parcel, r32);
        int r02 = parcel.dataPosition();
        if (r33 == 0) {
            return null;
        }
        IBinder strongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(r02 + r33);
        return strongBinder;
    }

    public static int q(@NonNull Parcel parcel, int r22) {
        w(parcel, r22, 4);
        return parcel.readInt();
    }

    public static long r(@NonNull Parcel parcel, int r22) {
        w(parcel, r22, 8);
        return parcel.readLong();
    }

    public static int s(@NonNull Parcel parcel, int r32) {
        return (r32 & SupportMenu.CATEGORY_MASK) != -65536 ? (char) (r32 >> 16) : parcel.readInt();
    }

    public static void t(@NonNull Parcel parcel, int r22) {
        parcel.setDataPosition(parcel.dataPosition() + s(parcel, r22));
    }

    public static int u(@NonNull Parcel parcel) {
        int r02 = parcel.readInt();
        int r12 = s(parcel, r02);
        int r22 = parcel.dataPosition();
        if (((char) r02) != 20293) {
            throw new a("Expected object header. Got 0x".concat(String.valueOf(Integer.toHexString(r02))), parcel);
        }
        int r13 = r12 + r22;
        if (r13 < r22 || r13 > parcel.dataSize()) {
            throw new a(androidx.constraintlayout.core.a.c("Size read is invalid start=", r22, " end=", r13), parcel);
        }
        return r13;
    }

    public static void v(Parcel parcel, int r6, int r72) {
        if (r6 == r72) {
            return;
        }
        throw new a(androidx.camera.camera2.internal.c.h(androidx.constraintlayout.core.a.f("Expected size ", r72, " got ", r6, " (0x"), Integer.toHexString(r6), ")"), parcel);
    }

    public static void w(Parcel parcel, int r6, int r72) {
        int r62 = s(parcel, r6);
        if (r62 == r72) {
            return;
        }
        throw new a(androidx.camera.camera2.internal.c.h(androidx.constraintlayout.core.a.f("Expected size ", r72, " got ", r62, " (0x"), Integer.toHexString(r62), ")"), parcel);
    }
}
