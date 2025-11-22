package i3;

import android.content.Context;
import androidx.annotation.NonNull;
import c5.v;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.dynamite.DynamiteModule;

/* loaded from: classes.dex */
public final class a extends n3.c<GoogleSignInOptions> {

    /* renamed from: k, reason: collision with root package name */
    public static int f7282k = 1;

    public a(@NonNull Context context, GoogleSignInOptions googleSignInOptions) {
        super(context, g3.a.f5797a, googleSignInOptions, new v());
    }

    public final synchronized int d() {
        if (f7282k == 1) {
            Context context = this.f10546a;
            m3.e eVar = m3.e.f9944d;
            int r22 = eVar.c(12451000, context);
            if (r22 == 0) {
                f7282k = 4;
            } else if (eVar.b(context, r22, null) != null || DynamiteModule.a(context, "com.google.android.gms.auth.api.fallback") == 0) {
                f7282k = 2;
            } else {
                f7282k = 3;
            }
        }
        return f7282k;
    }
}
