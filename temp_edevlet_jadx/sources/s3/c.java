package s3;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.core.internal.view.SupportMenu;
import java.util.List;

/* loaded from: classes.dex */
public final class c {
    public static void a(@NonNull Parcel parcel, int r22, boolean z10) {
        parcel.writeInt(r22 | 262144);
        parcel.writeInt(z10 ? 1 : 0);
    }

    public static void b(@NonNull Parcel parcel, int r12, @NonNull Bundle bundle) {
        if (bundle == null) {
            return;
        }
        int r13 = r(parcel, r12);
        parcel.writeBundle(bundle);
        s(parcel, r13);
    }

    public static void c(@NonNull Parcel parcel, int r22, byte b10) {
        parcel.writeInt(r22 | 262144);
        parcel.writeInt(b10);
    }

    public static void d(@NonNull Parcel parcel, int r12, @NonNull byte[] bArr) {
        if (bArr == null) {
            return;
        }
        int r13 = r(parcel, r12);
        parcel.writeByteArray(bArr);
        s(parcel, r13);
    }

    public static void e(@NonNull Parcel parcel, int r42, @NonNull byte[][] bArr) {
        if (bArr == null) {
            return;
        }
        int r43 = r(parcel, r42);
        parcel.writeInt(bArr.length);
        for (byte[] bArr2 : bArr) {
            parcel.writeByteArray(bArr2);
        }
        s(parcel, r43);
    }

    public static void f(@NonNull Parcel parcel, int r22, double d10) {
        parcel.writeInt(r22 | 524288);
        parcel.writeDouble(d10);
    }

    public static void g(@NonNull Parcel parcel, int r22, float f) {
        parcel.writeInt(r22 | 262144);
        parcel.writeFloat(f);
    }

    public static void h(@NonNull Parcel parcel, int r22, @NonNull Float f) {
        if (f == null) {
            return;
        }
        parcel.writeInt(r22 | 262144);
        parcel.writeFloat(f.floatValue());
    }

    public static void i(@NonNull Parcel parcel, int r12, @NonNull IBinder iBinder) {
        if (iBinder == null) {
            return;
        }
        int r13 = r(parcel, r12);
        parcel.writeStrongBinder(iBinder);
        s(parcel, r13);
    }

    public static void j(@NonNull Parcel parcel, int r22, int r32) {
        parcel.writeInt(r22 | 262144);
        parcel.writeInt(r32);
    }

    public static void k(@NonNull Parcel parcel, int r12, @NonNull int[] r22) {
        if (r22 == null) {
            return;
        }
        int r13 = r(parcel, r12);
        parcel.writeIntArray(r22);
        s(parcel, r13);
    }

    public static void l(@NonNull Parcel parcel, int r22, long j10) {
        parcel.writeInt(r22 | 524288);
        parcel.writeLong(j10);
    }

    public static void m(@NonNull Parcel parcel, int r12, @NonNull Parcelable parcelable, int r32) {
        if (parcelable == null) {
            return;
        }
        int r13 = r(parcel, r12);
        parcelable.writeToParcel(parcel, r32);
        s(parcel, r13);
    }

    public static void n(@NonNull Parcel parcel, int r12, @NonNull String str) {
        if (str == null) {
            return;
        }
        int r13 = r(parcel, r12);
        parcel.writeString(str);
        s(parcel, r13);
    }

    public static void o(@NonNull Parcel parcel, int r12, @NonNull String[] strArr) {
        if (strArr == null) {
            return;
        }
        int r13 = r(parcel, r12);
        parcel.writeStringArray(strArr);
        s(parcel, r13);
    }

    public static void p(@NonNull Parcel parcel, int r52, @NonNull Parcelable[] parcelableArr, int r72) {
        if (parcelableArr == null) {
            return;
        }
        int r53 = r(parcel, r52);
        parcel.writeInt(parcelableArr.length);
        for (Parcelable parcelable : parcelableArr) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                t(parcel, parcelable, r72);
            }
        }
        s(parcel, r53);
    }

    public static void q(@NonNull Parcel parcel, int r52, @NonNull List list) {
        if (list == null) {
            return;
        }
        int r53 = r(parcel, r52);
        int size = list.size();
        parcel.writeInt(size);
        for (int r22 = 0; r22 < size; r22++) {
            Parcelable parcelable = (Parcelable) list.get(r22);
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                t(parcel, parcelable, 0);
            }
        }
        s(parcel, r53);
    }

    public static int r(Parcel parcel, int r22) {
        parcel.writeInt(r22 | SupportMenu.CATEGORY_MASK);
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    public static void s(Parcel parcel, int r32) {
        int r02 = parcel.dataPosition();
        parcel.setDataPosition(r32 - 4);
        parcel.writeInt(r02 - r32);
        parcel.setDataPosition(r02);
    }

    public static void t(Parcel parcel, Parcelable parcelable, int r42) {
        int r02 = parcel.dataPosition();
        parcel.writeInt(1);
        int r12 = parcel.dataPosition();
        parcelable.writeToParcel(parcel, r42);
        int r32 = parcel.dataPosition();
        parcel.setDataPosition(r02);
        parcel.writeInt(r32 - r12);
        parcel.setDataPosition(r32);
    }
}
