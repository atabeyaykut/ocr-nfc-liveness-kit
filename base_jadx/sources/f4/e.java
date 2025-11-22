package f4;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.util.Base64;
import g3.a;
import n3.d;
import r3.h;

/* loaded from: classes.dex */
public final class e extends h<f> {
    public final a.C0094a B;

    public e(Context context, Looper looper, r3.e eVar, a.C0094a c0094a, d.a aVar, d.b bVar) {
        super(context, looper, 68, eVar, aVar, bVar);
        a.C0094a.C0095a c0095a = new a.C0094a.C0095a(c0094a == null ? a.C0094a.f5798c : c0094a);
        byte[] bArr = new byte[16];
        b.f5520a.nextBytes(bArr);
        c0095a.f5802b = Base64.encodeToString(bArr, 11);
        this.B = new a.C0094a(c0095a);
    }

    @Override // r3.c
    public final int l() {
        return 12800000;
    }

    @Override // r3.c
    public final /* bridge */ /* synthetic */ IInterface q(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
        return iInterfaceQueryLocalInterface instanceof f ? (f) iInterfaceQueryLocalInterface : new f(iBinder);
    }

    @Override // r3.c
    public final Bundle u() {
        a.C0094a c0094a = this.B;
        c0094a.getClass();
        Bundle bundle = new Bundle();
        bundle.putString("consumer_package", null);
        bundle.putBoolean("force_save_dialog", c0094a.f5799a);
        bundle.putString("log_session_id", c0094a.f5800b);
        return bundle;
    }

    @Override // r3.c
    public final String x() {
        return "com.google.android.gms.auth.api.credentials.internal.ICredentialsService";
    }

    @Override // r3.c
    public final String y() {
        return "com.google.android.gms.auth.api.credentials.service.START";
    }
}
