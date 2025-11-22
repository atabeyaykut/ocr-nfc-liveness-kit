package e4;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.text.TextUtils;
import n3.d;
import r3.e;
import r3.h;
import r3.z;

/* loaded from: classes.dex */
public final class a extends h<b> {
    public final Bundle B;

    public a(Context context, Looper looper, e eVar, g3.c cVar, d.a aVar, d.b bVar) {
        super(context, looper, 16, eVar, aVar, bVar);
        if (cVar != null) {
            throw new NoSuchMethodError();
        }
        this.B = new Bundle();
    }

    @Override // r3.c
    public final int l() {
        return 12451000;
    }

    @Override // r3.c, n3.a.e
    public final boolean o() {
        e eVar = this.f13984y;
        Account account = eVar.f13944a;
        if (TextUtils.isEmpty(account != null ? account.name : null)) {
            return false;
        }
        if (((z) eVar.f13947d.get(g3.b.f5803a)) == null) {
            return !eVar.f13945b.isEmpty();
        }
        throw null;
    }

    @Override // r3.c
    public final /* synthetic */ IInterface q(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.internal.IAuthService");
        return iInterfaceQueryLocalInterface instanceof b ? (b) iInterfaceQueryLocalInterface : new c(iBinder);
    }

    @Override // r3.c
    public final Bundle u() {
        return this.B;
    }

    @Override // r3.c
    public final String x() {
        return "com.google.android.gms.auth.api.internal.IAuthService";
    }

    @Override // r3.c
    public final String y() {
        return "com.google.android.gms.auth.service.START";
    }
}
