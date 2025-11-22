package r3;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import r3.k;

/* loaded from: classes.dex */
public final class l0 extends s3.a {
    public static final Parcelable.Creator<l0> CREATOR = new m0();

    /* renamed from: a, reason: collision with root package name */
    public final int f14012a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final IBinder f14013b;

    /* renamed from: c, reason: collision with root package name */
    public final m3.b f14014c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f14015d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f14016e;

    public l0(int r12, @Nullable IBinder iBinder, m3.b bVar, boolean z10, boolean z11) {
        this.f14012a = r12;
        this.f14013b = iBinder;
        this.f14014c = bVar;
        this.f14015d = z10;
        this.f14016e = z11;
    }

    public final boolean equals(@Nullable Object obj) {
        Object n1Var;
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l0)) {
            return false;
        }
        l0 l0Var = (l0) obj;
        if (this.f14014c.equals(l0Var.f14014c)) {
            Object n1Var2 = null;
            IBinder iBinder = this.f14013b;
            if (iBinder == null) {
                n1Var = null;
            } else {
                int r52 = k.a.f14010a;
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                n1Var = iInterfaceQueryLocalInterface instanceof k ? (k) iInterfaceQueryLocalInterface : new n1(iBinder);
            }
            IBinder iBinder2 = l0Var.f14013b;
            if (iBinder2 != null) {
                int r22 = k.a.f14010a;
                IInterface iInterfaceQueryLocalInterface2 = iBinder2.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                n1Var2 = iInterfaceQueryLocalInterface2 instanceof k ? (k) iInterfaceQueryLocalInterface2 : new n1(iBinder2);
            }
            if (p.a(n1Var, n1Var2)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f14012a);
        s3.c.i(parcel, 2, this.f14013b);
        s3.c.m(parcel, 3, this.f14014c, r52);
        s3.c.a(parcel, 4, this.f14015d);
        s3.c.a(parcel, 5, this.f14016e);
        s3.c.s(parcel, r02);
    }
}
