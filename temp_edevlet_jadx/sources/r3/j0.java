package r3;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;

/* loaded from: classes.dex */
public final class j0 extends s3.a {
    public static final Parcelable.Creator<j0> CREATOR = new k0();

    /* renamed from: a, reason: collision with root package name */
    public final int f14001a;

    /* renamed from: b, reason: collision with root package name */
    public final Account f14002b;

    /* renamed from: c, reason: collision with root package name */
    public final int f14003c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final GoogleSignInAccount f14004d;

    public j0(int r12, Account account, int r32, @Nullable GoogleSignInAccount googleSignInAccount) {
        this.f14001a = r12;
        this.f14002b = account;
        this.f14003c = r32;
        this.f14004d = googleSignInAccount;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f14001a);
        s3.c.m(parcel, 2, this.f14002b, r52);
        s3.c.j(parcel, 3, this.f14003c);
        s3.c.m(parcel, 4, this.f14004d, r52);
        s3.c.s(parcel, r02);
    }
}
