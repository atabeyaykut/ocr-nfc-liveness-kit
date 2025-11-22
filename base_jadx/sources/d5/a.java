package d5;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import b8.f;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class a extends s3.a {
    public static final Parcelable.Creator<a> CREATOR = new c();

    /* renamed from: a, reason: collision with root package name */
    public final String f4658a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f4659b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[][] f4660c;

    /* renamed from: d, reason: collision with root package name */
    public final byte[][] f4661d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[][] f4662e;
    public final byte[][] f;

    /* renamed from: g, reason: collision with root package name */
    public final int[] f4663g;

    /* renamed from: h, reason: collision with root package name */
    public final byte[][] f4664h;

    static {
        byte[][] bArr = new byte[0][];
        new a("", null, bArr, bArr, bArr, bArr, null, null);
    }

    public a(String str, byte[] bArr, byte[][] bArr2, byte[][] bArr3, byte[][] bArr4, byte[][] bArr5, int[] r72, byte[][] bArr6) {
        this.f4658a = str;
        this.f4659b = bArr;
        this.f4660c = bArr2;
        this.f4661d = bArr3;
        this.f4662e = bArr4;
        this.f = bArr5;
        this.f4663g = r72;
        this.f4664h = bArr6;
    }

    public static List<Integer> E(int[] r42) {
        if (r42 == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(r42.length);
        for (int r02 : r42) {
            arrayList.add(Integer.valueOf(r02));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public static List<String> Z(byte[][] bArr) {
        if (bArr == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(bArr.length);
        for (byte[] bArr2 : bArr) {
            arrayList.add(Base64.encodeToString(bArr2, 3));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public static void n0(StringBuilder sb2, String str, byte[][] bArr) {
        String str2;
        sb2.append(str);
        sb2.append("=");
        if (bArr == null) {
            str2 = "null";
        } else {
            sb2.append("(");
            int length = bArr.length;
            boolean z10 = true;
            int r22 = 0;
            while (r22 < length) {
                byte[] bArr2 = bArr[r22];
                if (!z10) {
                    sb2.append(", ");
                }
                sb2.append("'");
                sb2.append(Base64.encodeToString(bArr2, 3));
                sb2.append("'");
                r22++;
                z10 = false;
            }
            str2 = ")";
        }
        sb2.append(str2);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (f.C(this.f4658a, aVar.f4658a) && Arrays.equals(this.f4659b, aVar.f4659b) && f.C(Z(this.f4660c), Z(aVar.f4660c)) && f.C(Z(this.f4661d), Z(aVar.f4661d)) && f.C(Z(this.f4662e), Z(aVar.f4662e)) && f.C(Z(this.f), Z(aVar.f)) && f.C(E(this.f4663g), E(aVar.f4663g)) && f.C(Z(this.f4664h), Z(aVar.f4664h))) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        String string;
        StringBuilder sb2 = new StringBuilder("ExperimentTokens");
        sb2.append("(");
        String str = this.f4658a;
        if (str == null) {
            string = "null";
        } else {
            StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 2);
            sb3.append("'");
            sb3.append(str);
            sb3.append("'");
            string = sb3.toString();
        }
        sb2.append(string);
        sb2.append(", direct=");
        byte[] bArr = this.f4659b;
        if (bArr == null) {
            sb2.append("null");
        } else {
            sb2.append("'");
            sb2.append(Base64.encodeToString(bArr, 3));
            sb2.append("'");
        }
        sb2.append(", ");
        n0(sb2, "GAIA", this.f4660c);
        sb2.append(", ");
        n0(sb2, "PSEUDO", this.f4661d);
        sb2.append(", ");
        n0(sb2, "ALWAYS", this.f4662e);
        sb2.append(", ");
        n0(sb2, "OTHER", this.f);
        sb2.append(", ");
        sb2.append("weak");
        sb2.append("=");
        int[] r52 = this.f4663g;
        if (r52 == null) {
            sb2.append("null");
        } else {
            sb2.append("(");
            int length = r52.length;
            boolean z10 = true;
            int r72 = 0;
            while (r72 < length) {
                int r82 = r52[r72];
                if (!z10) {
                    sb2.append(", ");
                }
                sb2.append(r82);
                r72++;
                z10 = false;
            }
            sb2.append(")");
        }
        sb2.append(", ");
        n0(sb2, "directs", this.f4664h);
        sb2.append(")");
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 2, this.f4658a);
        s3.c.d(parcel, 3, this.f4659b);
        s3.c.e(parcel, 4, this.f4660c);
        s3.c.e(parcel, 5, this.f4661d);
        s3.c.e(parcel, 6, this.f4662e);
        s3.c.e(parcel, 7, this.f);
        s3.c.k(parcel, 8, this.f4663g);
        s3.c.e(parcel, 9, this.f4664h);
        s3.c.s(parcel, r43);
    }
}
