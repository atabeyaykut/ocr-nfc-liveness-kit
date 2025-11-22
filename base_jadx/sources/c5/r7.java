package c5;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class r7 extends s3.a {
    public static final Parcelable.Creator<r7> CREATOR = new s7();

    /* renamed from: a, reason: collision with root package name */
    public final int f1950a;

    /* renamed from: b, reason: collision with root package name */
    public final String f1951b;

    /* renamed from: c, reason: collision with root package name */
    public final long f1952c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final Long f1953d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public final String f1954e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public final Double f1955g;

    public r7(int r12, String str, long j10, @Nullable Long l5, Float f, @Nullable String str2, String str3, @Nullable Double d10) {
        this.f1950a = r12;
        this.f1951b = str;
        this.f1952c = j10;
        this.f1953d = l5;
        if (r12 == 1) {
            this.f1955g = f != null ? Double.valueOf(f.doubleValue()) : null;
        } else {
            this.f1955g = d10;
        }
        this.f1954e = str2;
        this.f = str3;
    }

    public r7(long j10, @Nullable Object obj, String str, String str2) {
        r3.r.f(str);
        this.f1950a = 2;
        this.f1951b = str;
        this.f1952c = j10;
        this.f = str2;
        if (obj == null) {
            this.f1953d = null;
            this.f1955g = null;
            this.f1954e = null;
            return;
        }
        if (obj instanceof Long) {
            this.f1953d = (Long) obj;
            this.f1955g = null;
            this.f1954e = null;
        } else if (obj instanceof String) {
            this.f1953d = null;
            this.f1955g = null;
            this.f1954e = (String) obj;
        } else {
            if (!(obj instanceof Double)) {
                throw new IllegalArgumentException("User attribute given of un-supported type");
            }
            this.f1953d = null;
            this.f1955g = (Double) obj;
            this.f1954e = null;
        }
    }

    public r7(t7 t7Var) {
        this(t7Var.f2011d, t7Var.f2012e, t7Var.f2010c, t7Var.f2009b);
    }

    @Nullable
    public final Object E() {
        Long l5 = this.f1953d;
        if (l5 != null) {
            return l5;
        }
        Double d10 = this.f1955g;
        if (d10 != null) {
            return d10;
        }
        String str = this.f1954e;
        if (str != null) {
            return str;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r22) {
        s7.a(this, parcel);
    }
}
