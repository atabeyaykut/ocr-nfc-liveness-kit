package k3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.clearcut.f4;
import com.google.android.gms.internal.clearcut.n4;
import java.util.Arrays;
import r3.p;

/* loaded from: classes.dex */
public final class f extends s3.a {
    public static final Parcelable.Creator<f> CREATOR = new g();

    /* renamed from: a, reason: collision with root package name */
    public final n4 f8716a;

    /* renamed from: b, reason: collision with root package name */
    public byte[] f8717b;

    /* renamed from: c, reason: collision with root package name */
    public final int[] f8718c;

    /* renamed from: d, reason: collision with root package name */
    public final String[] f8719d;

    /* renamed from: e, reason: collision with root package name */
    public final int[] f8720e;
    public final byte[][] f;

    /* renamed from: g, reason: collision with root package name */
    public final d5.a[] f8721g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f8722h;

    /* renamed from: j, reason: collision with root package name */
    public final f4 f8723j;

    public f(n4 n4Var, f4 f4Var) {
        this.f8716a = n4Var;
        this.f8723j = f4Var;
        this.f8718c = null;
        this.f8719d = null;
        this.f8720e = null;
        this.f = null;
        this.f8721g = null;
        this.f8722h = true;
    }

    public f(n4 n4Var, byte[] bArr, int[] r32, String[] strArr, int[] r52, byte[][] bArr2, boolean z10, d5.a[] aVarArr) {
        this.f8716a = n4Var;
        this.f8717b = bArr;
        this.f8718c = r32;
        this.f8719d = strArr;
        this.f8723j = null;
        this.f8720e = r52;
        this.f = bArr2;
        this.f8721g = aVarArr;
        this.f8722h = z10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (p.a(this.f8716a, fVar.f8716a) && Arrays.equals(this.f8717b, fVar.f8717b) && Arrays.equals(this.f8718c, fVar.f8718c) && Arrays.equals(this.f8719d, fVar.f8719d) && p.a(this.f8723j, fVar.f8723j) && p.a(null, null) && p.a(null, null) && Arrays.equals(this.f8720e, fVar.f8720e) && Arrays.deepEquals(this.f, fVar.f) && Arrays.equals(this.f8721g, fVar.f8721g) && this.f8722h == fVar.f8722h) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f8716a, this.f8717b, this.f8718c, this.f8719d, this.f8723j, null, null, this.f8720e, this.f, this.f8721g, Boolean.valueOf(this.f8722h)});
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("LogEventParcelable[");
        sb2.append(this.f8716a);
        sb2.append(", LogEventBytes: ");
        byte[] bArr = this.f8717b;
        sb2.append(bArr == null ? null : new String(bArr));
        sb2.append(", TestCodes: ");
        sb2.append(Arrays.toString(this.f8718c));
        sb2.append(", MendelPackages: ");
        sb2.append(Arrays.toString(this.f8719d));
        sb2.append(", LogEvent: ");
        sb2.append(this.f8723j);
        sb2.append(", ExtensionProducer: null, VeProducer: null, ExperimentIDs: ");
        sb2.append(Arrays.toString(this.f8720e));
        sb2.append(", ExperimentTokens: ");
        sb2.append(Arrays.toString(this.f));
        sb2.append(", ExperimentTokensParcelables: ");
        sb2.append(Arrays.toString(this.f8721g));
        sb2.append(", AddPhenotypeExperimentTokens: ");
        sb2.append(this.f8722h);
        sb2.append("]");
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.m(parcel, 2, this.f8716a, r52);
        s3.c.d(parcel, 3, this.f8717b);
        s3.c.k(parcel, 4, this.f8718c);
        s3.c.o(parcel, 5, this.f8719d);
        s3.c.k(parcel, 6, this.f8720e);
        s3.c.e(parcel, 7, this.f);
        s3.c.a(parcel, 8, this.f8722h);
        s3.c.p(parcel, 9, this.f8721g, r52);
        s3.c.s(parcel, r02);
    }
}
