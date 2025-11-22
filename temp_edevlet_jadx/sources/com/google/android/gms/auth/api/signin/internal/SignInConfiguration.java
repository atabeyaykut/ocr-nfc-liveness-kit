package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import j3.s;
import r3.r;
import s3.a;
import s3.c;

/* loaded from: classes.dex */
public final class SignInConfiguration extends a implements ReflectedParcelable {

    @RecentlyNonNull
    public static final Parcelable.Creator<SignInConfiguration> CREATOR = new s();

    /* renamed from: a, reason: collision with root package name */
    public final String f2963a;

    /* renamed from: b, reason: collision with root package name */
    public final GoogleSignInOptions f2964b;

    public SignInConfiguration(@RecentlyNonNull String str, @RecentlyNonNull GoogleSignInOptions googleSignInOptions) {
        r.f(str);
        this.f2963a = str;
        this.f2964b = googleSignInOptions;
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof SignInConfiguration)) {
            return false;
        }
        SignInConfiguration signInConfiguration = (SignInConfiguration) obj;
        if (this.f2963a.equals(signInConfiguration.f2963a)) {
            GoogleSignInOptions googleSignInOptions = signInConfiguration.f2964b;
            GoogleSignInOptions googleSignInOptions2 = this.f2964b;
            if (googleSignInOptions2 == null) {
                if (googleSignInOptions == null) {
                    return true;
                }
            } else if (googleSignInOptions2.equals(googleSignInOptions)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int r02 = 1 * 31;
        String str = this.f2963a;
        int r03 = (r02 + (str == null ? 0 : str.hashCode())) * 31;
        GoogleSignInOptions googleSignInOptions = this.f2964b;
        return r03 + (googleSignInOptions != null ? googleSignInOptions.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int r52) {
        int r02 = c.r(parcel, 20293);
        c.n(parcel, 2, this.f2963a);
        c.m(parcel, 5, this.f2964b, r52);
        c.s(parcel, r02);
    }
}
