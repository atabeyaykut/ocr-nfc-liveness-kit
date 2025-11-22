package m4;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

@Deprecated
/* loaded from: classes.dex */
public final class v extends s3.a {
    public static final Parcelable.Creator<v> CREATOR = new w();

    /* renamed from: a, reason: collision with root package name */
    public final int f10024a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final t f10025b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final w4.n f10026c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final w4.k f10027d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public final PendingIntent f10028e;

    @Nullable
    public final k0 f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public final String f10029g;

    public v(int r22, @Nullable t tVar, @Nullable IBinder iBinder, @Nullable IBinder iBinder2, @Nullable PendingIntent pendingIntent, @Nullable IBinder iBinder3, @Nullable String str) {
        w4.n lVar;
        w4.k iVar;
        this.f10024a = r22;
        this.f10025b = tVar;
        k0 i0Var = null;
        if (iBinder != null) {
            int r32 = w4.m.f18704a;
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.ILocationListener");
            lVar = iInterfaceQueryLocalInterface instanceof w4.n ? (w4.n) iInterfaceQueryLocalInterface : new w4.l(iBinder);
        } else {
            lVar = null;
        }
        this.f10026c = lVar;
        this.f10028e = pendingIntent;
        if (iBinder2 != null) {
            int r33 = w4.j.f18703a;
            IInterface iInterfaceQueryLocalInterface2 = iBinder2.queryLocalInterface("com.google.android.gms.location.ILocationCallback");
            iVar = iInterfaceQueryLocalInterface2 instanceof w4.k ? (w4.k) iInterfaceQueryLocalInterface2 : new w4.i(iBinder2);
        } else {
            iVar = null;
        }
        this.f10027d = iVar;
        if (iBinder3 != null) {
            IInterface iInterfaceQueryLocalInterface3 = iBinder3.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            i0Var = iInterfaceQueryLocalInterface3 instanceof k0 ? (k0) iInterfaceQueryLocalInterface3 : new i0(iBinder3);
        }
        this.f = i0Var;
        this.f10029g = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r6) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f10024a);
        s3.c.m(parcel, 2, this.f10025b, r6);
        w4.n nVar = this.f10026c;
        s3.c.i(parcel, 3, nVar == null ? null : nVar.asBinder());
        s3.c.m(parcel, 4, this.f10028e, r6);
        w4.k kVar = this.f10027d;
        s3.c.i(parcel, 5, kVar == null ? null : kVar.asBinder());
        k0 k0Var = this.f;
        s3.c.i(parcel, 6, k0Var != null ? k0Var.asBinder() : null);
        s3.c.n(parcel, 8, this.f10029g);
        s3.c.s(parcel, r02);
    }
}
