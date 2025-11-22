package m3;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import r3.p1;
import r3.q1;
import r3.r1;

/* loaded from: classes.dex */
public final class d0 extends s3.a {
    public static final Parcelable.Creator<d0> CREATOR = new e0();

    /* renamed from: a, reason: collision with root package name */
    public final String f9939a;

    /* renamed from: b, reason: collision with root package name */
    public final u f9940b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f9941c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f9942d;

    public d0(String str, IBinder iBinder, boolean z10, boolean z11) {
        this.f9939a = str;
        v vVar = null;
        if (iBinder != null) {
            try {
                int r22 = q1.f14036a;
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICertData");
                z3.b bVarD = (iInterfaceQueryLocalInterface instanceof r1 ? (r1) iInterfaceQueryLocalInterface : new p1(iBinder)).d();
                byte[] bArr = bVarD == null ? null : (byte[]) z3.d.y0(bVarD);
                if (bArr != null) {
                    vVar = new v(bArr);
                } else {
                    Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
                }
            } catch (RemoteException e10) {
                Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", e10);
            }
        }
        this.f9940b = vVar;
        this.f9941c = z10;
        this.f9942d = z11;
    }

    public d0(String str, u uVar, boolean z10, boolean z11) {
        this.f9939a = str;
        this.f9940b = uVar;
        this.f9941c = z10;
        this.f9942d = z11;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 1, this.f9939a);
        u uVar = this.f9940b;
        if (uVar == null) {
            Log.w("GoogleCertificatesQuery", "certificate binder is null");
            uVar = null;
        }
        s3.c.i(parcel, 2, uVar);
        s3.c.a(parcel, 3, this.f9941c);
        s3.c.a(parcel, 4, this.f9942d);
        s3.c.s(parcel, r43);
    }
}
