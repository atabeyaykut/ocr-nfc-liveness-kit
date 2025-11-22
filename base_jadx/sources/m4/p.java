package m4;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class p extends s3.a {
    public static final Parcelable.Creator<p> CREATOR = new f0();

    /* renamed from: a, reason: collision with root package name */
    public final int f10011a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10012b;

    /* renamed from: c, reason: collision with root package name */
    public final String f10013c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final String f10014d;

    /* renamed from: e, reason: collision with root package name */
    public final int f10015e;

    @Nullable
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public final p f10016g;

    /* renamed from: h, reason: collision with root package name */
    public final b0 f10017h;

    static {
        Process.myUid();
        Process.myPid();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public p(int r12, int r22, String str, @Nullable String str2, @Nullable String str3, int r6, List list, @Nullable p pVar) {
        c0 c0Var;
        b0 b0VarO;
        this.f10011a = r12;
        this.f10012b = r22;
        this.f10013c = str;
        this.f10014d = str2;
        this.f = str3;
        this.f10015e = r6;
        z zVar = b0.f9989b;
        if (list instanceof y) {
            b0VarO = ((y) list).o();
            if (b0VarO.w()) {
                Object[] array = b0VarO.toArray();
                int length = array.length;
                if (length != 0) {
                    c0Var = new c0(array, length);
                    b0VarO = c0Var;
                }
                b0VarO = c0.f9990e;
            }
        } else {
            Object[] array2 = list.toArray();
            int length2 = array2.length;
            for (int r32 = 0; r32 < length2; r32++) {
                if (array2[r32] == null) {
                    throw new NullPointerException(android.support.v4.media.a.d("at index ", r32));
                }
            }
            if (length2 != 0) {
                c0Var = new c0(array2, length2);
                b0VarO = c0Var;
            }
            b0VarO = c0.f9990e;
        }
        this.f10017h = b0VarO;
        this.f10016g = pVar;
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return this.f10011a == pVar.f10011a && this.f10012b == pVar.f10012b && this.f10015e == pVar.f10015e && this.f10013c.equals(pVar.f10013c) && b8.f.C0(this.f10014d, pVar.f10014d) && b8.f.C0(this.f, pVar.f) && b8.f.C0(this.f10016g, pVar.f10016g) && this.f10017h.equals(pVar.f10017h);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f10011a), this.f10013c, this.f10014d, this.f});
    }

    public final String toString() {
        String str = this.f10013c;
        int length = str.length() + 18;
        String str2 = this.f10014d;
        if (str2 != null) {
            length += str2.length();
        }
        StringBuilder sb2 = new StringBuilder(length);
        sb2.append(this.f10011a);
        sb2.append("/");
        sb2.append(str);
        if (str2 != null) {
            sb2.append("[");
            if (str2.startsWith(str)) {
                sb2.append((CharSequence) str2, str.length(), str2.length());
            } else {
                sb2.append(str2);
            }
            sb2.append("]");
        }
        String str3 = this.f;
        if (str3 != null) {
            sb2.append("/");
            sb2.append(Integer.toHexString(str3.hashCode()));
        }
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f10011a);
        s3.c.j(parcel, 2, this.f10012b);
        s3.c.n(parcel, 3, this.f10013c);
        s3.c.n(parcel, 4, this.f10014d);
        s3.c.j(parcel, 5, this.f10015e);
        s3.c.n(parcel, 6, this.f);
        s3.c.m(parcel, 7, this.f10016g, r52);
        s3.c.q(parcel, 8, this.f10017h);
        s3.c.s(parcel, r02);
    }
}
