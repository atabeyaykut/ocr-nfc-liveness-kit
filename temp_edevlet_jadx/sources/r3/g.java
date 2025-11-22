package r3;

import android.accounts.Account;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Scope;
import r3.k;

/* loaded from: classes.dex */
public final class g extends s3.a {

    @NonNull
    public static final Parcelable.Creator<g> CREATOR = new e1();

    /* renamed from: q, reason: collision with root package name */
    public static final Scope[] f13967q = new Scope[0];

    /* renamed from: r, reason: collision with root package name */
    public static final m3.d[] f13968r = new m3.d[0];

    /* renamed from: a, reason: collision with root package name */
    public final int f13969a;

    /* renamed from: b, reason: collision with root package name */
    public final int f13970b;

    /* renamed from: c, reason: collision with root package name */
    public final int f13971c;

    /* renamed from: d, reason: collision with root package name */
    public String f13972d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public IBinder f13973e;
    public Scope[] f;

    /* renamed from: g, reason: collision with root package name */
    public Bundle f13974g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    public Account f13975h;

    /* renamed from: j, reason: collision with root package name */
    public m3.d[] f13976j;

    /* renamed from: k, reason: collision with root package name */
    public m3.d[] f13977k;

    /* renamed from: l, reason: collision with root package name */
    public final boolean f13978l;

    /* renamed from: m, reason: collision with root package name */
    public final int f13979m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f13980n;

    /* renamed from: p, reason: collision with root package name */
    @Nullable
    public final String f13981p;

    public g(int r22, int r32, int r42, String str, @Nullable IBinder iBinder, Scope[] scopeArr, Bundle bundle, @Nullable Account account, m3.d[] dVarArr, m3.d[] dVarArr2, boolean z10, int r13, boolean z11, @Nullable String str2) {
        scopeArr = scopeArr == null ? f13967q : scopeArr;
        bundle = bundle == null ? new Bundle() : bundle;
        m3.d[] dVarArr3 = f13968r;
        dVarArr = dVarArr == null ? dVarArr3 : dVarArr;
        dVarArr2 = dVarArr2 == null ? dVarArr3 : dVarArr2;
        this.f13969a = r22;
        this.f13970b = r32;
        this.f13971c = r42;
        if ("com.google.android.gms".equals(str)) {
            this.f13972d = "com.google.android.gms";
        } else {
            this.f13972d = str;
        }
        if (r22 < 2) {
            Account accountB = null;
            if (iBinder != null) {
                int r33 = k.a.f14010a;
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                k n1Var = iInterfaceQueryLocalInterface instanceof k ? (k) iInterfaceQueryLocalInterface : new n1(iBinder);
                int r43 = a.f13906b;
                if (n1Var != null) {
                    long jClearCallingIdentity = Binder.clearCallingIdentity();
                    try {
                        try {
                            accountB = n1Var.b();
                        } catch (RemoteException unused) {
                            Log.w("AccountAccessor", "Remote account accessor probably died");
                        }
                    } finally {
                        Binder.restoreCallingIdentity(jClearCallingIdentity);
                    }
                }
            }
            this.f13975h = accountB;
        } else {
            this.f13973e = iBinder;
            this.f13975h = account;
        }
        this.f = scopeArr;
        this.f13974g = bundle;
        this.f13976j = dVarArr;
        this.f13977k = dVarArr2;
        this.f13978l = z10;
        this.f13979m = r13;
        this.f13980n = z11;
        this.f13981p = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int r22) {
        e1.a(this, parcel, r22);
    }
}
