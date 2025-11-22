package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.ReflectedParcelable;
import i3.f;
import r3.r;
import s3.a;
import s3.c;

/* loaded from: classes.dex */
public class SignInAccount extends a implements ReflectedParcelable {

    @RecentlyNonNull
    public static final Parcelable.Creator<SignInAccount> CREATOR = new f();

    /* renamed from: a, reason: collision with root package name */
    @Deprecated
    public final String f2960a;

    /* renamed from: b, reason: collision with root package name */
    public final GoogleSignInAccount f2961b;

    /* renamed from: c, reason: collision with root package name */
    @Deprecated
    public final String f2962c;

    public SignInAccount(String str, GoogleSignInAccount googleSignInAccount, String str2) {
        this.f2961b = googleSignInAccount;
        r.g("8.3 and 8.4 SDKs require non-null email", str);
        this.f2960a = str;
        r.g("8.3 and 8.4 SDKs require non-null userId", str2);
        this.f2962c = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int r52) {
        int r02 = c.r(parcel, 20293);
        c.n(parcel, 4, this.f2960a);
        c.m(parcel, 7, this.f2961b, r52);
        c.n(parcel, 8, this.f2962c);
        c.s(parcel, r02);
    }
}
