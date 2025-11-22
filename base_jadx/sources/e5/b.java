package e5;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import n3.a;
import n3.d;

/* loaded from: classes.dex */
public final class b extends a.AbstractC0196a {
    @Override // n3.a.AbstractC0196a
    public final a.e a(Context context, Looper looper, r3.e eVar, a.c cVar, d.a aVar, d.b bVar) {
        Integer num = eVar.f13950h;
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", eVar.f13944a);
        if (num != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", num.intValue());
        }
        bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", false);
        bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", false);
        bundle.putString("com.google.android.gms.signin.internal.serverClientId", null);
        bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
        bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", false);
        bundle.putString("com.google.android.gms.signin.internal.hostedDomain", null);
        bundle.putString("com.google.android.gms.signin.internal.logSessionId", null);
        bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", false);
        return new f5.a(context, looper, eVar, bundle, aVar, bVar);
    }
}
