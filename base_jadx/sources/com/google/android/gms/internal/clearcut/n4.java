package com.google.android.gms.internal.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class n4 extends s3.a {
    public static final Parcelable.Creator<n4> CREATOR = new o4();

    /* renamed from: a, reason: collision with root package name */
    public final String f3242a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3243b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3244c;

    /* renamed from: d, reason: collision with root package name */
    public final String f3245d;

    /* renamed from: e, reason: collision with root package name */
    public final String f3246e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final String f3247g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f3248h;

    /* renamed from: j, reason: collision with root package name */
    public final int f3249j;

    public n4(String str, int r22, int r32, String str2, String str3, z3 z3Var) {
        r3.r.i(str);
        this.f3242a = str;
        this.f3243b = r22;
        this.f3244c = r32;
        this.f3247g = str2;
        this.f3245d = str3;
        this.f3246e = null;
        this.f = true;
        this.f3248h = false;
        this.f3249j = z3Var.f3356a;
    }

    public n4(String str, int r22, int r32, String str2, String str3, boolean z10, String str4, boolean z11, int r92) {
        this.f3242a = str;
        this.f3243b = r22;
        this.f3244c = r32;
        this.f3245d = str2;
        this.f3246e = str3;
        this.f = z10;
        this.f3247g = str4;
        this.f3248h = z11;
        this.f3249j = r92;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof n4) {
            n4 n4Var = (n4) obj;
            if (r3.p.a(this.f3242a, n4Var.f3242a) && this.f3243b == n4Var.f3243b && this.f3244c == n4Var.f3244c && r3.p.a(this.f3247g, n4Var.f3247g) && r3.p.a(this.f3245d, n4Var.f3245d) && r3.p.a(this.f3246e, n4Var.f3246e) && this.f == n4Var.f && this.f3248h == n4Var.f3248h && this.f3249j == n4Var.f3249j) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3242a, Integer.valueOf(this.f3243b), Integer.valueOf(this.f3244c), this.f3247g, this.f3245d, this.f3246e, Boolean.valueOf(this.f), Boolean.valueOf(this.f3248h), Integer.valueOf(this.f3249j)});
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("PlayLoggerContext[package=");
        sb2.append(this.f3242a);
        sb2.append(",packageVersionCode=");
        sb2.append(this.f3243b);
        sb2.append(",logSource=");
        sb2.append(this.f3244c);
        sb2.append(",logSourceName=");
        sb2.append(this.f3247g);
        sb2.append(",uploadAccount=");
        sb2.append(this.f3245d);
        sb2.append(",loggingId=");
        sb2.append(this.f3246e);
        sb2.append(",logAndroidId=");
        sb2.append(this.f);
        sb2.append(",isAnonymous=");
        sb2.append(this.f3248h);
        sb2.append(",qosTier=");
        return androidx.browser.browseractions.a.b(sb2, this.f3249j, "]");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 2, this.f3242a);
        s3.c.j(parcel, 3, this.f3243b);
        s3.c.j(parcel, 4, this.f3244c);
        s3.c.n(parcel, 5, this.f3245d);
        s3.c.n(parcel, 6, this.f3246e);
        s3.c.a(parcel, 7, this.f);
        s3.c.n(parcel, 8, this.f3247g);
        s3.c.a(parcel, 9, this.f3248h);
        s3.c.j(parcel, 10, this.f3249j);
        s3.c.s(parcel, r43);
    }
}
