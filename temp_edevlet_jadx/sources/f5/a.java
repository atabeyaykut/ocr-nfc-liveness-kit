package f5;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import n3.d;
import o3.n0;
import o3.p0;
import r3.c;
import r3.j0;
import r3.r;

/* loaded from: classes.dex */
public final class a extends r3.h<g> implements e5.f {
    public final boolean B;
    public final r3.e C;
    public final Bundle D;

    @Nullable
    public final Integer E;

    public a(@NonNull Context context, @NonNull Looper looper, @NonNull r3.e eVar, @NonNull Bundle bundle, @NonNull d.a aVar, @NonNull d.b bVar) {
        super(context, looper, 44, eVar, aVar, bVar);
        this.B = true;
        this.C = eVar;
        this.D = bundle;
        this.E = eVar.f13950h;
    }

    @Override // e5.f
    public final void a() {
        c(new c.d());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // e5.f
    public final void i(f fVar) {
        if (fVar == 0) {
            throw new NullPointerException("Expecting a valid ISignInCallbacks");
        }
        int r12 = 0;
        try {
            Account account = this.C.f13944a;
            if (account == null) {
                account = new Account("<<default account>>", "com.google");
            }
            GoogleSignInAccount googleSignInAccountB = "<<default account>>".equals(account.name) ? j3.b.a(this.f13920c).b() : null;
            Integer num = this.E;
            r.i(num);
            j0 j0Var = new j0(2, account, num.intValue(), googleSignInAccountB);
            g gVar = (g) w();
            j jVar = new j(1, j0Var);
            Parcel parcelObtain = Parcel.obtain();
            parcelObtain.writeInterfaceToken(gVar.f6833b);
            int r6 = h4.c.f6834a;
            parcelObtain.writeInt(1);
            jVar.writeToParcel(parcelObtain, 0);
            parcelObtain.writeStrongBinder((h4.b) fVar);
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                gVar.f6832a.transact(12, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
            } finally {
                parcelObtain.recycle();
                parcelObtain2.recycle();
            }
        } catch (RemoteException e10) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                p0 p0Var = (p0) fVar;
                p0Var.f11178b.post(new n0(r12, p0Var, new l(1, new m3.b(8, null), null)));
            } catch (RemoteException unused) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e10);
            }
        }
    }

    @Override // r3.c
    public final int l() {
        return 12451000;
    }

    @Override // r3.c, n3.a.e
    public final boolean o() {
        return this.B;
    }

    @Override // r3.c
    @NonNull
    public final /* synthetic */ IInterface q(@NonNull IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        return iInterfaceQueryLocalInterface instanceof g ? (g) iInterfaceQueryLocalInterface : new g(iBinder);
    }

    @Override // r3.c
    @NonNull
    public final Bundle u() {
        r3.e eVar = this.C;
        boolean zEquals = this.f13920c.getPackageName().equals(eVar.f13948e);
        Bundle bundle = this.D;
        if (!zEquals) {
            bundle.putString("com.google.android.gms.signin.internal.realClientPackageName", eVar.f13948e);
        }
        return bundle;
    }

    @Override // r3.c
    @NonNull
    public final String x() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // r3.c
    @NonNull
    public final String y() {
        return "com.google.android.gms.signin.service.START";
    }
}
